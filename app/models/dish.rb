class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cusine,
             :class_name => "Cuisine"

  has_many   :very_best_dishes_bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_one    :restaurant,
             :through => :cusine,
             :source => :restaurants

  # Validations

end
