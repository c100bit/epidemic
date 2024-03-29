ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :first_name, :last_name, :phone, :address, :middle_name

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :middle_name
    column :email
    column :phone
    column :address
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation

      f.input :first_name
      f.input :last_name
      f.input :phone
      f.input :address
      f.input :middle_name
    end
    f.actions
  end
end
