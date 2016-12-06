class State < ApplicationRecord
  # Direct associations

  has_many   :recommendations,
             :dependent => :destroy

  belongs_to :category

  # Indirect associations

  # Validations

  validates :category_id, :presence => true

  validates :stage1, :presence => true

  validates :stage2, :presence => true

  validates :stage3, :presence => true

  validates :stage4, :presence => true

end
