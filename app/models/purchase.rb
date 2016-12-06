class Purchase < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  belongs_to :category,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :category_id, :presence => true

  validates :purchase_date, :presence => true

  validates :purchase_name, :uniqueness => { :scope => [:category_id, :purchase_date] }

  validates :purchase_name, :presence => true

  validates :user_id, :presence => true

end
