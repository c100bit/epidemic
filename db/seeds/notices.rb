# frozen_string_literal: true

module Seeds
  module Notices
    def self.create!
      Notice.create!(user: User.first,
                     title: VaccinationCalendar.first.to_notice)

      Notice.create!(user: User.first,
                     title: VaccinationCalendar.second.to_notice)

      Notice.create!(user: User.first,
                     title: VaccinationCalendar.last.to_notice)
    end
  end
end
