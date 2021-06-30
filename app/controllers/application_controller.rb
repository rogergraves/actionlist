class ApplicationController < ActionController::Base
    private
  
  def authenticate_user!
    @user = User.find_by(slug: session[:user]) if session[:user]
  
    redirect_to welcome_path unless @user.present?
  end
end
