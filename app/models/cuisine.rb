class Cuisine < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :foreign_key => "cusine_id",
             :dependent => :destroy

  has_many   :restaurants,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
