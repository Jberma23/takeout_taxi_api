class CreateReview < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :truck_id
      t.string :content
      t.timestamps
    end
  end
end
