class EmailsController < ApplicationController
  def index
    @abouts = About.all
  end

  def send_email_us
    begin
      EmailMailer.with(
        emailto: 'cornerstonebaptistnl@gmail.com',
        name: params[:name],
        phone: params[:phone],
        email: params[:email],
        message: params[:message]).send_email_us.deliver_now
      flash[:notice] = 'Thank you for your message. We will reply to you soon. God Bless.'
      redirect_to about_index_path
    rescue Net::SMTPAuthenticationError, Net::SMTPServerBusy, Net::SMTPSyntaxError, Net::SMTPFatalError, Net::SMTPUnknownError => e
      flash[:notice] = 'Sorry your message did not send, please try again!'
      redirect_to about_index_path
    end
  end
end
