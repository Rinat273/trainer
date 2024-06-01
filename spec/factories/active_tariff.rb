FactoryBot.define do
  factory :active_tariff do
    user_id
    tariff_id
    price { 1000 }
    quantity { 12 }
  end
end