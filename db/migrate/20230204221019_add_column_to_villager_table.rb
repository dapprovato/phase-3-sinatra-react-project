class AddColumnToVillagerTable < ActiveRecord::Migration[6.1]
  def change
    add_column :villagers, :village_id, :integer
  end
end
