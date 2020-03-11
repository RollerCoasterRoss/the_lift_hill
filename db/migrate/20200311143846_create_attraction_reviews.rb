class CreateAttractionReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :attraction_reviews do |t|
      t.text :body
      t.integer :fear_factor
      t.integer :fun_factor
      t.integer :user_id
      t.integer :attraction_id

      t.timestamps
    end
  end
end
