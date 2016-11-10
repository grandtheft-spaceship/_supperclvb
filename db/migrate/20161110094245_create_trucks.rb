class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :name, null: false
      t.string :address
      t.integer :owner_id, null: false

      t.timestamps(null: false)
    end
  end
end
