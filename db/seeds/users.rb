module Seeds
  module Users
    def self.create!
      User.create!(email: 'олег@тестовая-зона.рф',
                   uid: 'олег@тестовая-зона.рф',
                   first_name: 'Олег',
                   last_name: 'Иванов',
                   phone: '9600000000',
                   address: 'Москва, ул. Тверская, 10',
                   middle_name: 'Петрович',
                   password: 'олег@тестовая-зона.рф',
                   password_confirmation: 'олег@тестовая-зона.рф')

      User.create!(email: 'мария@тестовая-зона.рф',
                   uid: 'мария@тестовая-зона.рф',
                   first_name: 'Мария',
                   last_name: 'Петрова',
                   phone: '9600000001',
                   address: 'Санкт-Петербург, ул. Тверская, 10',
                   middle_name: 'Ивановна',
                   password: 'мария@тестовая-зона.рф',
                   password_confirmation: 'мария@тестовая-зона.рф')

      User.create!(email: 'админ@тестовая-зона.рф',
                   uid: 'админ@тестовая-зона.рф',
                   first_name: 'Сергей',
                   last_name: 'Кузьмич',
                   phone: '9600000002',
                   address: 'Псков, ул. Тверская, 10',
                   middle_name: 'Иванович',
                   password: 'админ@тестовая-зона.рф',
                   password_confirmation: 'админ@тестовая-зона.рф',
                   role: User::SUPER_ADMIN)

      User.create!(email: 'организация@тестовая-зона.рф',
                   uid: 'организация@тестовая-зона.рф',
                   first_name: 'Дмитрий',
                   last_name: 'Панов',
                   phone: '9600000003',
                   address: 'Екатеринбург, ул. Тверская, 10',
                   middle_name: 'Арихстархович',
                   password: 'организация@тестовая-зона.рф',
                   password_confirmation: 'организация@тестовая-зона.рф',
                   role: User::ADMIN)

      User.create!(email: 'c100bit@gmail.com',
                   uid: 'c100bit@gmail.com',
                   first_name: 'Иван',
                   last_name: 'Иванов',
                   phone: '9600000004',
                   address: 'Санта-Моника, ул. Тверская, 10',
                   middle_name: 'Петрович',
                   password: 'P@$$w0rd',
                   password_confirmation: 'P@$$w0rd',
                   role: User::SUPER_ADMIN)
    end
  end
end
