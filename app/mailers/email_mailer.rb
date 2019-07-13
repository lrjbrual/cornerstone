class EmailMailer < ApplicationMailer
  default from: 'lrjbrual@gmail.com'

  def send_email_us
    @name = params[:name]
    @phone  = params[:phone]
    @email  = params[:email]
    @message  = params[:message]
    @emailto  = params[:emailto]
    mail(to: @emailto, subject: 'Cornerstone  Contact Us')
  end
end
