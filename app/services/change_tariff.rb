class ChangeTariff

  def initialize(user, new_tariff_id)
    @user = User.where(name: user)
    @new_tariff = Tariff.find(new_tariff_id)

  end

  def call
    check_conditions
    remove_old_tariff
    assign_new_tariff  
  end

  private

  def check_conditions
    raise 'Недостаточно баланса' if @user.balance <= @new_tariff.quantity
  end

  def remove_old_tariff
    old_tariff = ActiveTariff.where(user_id: @user.id)
    old_tariff.update!(action: false)
  end

  def assign_new_tariff
    active = ActiveTariff.create!(user_id: @user.id, tariff_id: @new_tariff.id, price: 1000, quantity: 13)
    active.update!(action: true)
  end

end

# ChangeTariff.new(user, new_tariff_id).call