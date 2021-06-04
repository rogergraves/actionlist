ActiveAdmin.register Checklist do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :call_to_action, :email_when_finished

  index do
    id_column
    column "Name Link" do |checklist|
      link_to "#{checklist.name}", "/admin/checklists/#{checklist.id}"
    end
    column :call_to_action
    column :email_when_finished
    actions
  end

  show do
    panel "Checklist" do
      table_for checklist do
        column :call_to_action
        column :email_when_finished
      end

      panel "Items" do
        table_for checklist.items do
          column :description
          column :order
          column "Item Link" do |item|
            link_to 'Item', "/admin/items/#{item.id}"
          end
        end
      end
    end
    active_admin_comments
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
