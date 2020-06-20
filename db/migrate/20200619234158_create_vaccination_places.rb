class CreateVaccinationPlaces < ActiveRecord::Migration[6.0]

  def change
    create_table :vaccination_places do |t|
      t.string :title, null: false
      t.text :description
      t.string :phone, null: false
      t.string :email
      t.string :address, null: false
      t.string :site
      t.text :worktime, null: false
      t.string :lat, null: false
      t.string :long, null: false

      t.timestamps
    end
  end

end
