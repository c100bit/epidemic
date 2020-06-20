require 'rails_helper'

RSpec.describe VaccinationCalendar, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
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
