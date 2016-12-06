class Category < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :storage_suggestions, :presence => true

  validates :type, :uniqueness => true

  validates :type, :presence => true

end
