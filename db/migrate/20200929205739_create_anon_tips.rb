class CreateAnonTips < ActiveRecord::Migration[6.0]
  def change
    create_table :anon_tips do |t|
      t.crime :belongs_to
      t.string :tip

      t.timestamps
    end
  end
end
