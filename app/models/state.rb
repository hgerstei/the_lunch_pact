class State < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :stage2, :presence => true

  validates :stage3, :presence => true

  validates :stage4, :presence => true

end
