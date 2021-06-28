ActiveAdmin.register UserItem do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :item_id, :checked
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :item_id, :checked]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  
  index do
    selectable_column
    id_column
    column :user
    column "Item" do |user_item|
     link_to user_item.item.description, admin_item_path(user_item.item_id)
    end
    column :checked
    actions
  end
  show title: 'UserItem' do |user_item|
    attributes_table do
      row :user
      row "Item" do
        link_to user_item.item.description, admin_item_path(user_item.item_id)
      end
      row :checked
    end
  end

  form do |f|
    f.inputs "UserItems" do
      f.input :user, as: :select, collection: User.pluck(:email, :id)
      f.input :item, as: :select, collection: Item.pluck(:description, :id)
      f.input :checked
      f.actions
    end
  end

end
