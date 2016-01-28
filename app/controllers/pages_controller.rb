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
  end
end
