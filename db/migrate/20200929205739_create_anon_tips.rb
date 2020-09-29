class CreateAnonTips < ActiveRecord::Migration[6.0]
  def change
    create_table :anon_tips do |t|
      t.integer :crime_id
      t.string :tip

      t.timestamps
    end
  end
end
