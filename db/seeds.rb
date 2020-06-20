Dir[Rails.root.join('db/seeds/*.rb')].sort.each { |file| require file }

Seeds::Users.create!
#Seeds::News.create!
Seeds::VaccinationPlaces.create!
Seeds::Pages.create!
