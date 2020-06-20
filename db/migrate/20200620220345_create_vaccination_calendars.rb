class CreateVaccinationCalendars < ActiveRecord::Migration[6.0]

  def change
    create_table :vaccination_calendars do |t|
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :title, null: false

      t.timestamps
    end
  end

end
