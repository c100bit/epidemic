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

      User.create!(email: 'олег@тестовая-зона.рф',
                   uid: 'олег@тестовая-зона.рф',
                   first_name: 'Олег',
                   last_name: 'Иванов',
                   phone: '9600000000',
                   address: 'Москва, ул. Тверская, 10',
                   middle_name: 'Петрович',
                   password: 'олег@тестовая-зона.рф',
                   password_confirmation: 'олег@тестовая-зона.рф')

      User.create!(email: 'c100bit@gmail.com',
                   uid: 'c100bit@gmail.com',
                   first_name: 'c100bit@gmail.com',
                   last_name: 'Петрова',
                   phone: '9600000001',
                   address: 'Санкт-Петербург, ул. Тверская, 10',
                   middle_name: 'Ивановна',
                   password: 'c100bit@gmail.com',
                   password_confirmation: 'c100bit@gmail.com')

      AdminUser.create!(email: 'админ@тестовая-зона.рф',
                        password: 'админ@тестовая-зона.рф',
                        password_confirmation: 'админ@тестовая-зона.рф',
                        role: AdminUser::SUPER_ADMIN)

      AdminUser.create!(email: 'организация@тестовая-зона.рф',
                        password: 'организация@тестовая-зона.рф',
                        password_confirmation: 'организация@тестовая-зона.рф',
                        role: AdminUser::ADMIN)

      AdminUser.create!(email: 'c100bit@gmail.com',
                        password: 'P@$$w0rd',
                        password_confirmation: 'P@$$w0rd',
                        role: AdminUser::SUPER_ADMIN)
    end
  end
end
