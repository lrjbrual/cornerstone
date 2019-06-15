ActionMailer::Base.smtp_settings = {
  user_name:      Rails.application.secrets.mail_username,
  password:       Rails.application.secrets.mail_password,
  domain:         'gmail.com',
  address:       'smtp.gmail.com',
  port:          '587',
  authentication: :plain,
  enable_starttls_auto: true
}