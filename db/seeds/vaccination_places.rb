# frozen_string_literal: true

module Seeds
  module VaccinationPlaces
    def self.create!
      VaccinationPlace.create!(title: 'Медицинское учреждение 1',
                               description: 'лечебно-профилактические и другие виды заведений, в которых людям, в том числе с какими-либо заболеваниями, оказываются медицинские услуги: диагностика, лечение, реабилитация после перенесенных болезней',
                               phone: '9600000002',
                               email: 'организация@тестовая-зона.рф',
                               address: 'Санкт-Петербург, ул. Тверская, 10',
                               site: 'http://учреждение1.рф',
                               worktime: 'Ежедневно с 10:00 - 20:00',
                               lat: '30.304899',
                               long: '59.918077')

      VaccinationPlace.create!(title: 'Медицинское учреждение 2',
                               description: 'лечебно-профилактические и другие виды заведений, в которых людям, в том числе с какими-либо заболеваниями, оказываются медицинские услуги: диагностика, лечение, реабилитация после перенесенных болезней',
                               phone: '9600000001',
                               email: 'организация@тестовая-зона.рф',
                               address: 'Москва, ул. Тверская, 10',
                               site: 'http://учреждение2.рф',
                               worktime: 'Ежедневно с 10:00 - 20:00',
                               lat: '37.645703',
                               long: '55.749428')

      VaccinationPlace.create!(title: 'Медицинское учреждение 3',
                               description: 'лечебно-профилактические и другие виды заведений, в которых людям, в том числе с какими-либо заболеваниями, оказываются медицинские услуги: диагностика, лечение, реабилитация после перенесенных болезней',
                               phone: '9600000000',
                               email: 'организация@тестовая-зона.рф',
                               address: 'Екатеринбург, ул. Тверская, 10',
                               site: 'http://учреждение3.рф',
                               worktime: 'Ежедневно с 10:00 - 20:00',
                               lat: '60.601571',
                               long: '56.788751')
    end
  end
end
