class LibrariesController < ApplicationController
  layout "no_share"
  
  before_filter :quickread

def index
@pagetitle = "a weekend's worth of awesome"
@stories = Story.find(:all, :conditions => ['rundate <= ?', Date.today], :order => 'rundate DESC', :limit => 5)

if Date.today.wday == 6 
  @monday = Story.find(:first, :conditions => ['rundate =?', Date.today+2])
else
  @monday = Story.find(:first, :conditions => ['rundate =?', Date.today+1])
end
end


def shelf
@pagetitle = "an archive of awesome stories"
@stories = Story.find(:all, :conditions => ['rundate <= ?', Date.today], :order => 'rundate DESC')
flash[:notice] = 'no new stories for a bit!'
end

def title_shelf
@titles = Story.find(:all, :conditions => ['rundate <= ?', Date.today], :order => 'title')
render :layout => false
end

def date_shelf
@dates = Story.find(:all, :conditions => ['rundate <= ?', Date.today], :order => 'rundate DESC')
render :layout => false
end

def author_shelf
@authors = Author.find(:all, :order => 'name')
render :layout => false
end

def loader
 render :partial => "quickread"
  end


end
