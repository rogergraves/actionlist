class ChecklistsController < ApplicationController
  def show
    @checklist = Checklist.find_by(uri: params[:uri])
    @checklists = Checklist.all
  end
end
