class State < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :stage1, :presence => true

  validates :stage2, :presence => true

  validates :stage3, :presence => true

  validates :stage4, :presence => true

end
