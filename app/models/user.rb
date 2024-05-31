class User < ApplicationRecord
  has_one :active_tariff#, dependent: :destroy
  has_many :transactions

  def balance
    transactions.pluck(:amount).sum
  end
end
