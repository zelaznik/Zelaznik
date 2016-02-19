require 'net/https'

module RecaptchaHelper
  def verify_google_recaptcha(secret_key, response)
    base_url = "https://www.google.com/recaptcha/api/siteverify"
    path = "#{base_url}?secret=#{secret_key}&response=#{response}"

    uri = URI.parse(path)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(uri)
    response = http.request(request)

    JSON.parse(response.body)
   end
end
