FactoryBot.define do
  factory :transaction do
    user
    amount { 2000 }
    comment { "Пополнение" }
  end
end