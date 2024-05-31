

user = User.create!(name: "Иван")

tariff1 = Tariff.create!(title: "Базовый")
tariff2 = Tariff.create!(title: "Расширенный")


active = ActiveTariff.create!(user_id: 1, tariff_id: 1, price: 1000, quantity: 13)

transaction = Transaction.create!(user_id: 1, amount: 1700, comment: "Пополнение")

transaction1 = Transaction.create!(user_id: 1, amount: -active.price, comment: "Списание")


visit1 = Visit.create!(active_tariff_id: 1)
visit2 = Visit.create!(active_tariff_id: 1)
visit3 = Visit.create!(active_tariff_id: 1)


user.transactions.pluck(:amount).sum 
visit = Visit.where(active_tariff_id: 1)
action_now = active.quantity - visit.count
price_of_day = active.price / active.quantity
residual_amount = price_of_day * action_now
transaction2 = Transaction.create!(user_id: 1, amount: residual_amount, comment: "Возврат денег")
user.transactions.pluck(:amount).sum

active2 = ActiveTariff.create!(user_id: 1, tariff_id: 2, price: 1400, quantity: 20)

transaction2 = Transaction.create!(user_id: 1, amount: -active2.price, comment: "Списание")
user.transactions.pluck(:amount).sum 


visit4 = Visit.create!(active_tariff_id: 2)
visit5 = Visit.create!(active_tariff_id: 2)
visit6 = Visit.create!(active_tariff_id: 2)

visit11 = Visit.where(active_tariff_id: 2)
action_now1 = active2.quantity - visit.count












