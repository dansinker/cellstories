class AuthorsController < ApplicationController
before_filter :authorize

layout "no_share"

  def index
    list
    render :action => 'list'
  end
  

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @pagetitle = "authors administration"
    @author_pages, @authors = paginate :authors, :order => 'name', :per_page => 20
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @pagetitle = "create a new author"
    @author = Author.new
  end

  def create
    @author = Author.new(params[:author])
    if @author.save
      flash[:notice] = 'Author was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @pagetitle = "editing author"
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    if @author.update_attributes(params[:author])
      flash[:notice] = 'Author was successfully updated.'
      redirect_to :action => 'show', :id => @author
    else
      render :action => 'edit'
    end
  end

  def destroy
    Author.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
  def email
@authors = Author.find(:all, :order => 'name')
  end
  
end
