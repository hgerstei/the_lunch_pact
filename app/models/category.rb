class Category < ApplicationRecord
  # Direct associations

  # has_many   :states,
  #            :dependent => :destroy

  has_many   :purchases,
             :dependent => :destroy

  # Indirect associations

  has_many   :recipes,
             :dependent => :destroy
            #  :through => :states,
            #  :source => :recipes

  has_many   :recommendations,
             :dependent => :destroy
            #  :through => :states,
            #  :source => :recommendations

  has_many   :users,
             :through => :purchases,
             :source => :user

  # Validations

  validates :lifespan, :presence => true

  validates :photo_url, :presence => true

  validates :storage_suggestions, :presence => true

  validates :category, :uniqueness => true

  validates :category, :presence => true

end
