class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :very_best_dishes_bookmarks,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
