class PagesController < ApplicationController
  def home
  end

  def about
  end

  def blog
    redirect_to @current_user.blog, target: '_blank'
  end

  def resume
    send_file 'public/assets/data/steve_zelaznik_cv.pdf',
    type: "application/pdf", :x_sendfile=>true,
    file_name: 'steve_zelaznik_cv.pdf'
  end

  def portfolio
  end

  def contact
    # redirect_to url_for controller: 'pages', action: 'home',
    # anchor: 'contact-intro', only_path: true
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
end
