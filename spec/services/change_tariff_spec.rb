require 'rails_helper'

RSpec.describe ChangeTariff do
  describe 'Creation' do
    let!(:new_tariff) { create(:tariff, title: "Базовый")}
    let!(:active_tariff) { create(:active_tariff) } 

    it "changes active tariff" do
      expect(User.all.count).to eq(1)
      expect(Tariff.all.count).to eq(2)
      expect(ActiveTariff.all.count).to eq(1)
      binding.pry
    end

  end
end