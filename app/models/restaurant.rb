class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :very_best_dishes_bookmarks,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
