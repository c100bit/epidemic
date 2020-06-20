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

RSpec.describe VaccinationPlace, type: :model do
  describe 'email validations' do
    let(:admin) { build(:admin_user, email: email) }

    context 'when email is valid eng' do
      let(:email) { 'abuse@yandex.ru' }

      it { expect(admin.valid?).to eq(true) }
    end

    context 'when email is invalid eng' do
      let(:email) { 'abuse@yandex1.ru' }

      it { expect(admin.valid?).to eq(false) }
    end

    context 'when email is valid rus' do
      let(:email) { 'эпидемии-нет@тестовая-зона.рф' }

      it { expect(admin.valid?).to eq(true) }
    end

    context 'when email is invalid rus' do
      let(:email) { 'эпидемии-нет@тестовавя-зона.рф1' }

      it { expect(admin.valid?).to eq(false) }
    end

    context 'when email is nil' do
      let(:email) { nil }

      it { expect(admin.valid?).to eq(false) }
    end
  end
end
