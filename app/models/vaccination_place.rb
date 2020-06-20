# == Schema Information
#
# Table name: vaccination_places
#
#  id          :bigint           not null, primary key
#  address     :string           not null
#  description :text
#  email       :string
#  lat         :string           not null
#  long        :string           not null
#  phone       :string           not null
#  site        :string
#  title       :string           not null
#  worktime    :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class VaccinationPlace < ApplicationRecord

  validates :title, presence: true
  validates :address, presence: true
  validates :worktime, presence: true
  validates :lat, presence: true
  validates :long, presence: true
  validates :phone, presence: true
  validates :email, presence: true, email: true

end
