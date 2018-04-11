class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :restaurants,
             :dependent => :destroy

  # Indirect associations

  has_many   :cuisines,
             :through => :restaurants,
             :source => :cuisine

  # Validations

end
