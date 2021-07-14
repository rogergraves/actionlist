class ChecklistsController < ApplicationController
  before_action :authenticate_user!
  def show
    @checklist = Checklist.find_by(uri: params[:uri])
    @checklists = Checklist.all
    @items = @checklist.items
    @user_items = @user.user_items.where(checked: true, item_id: @items.pluck(:id))
    @done = (@user_items.length == @checklist.items.length)
  end
  def update

    checklist = Checklist.find_by(uri: params[:uri])
    @user.user_items.where(item_id: checklist.items.pluck(:id)).destroy_all
    params[:checked_items]&.each do |item_id|
      @user.user_items.create(item_id: item_id, checked: true)
    end

    redirect_to checklist_path(params[:uri]), flash: { alert: 'Checklist saved!' }
    
  end
end
