module Types
  class VaccinationPlaceType < Base::Object

    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :phone, String, null: false
    field :email, String, null: true
    field :address, String, null: false
    field :site, String, null: true
    field :worktime, String, null: false
    field :lat, String, null: false
    field :long, String, null: false

  end
end
