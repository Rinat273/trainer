FactoryBot.define do
  factory :active_tariff do
    user
    tariff
    price { 1000 }
    quantity { 12 }
    action { false }
  end
end