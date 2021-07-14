ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email

  show title: 'Users' do |user|
    attributes_table do
      row :email
      row :slug
      row :created_at
      row :updated_at
      row 'Checklists' do
        all_checklists = Checklist.all
        list = ""
        all_checklists.each do |checklist|
          item_ids = user.items.pluck(:item_id)
          if Item.where(id: item_ids, checklist_id: checklist.id).any?
            list += "<h2>#{checklist.name}</h2>"
            list += "<ul>"
            checklist.items.each do |item|
              list += "<li> #{item.description} </li>" if UserItem.find_by(item_id: item.id, user_id: user.id, checked: true).present?
            end
            list += "</ul>"
          end
        end
        list.html_safe
      end
      # row :items_checked
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :slug]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs "User" do
      f.input :email
      f.actions
    end
  end
  
end

# We've known each other, for so long