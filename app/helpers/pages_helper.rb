module PagesHelper
  def verify_google_recaptcha(secret_key, response, ip)
    # url = "https://www.google.com/recaptcha/api/siteverify? secret=#{secret_key}&response=#{response}&ip=#{ip}"
    #
    # hash = JSON.parse(status)
    # hash["success"] == true ? true : false
  end
end
