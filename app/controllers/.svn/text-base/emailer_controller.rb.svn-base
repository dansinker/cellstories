class EmailerController < ApplicationController
   def sendmail
      recipient = params[:email]
      subject = params[:subject]
      message = params[:message]
      Emailer.deliver_contact(recipient, subject, message)
      return if request.xhr?
      render :text => 'Message sent successfully'
   end
   
   def index
   @story = Story.find(:first, :conditions => ['rundate = ?', Date.today])
   end
   
   def scheduled
   @story = Story.find(params[:id])
   Emailer.deliver_scheduled(@story)   
   end
end