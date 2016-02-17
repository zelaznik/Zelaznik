# config/initializers/recaptcha.rb
Recaptcha.configure do |config|
  config.public_key  = Rails.application.secrets.recaptcha_public_key
  config.private_key = Rails.application.secrets.recaptcha_private_key
  config.proxy = 'http://www.google.com/recaptcha/api/verify'
end
