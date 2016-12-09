class State < ApplicationRecord
  # Direct associations

  has_many   :recipes

  has_many   :recommendations,
             :dependent => :destroy

  belongs_to :category

  # Indirect associations

  # Validations

  validates :category_id, :presence => true

  validates :stage_name, :presence => true

  validates :stage, :presence => true

end
