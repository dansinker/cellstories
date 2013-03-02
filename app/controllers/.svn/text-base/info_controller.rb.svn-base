class InfoController < ApplicationController
  layout "no_share", :except => [:welcome, :share_welcome]
  
  def welcome
    @story = Story.find(:first, :conditions => ['rundate = ?', Date.today])
    render :layout => "desktop"
  end
  
  def share_welcome
  	@story_today = Story.find(:first, :conditions => ['rundate = ?', Date.today])
  	@story = Story.find(params[:id])
  	render :layout => "desktop"
  end
  
  def submit 
  @pagetitle = "submit your writing"
  end
  
  def about
  @pagetitle = "about us"
  end
  
  def follow
  @pagetitle = "follow us"
  end
  
  def partners
  @pagetitle = "our content partners"
  end
  
  def desktop_about
  render :layout => "desktop"
  end
  
  def desktop_follow
  render :layout => "desktop"
  end
  
  def desktop_submit
  render :layout => "desktop"
  end
  
  def desktop_partners
  render :layout => "desktop"
  end
  
  def weekend_welcome
  @stories = Story.find(:all, :conditions => ['rundate <= ?', Date.today], :order => 'rundate DESC', :limit => 5)
  render :layout => "desktop"
  end
  
  def shelf_welcome
  render :layout => "desktop"
  end
  
end
