class User < ApplicationRecord
  # Direct associations

  has_many   :purchases,
             :dependent => :destroy

  # Indirect associations

  has_many   :categories,
             :through => :purchases,
             :source => :category

  # Validations

  validates :username, :uniqueness => true

  validates :username, :presence => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
