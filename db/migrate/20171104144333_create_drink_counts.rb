class CreateDrinkCounts < ActiveRecord::Migration[5.1]
  def change
    create_table :drink_counts do |t|
      t.string :user_id
      t.integer :count

      t.timestamps
    end
  end
end
