class CreateRating < ActiveRecord::Migration[7.1]
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :truck_id
      t.integer :score
      t.timestamps
    end
  end
end
