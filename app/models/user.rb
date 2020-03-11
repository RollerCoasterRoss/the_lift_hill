class User < ApplicationRecord
  has_many :attraction_reviews
  has_many :park_reviews
end
