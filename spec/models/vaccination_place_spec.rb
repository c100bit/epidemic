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
require 'rails_helper'

RSpec.describe VaccinationPlace, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
