class ChecklistsController < ApplicationController
  before_action :authenticate_user!
  def show
    @checklist = Checklist.find_by(uri: params[:uri])
    @checklists = Checklist.all
    @user_items = @user.items
    
  end
  def update


    @user.user_items.destroy_all
    params[:checked_items].each do |item_id|
      @user.user_items.create(item_id: item_id)
    end



    redirect_to checklist_path(params[:uri]), flash: { alert: 'Checklist saved!' }
    
  end
end
