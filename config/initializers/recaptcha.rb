# config/initializers/recaptcha.rb
Recaptcha.configure do |config|
  config.public_key  = '6LcbhhgTAAAAALi0PxoTYG58twjudcuN-IXz5MaS'
  config.private_key = '6Lc6BAAAAAAAAKN3DRm6VA_xxxxxxxxxxxxxxxxx'
  # Uncomment the following line if you are using a proxy server:
  # config.proxy = 'http://myproxy.com.au:8080'
end
