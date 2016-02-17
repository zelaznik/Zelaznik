class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :download_user

  include ApplicationHelper

  def download_user
    @current_user = current_user
  end

  def current_user
    User.find_by_last_name('Zelaznik')
  end

end
