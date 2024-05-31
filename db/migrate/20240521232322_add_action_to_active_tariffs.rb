class AddActionToActiveTariffs < ActiveRecord::Migration[7.1]
  def change
    add_column :active_tariffs, :action, :boolean, default: false
  end
end
