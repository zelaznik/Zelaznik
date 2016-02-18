# config/initializers/recaptcha.rb
Recaptcha.configure do |config|
  config.public_key  = Rails.application.secrets.recaptcha_public_key || ENV['RECAPTCHA_PUBLIC_KEY']
  config.private_key = Rails.application.secrets.recaptcha_secret_key || ENV['RECAPTCHA_SECRET_KEY']
  config.api_version = 'v2'
end
