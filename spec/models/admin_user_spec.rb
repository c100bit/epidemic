# == Schema Information
#
# Table name: admin_users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_admin_users_on_email                 (email) UNIQUE
#  index_admin_users_on_reset_password_token  (reset_password_token) UNIQUE
#

RSpec.describe AdminUser, type: :model do
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
