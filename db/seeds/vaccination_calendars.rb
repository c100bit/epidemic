# frozen_string_literal: true

module Seeds
  module VaccinationCalendars
    def self.create!
      VaccinationCalendar.create!(start_date: Date.parse('2020-01-01'),
                                  end_date: Date.parse('2020-03-01'),
                                  title: 'Вакцинация от гриппа')

      VaccinationCalendar.create!(start_date: Date.parse('2020-05-01'),
                                  end_date: Date.parse('2020-07-01'),
                                  title: 'Вакцинация от коронавируса')

      VaccinationCalendar.create!(start_date: Date.parse('2020-08-01'),
                                  end_date: Date.parse('2020-10-01'),
                                  title: 'Вакцинация от орз')
    end
  end
end
