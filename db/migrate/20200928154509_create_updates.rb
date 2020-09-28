class CreateUpdates < ActiveRecord::Migration[6.0]
  def change
    create_table :updates do |t|
      t.integer :crime_id
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
end
