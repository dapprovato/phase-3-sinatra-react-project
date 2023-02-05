class CreateVillagersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :villagers do |t|
      t.string :name
      t.string :photo
    end
  end
end
