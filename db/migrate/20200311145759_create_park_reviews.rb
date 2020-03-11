class CreateParkReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :park_reviews do |t|
      t.integer :user_id
      t.integer :overall_rating
      t.integer :cleanliness
      t.integer :food_quality
      t.integer :theme_quality
      t.integer :price
      t.integer :staff_rating

      t.timestamps
    end
  end
end
