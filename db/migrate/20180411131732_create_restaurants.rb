class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :neighborhood_id
      t.integer :cuisine_id

      t.timestamps

    end
  end
end
