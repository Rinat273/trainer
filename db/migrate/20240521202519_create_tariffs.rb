class CreateTariffs < ActiveRecord::Migration[7.1]
  def change
    create_table :tariffs do |t|
      t.text :title

      t.timestamps
    end
  end
end
