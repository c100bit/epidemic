FactoryBot.define do
  factory :vaccination_calendar do
    start_date { "2020-06-21" }
    end_date { "2020-06-21" }
    name { "MyString" }
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
