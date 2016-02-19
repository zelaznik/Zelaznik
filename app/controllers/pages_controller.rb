
class PagesController < ApplicationController
  include RecaptchaHelper

  def home
  end

  def about
  end

  def blog
    raise NotImplementedError.new("Blog routes not in commission.")
  end

  def resume
    send_file 'public/assets/data/steve_zelaznik_cv.pdf',
    type: "application/pdf", :x_sendfile=>true,
    file_name: 'steve_zelaznik_cv.pdf'
  end

  def portfolio
  end

  def contact
  end

  def info
    response = verify_google_recaptcha

    respond_to do |format|
      format.html do
        @recaptcha_success = response["success"]
        render :contact
      end
    end
  end

  def demo
  end

  def index
    render :home
  end

  def splash
    @splash = current_user.splashes.find_by(rank: splash_id)
    if @splash.nil?
      redirect_to home_url
    else
      @has_delay = (@splash.rank == 0)
      render
    end
  end

  def orig
  end

  private
  def splash_id
    !params[:prev] ? 0 : params[:prev].to_i + 1
  end

  def verify_recaptcha
    response = Recaptcha.verify(params)
    if response.code == 200
      if response['success']
        flash[:notice] = "Recaptcha verification successful."
      else
        render json: {error: "Recaptcha verification error."}
      end

    else
      render json: {error: "HTTP connection error"}
    end
  end

end
