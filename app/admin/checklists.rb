ActiveAdmin.register Checklist do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :call_to_action, :email_when_finished, :uri

  show title: 'Checklists' do |checklist|
    attributes_table do
      row :name
      row :call_to_action
      row :email_when_finished
      row :uri
      row "URL for emails" do

        "<input size = '50' type = 'text' value = '#{ENV['link_url']}/checklists/#{checklist.uri}' onClick='this.select();'>".html_safe
      end
      row "Items" do
        checklist.items.map{|item| item.description }.join(', ')
      end
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :call_to_action, :email_when_finished]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
