class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  belongs_to :neighborhood

  has_many   :very_best_dishes_bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_one    :dish,
             :through => :cuisine,
             :source => :dishes

  # Validations

end
