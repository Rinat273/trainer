require 'rails_helper'

RSpec.describe ChangeTariff do
  describe 'Creation' do
    User.destroy_all
    let!(:user) { create(:user) }
    let!(:tariff) { create(:tariff) }
    let!(:new_tariff) { Tariff.create(title: "Утренний") }
    let!(:active_tariff) { ActiveTariff.create(user_id: user.id, tariff_id: tariff.id, price: 1000, quantity: 12) }

    it "changes active tariff" do
      expect(User.all.count).to eq(1)
      expect(Tariff.all.count).to eq(2)
      expect(ActiveTariff.all.count).to eq(1)
      binding.pry
    end

  end
end