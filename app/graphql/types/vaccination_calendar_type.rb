module Types
  class VaccinationCalendarType < Base::Object

    field :id, ID, null: false
    field :title, String, null: false
    field :start_date, String, null: false
    field :end_date, String, null: false
    field :to_notice, String, null: false

  end
end
