class Category < ApplicationRecord
  # Direct associations

  has_many   :states,
             :dependent => :destroy

  has_many   :purchases,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :lifespan, :presence => true

  validates :photo_url, :presence => true

  validates :refrigeration, :presence => true

  validates :storage_suggestions, :presence => true

  validates :type, :uniqueness => true

  validates :type, :presence => true

end
