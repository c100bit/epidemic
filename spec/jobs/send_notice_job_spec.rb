describe SendNoticeJob do
  describe '#perform' do
    subject(:perform) { described_class.new.perform(true) }

    let!(:user) { create(:user) }
    let!(:calendar) { create(:vaccination_calendar) }

    it 'sends email and notice' do
      perform
      expect(user.reload.notices.count).to eq(1)
    end
  end
end
