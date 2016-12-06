class Recommendation < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :recommendation, :presence => true

  validates :state_id, :presence => true

end
