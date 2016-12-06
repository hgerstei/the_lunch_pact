class Recipe < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :recipe_name, :presence => true

  validates :recipe_url, :presence => true

  validates :state_id, :presence => true

end
