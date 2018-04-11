class CreateVeryBestDishesBookmarks < ActiveRecord::Migration
  def change
    create_table :very_best_dishes_bookmarks do |t|
      t.integer :dish_id
      t.integer :cuisine_id
      t.integer :restaurant_id

      t.timestamps

    end
  end
end
