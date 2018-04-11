class VeryBestDishesBookmark < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  belongs_to :restaurant

  belongs_to :dish

  # Indirect associations

  # Validations

end
