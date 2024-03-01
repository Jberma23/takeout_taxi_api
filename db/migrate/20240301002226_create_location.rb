class CreateLocation < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.integer :truck_id
      t.string :latitude
      t.string :longitude
      t.timestamps
    end
  end
end
