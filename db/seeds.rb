# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'олег@тестовая-зона.рф', password: 'олег@тестовая-зона.рф', password_confirmation: 'олег@тестовая-зона.рф')
User.create!(email: 'мария@тестовая-зона.рф', password: 'мария@тестовая-зона.рф', password_confirmation: 'мария@тестовая-зона.рф')

User.create!(email: 'админ@тестовая-зона.рф', password: 'админ@тестовая-зона.рф', password_confirmation: 'админ@тестовая-зона.рф', role: User::SUPER_ADMIN)
User.create!(email: 'организация@тестовая-зона.рф', password: 'организация@тестовая-зона.рф', password_confirmation: 'организация@тестовая-зона.рф', role: User::ADMIN)

User.create!(email: 'c100bit@gmail.com', password: 'P@$$w0rd', password_confirmation: 'P@$$w0rd', role: User::SUPER_ADMIN)
