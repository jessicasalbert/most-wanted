class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.string :title
      t.string :description
      t.string :hair_raw
      t.string :details
      t.string :race_raw
      t.string :eyes
      t.string :image
      t.string :birthday
      t.integer :city_id
      t.timestamps
    end
  end
end
