ActiveAdmin.register Checklist do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :call_to_action, :email_when_finished
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :call_to_action, :email_when_finished]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
