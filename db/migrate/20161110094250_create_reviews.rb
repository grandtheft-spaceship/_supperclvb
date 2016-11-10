class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :patron_id, null: false
      t.integer :truck_id, null: false
      t.integer :rating, null: false
      t.string :comment, null: false

      t.timestamps(null: false)
    end
  end
end
