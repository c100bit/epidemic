ActiveAdmin.register VaccinationCalendar do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :start_date, :end_date, :title
  #
  # or
  #
  # permit_params do
  #   permitted = [:start_date, :end_date, :title]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
