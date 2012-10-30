class SupportMailer < ActionMailer::Base
  
  default :to => "ttrack@fundershub.com"
  
  def new_message(message)
    @message = message
    mail(:subject => "Support Ticket", :from => @message.email ) do |format|
      format.text
    end
  end
end