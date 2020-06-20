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
FactoryBot.define do
  factory :vaccination_place do
    address { 'адрес' }
    description { 'описание' }
    email { 'емейл@домен.рф' }
    lat { 'широта' }
    long { 'долгота' }
    phone { '111111111' }
    site { 'сайт.рф' }
    title { 'заголовок' }
    worktime { 'время работы' }
  end
end
