class Attraction < ApplicationRecord
  has_many :attraction_reviews
  has_many :images
end
