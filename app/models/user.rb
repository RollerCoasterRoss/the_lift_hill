class User < ApplicationRecord
  has_secure_password

  has_many :attraction_reviews
  has_many :park_reviews

  validates :email, presence: true, uniqueness: true
end
