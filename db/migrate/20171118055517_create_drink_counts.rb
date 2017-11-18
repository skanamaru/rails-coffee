class CreateDrinkCounts < ActiveRecord::Migration[5.1]
  def change
    create_table :drink_counts do |t|
      t.string :user_id
      t.integer :count
      t.integer :volume_id
      t.integer :strength_id
      t.integer :type_id

      t.timestamps
    end
  end
end
