class CreateActiveTariffs < ActiveRecord::Migration[7.1]
  def change
    create_table :active_tariffs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tariff, null: false, foreign_key: true
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
