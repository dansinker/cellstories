class StoriesController < ApplicationController
  before_filter :authorize, :except => [:index, :share, :show, :feed]
  
  layout "no_share", :except => [:index, :show, :bb_show]
  
  caches_page :show
  
  def auto_complete_for_story_author_name
     @authors = Author.find(:all, :conditions => ["LOWER(name) LIKE ?", '%' + params[:story][:author_name].downcase + '%'], :order => 'name', :limit => 10)
     render :inline => "<%= auto_complete_result @authors, 'name' %>"
   end
  

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def index  
    @story = Story.find(:first, :conditions => ['rundate = ?', Date.today])
    
    if Date.today.wday == 5 
      @tomorrow = Story.find(:first, :conditions => ['rundate =?', Date.today+3])
    else
      @tomorrow = Story.find(:first, :conditions => ['rundate =?', Date.today+1])
    end
    
    if (1..5).include?(Date.today.wday)
      render :action => "index", :layout => "application"
    else
      redirect_to weekend_path
    end
    
  end
  
  def feed
  @stories = Story.find(:all, :conditions => ['rundate <= ?', Date.today], :order => 'rundate DESC')
  response.headers["Content-Type"] = "application/xml; charset=utf-8"
  render :layout => false
  end
  
  def share
    @story = Story.find(params[:id])
    @pagetitle = "share this story with your friends"
  end
  
  def twitter
  	 @story = Story.find(params[:id])
  end
  
  def scheduled
   @story = Story.find(params[:id])
   Emailer.deliver_scheduled(@story)
   render :nothing => true   
   end

  def list
    @pagetitle = "story scheduling and administration"
    @story_pages, @stories = paginate :stories, :order => 'rundate DESC', :per_page => 10
    render :layout => "backend"
  end

  def show
    @story = Story.find(params[:id])
    @authorstory = @story.author.stories.count
    render :layout => "application"
  end
  
  def bb_show
  @story = Story.find(params[:id])
  end

  def new
    @pagetitle = "new story"
    @story = Story.new
    render :layout => "backend"
  end

  def create
    @story = Story.new(params[:story])
    if @story.save
      flash[:notice] = 'Story was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @story = Story.find(params[:id])
    @pagetitle = "editing story"
    render :layout => "backend"
  end

  def update
    @story = Story.find(params[:id])
    if @story.update_attributes(params[:story])
      flash[:notice] = 'Story was successfully updated.'
      expire_page :action => "show", :id => @story
      redirect_to :action => 'list', :id => @story
    else
      render :action => 'edit'
    end
  end

  def destroy
    Story.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
end
