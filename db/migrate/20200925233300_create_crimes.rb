class CreateCrimes < ActiveRecord::Migration[6.0]
  def change
    create_table :crimes do |t|
      t.string :title
      t.string :description
      t.string :hair_raw
      t.string :details
      t.string :race_raw
      t.string :eyes
      t.string :image_large
      t.string :birthday
      t.integer :city_id
      t.timestamps
    end
  end
end
