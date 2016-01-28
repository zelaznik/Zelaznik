class PagesController < ApplicationController
  def home
  end

  def about
  end

  def blog
    # redirect_to @current_user.blog, target: '_blank'
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

  def index
    render :home
  end

  def splash
    @splash = current_user.splashes.find_by(rank: splash_id)
    if @splash.nil?
      redirect_to home_url
    else
      render
    end
  end

  private
  def splash_id
    !params[:prev] ? 0 : params[:prev].to_i + 1
  end
end
