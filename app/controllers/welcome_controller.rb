class WelcomeController < ApplicationController
  def index
  end

  def show
  end

  def create
    email = params['welcome']['email']
    
    user = User.find_by(email: email)
    if user.present?
      redirect_to welcome_show_path, flash: { alert: 'Email address found' }
    else
      redirect_to welcome_path, flash: { alert: 'Email address not found' }
    end 
  end
end
