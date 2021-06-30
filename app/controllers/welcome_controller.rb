class WelcomeController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
  end

  def show
    @checklists = Checklist.all
  end

  def create
    email = params['welcome']['email']
    
    user = User.find_by(email: email)
    if user.present?
      session[:user] = user.slug
      redirect_to welcome_show_path, flash: { alert: 'Email address found' }
    else
      redirect_to welcome_path, flash: { alert: 'Email address not found' }
    end 
  end

  
end
