class Recommendation < ApplicationRecord
  # Direct associations

  belongs_to :state

  # Indirect associations

  # Validations

  validates :recommendation, :presence => true

  validates :state_id, :presence => true

end
