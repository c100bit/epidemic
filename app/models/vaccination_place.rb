class VaccinationPlace < ApplicationRecord

  validates :title, presence: true
  validates :address, presence: true
  validates :worktime, presence: true
  validates :lat, presence: true
  validates :long, presence: true
  validates :phone, presence: true

end
