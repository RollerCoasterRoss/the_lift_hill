class CreateAttractions < ActiveRecord::Migration[6.0]
  def change
    create_table :attractions do |t|
      t.string :name
      t.integer :location
      t.integer :duration
      t.integer :category

      t.timestamps
    end
  end
end
