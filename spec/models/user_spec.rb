# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  address                :string           not null
#  allow_password_change  :boolean          default(FALSE)
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  email                  :string           not null
#  encrypted_password     :string           default(""), not null
#  failed_attempts        :integer          default(0), not null
#  first_name             :string           not null
#  last_name              :string           not null
#  locked_at              :datetime
#  middle_name            :string
#  phone                  :string           not null
#  provider               :string           default("email"), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  tokens                 :json
#  uid                    :string           default(""), not null
#  unconfirmed_email      :string
#  unlock_token           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_uid_and_provider      (uid,provider) UNIQUE
#  index_users_on_unlock_token          (unlock_token) UNIQUE
#

RSpec.describe User, type: :model do
  describe 'email validations' do
    let(:admin) { build(:user, email: email) }

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
      it { expect(admin.save!).to eq(true) }
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
