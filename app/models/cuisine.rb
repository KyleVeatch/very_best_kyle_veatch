class Cuisine < ApplicationRecord
  # Direct associations

  has_many   :very_best_dishes_bookmarks,
             :dependent => :destroy

  has_many   :dishes,
             :foreign_key => "cusine_id",
             :dependent => :destroy

  has_many   :restaurants,
             :dependent => :destroy

  # Indirect associations

  has_many   :neighborhoods,
             :through => :restaurants,
             :source => :neighborhood

  # Validations

end
