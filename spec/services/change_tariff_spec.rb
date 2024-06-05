require 'rails_helper'

RSpec.describe ChangeTariff do
  describe 'Creation' do
    let!(:user) { create(:user)}
    let!(:transaction) { create(:transaction, user: user, amount: 2000, comment: "Пополнение")}
    let!(:new_tariff) { create(:tariff, title: "Базовый")}
    let!(:active_tariff) { create(:active_tariff) } 
    let!(:new_active_tariff) { create(:active_tariff, user: user, tariff: new_tariff) } 

    it "changes active tariff" do

      expect(ChangeTariff.new(user, new_tariff).call).to eq(true)
      # binding.pry
    end
  end
end