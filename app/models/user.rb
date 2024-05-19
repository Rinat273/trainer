class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def update_tariff
    active = Tariff.find(2)
    active
  end

  def done!
    update!(active_tariff_id: update_tariff.id)
  end
end
