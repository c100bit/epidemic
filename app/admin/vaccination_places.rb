ActiveAdmin.register VaccinationPlace do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :phone, :email, :address, :site, :worktime, :lat, :long
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :phone, :email, :address, :site, :worktime, :lat, :long]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
