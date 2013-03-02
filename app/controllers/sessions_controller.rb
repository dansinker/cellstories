class SessionsController < ApplicationController

layout "no_share"
  
def create
    session[:password] = params[:password]
    redirect_to :controller => 'stories', :action => 'list'
end

def destroy
  reset_session
  flash[:notice] = 'logged out'
  redirect_to login_path
end
end
