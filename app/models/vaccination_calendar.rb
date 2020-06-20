class VaccinationCalendar < ApplicationRecord

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :title, presence: true

  def to_notice
    "#{title} в период с #{start_date.strftime('%d.%m.%Y')} по #{end_date.strftime('%d.%m.%Y')}"
  end

end

# == Schema Information
#
# Table name: vaccination_calendars
#
#  id         :bigint           not null, primary key
#  end_date   :date             not null
#  start_date :date             not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
