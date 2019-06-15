class Email < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i, :unique => true
  attribute :message,    :validate => true
  attribute :nickname,  captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "From Bible Baptist Church Website",
      :to => "lrjbrual@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end