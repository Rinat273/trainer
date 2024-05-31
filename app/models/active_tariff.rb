class ActiveTariff < ApplicationRecord
  belongs_to :user  #, index: true # { unique: true }, foreign_key: true
  belongs_to :tariff
  has_many :visits

  validates_uniqueness_of :user_id, :message => "is already being used"
end
