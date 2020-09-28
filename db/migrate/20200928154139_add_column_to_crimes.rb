class AddColumnToCrimes < ActiveRecord::Migration[6.0]
  def change
    add_column :crimes, :warning_message, :string
    add_column :crimes, :scars_and_marks, :string
    add_column :crimes, :alias, :string
    add_column :crimes, :caution, :string
    add_column :crimes, :sex, :string
    add_column :crimes, :url, :string
    add_column :crimes, :remarks, :string
    add_column :crimes, :image_small, :string
    add_column :crimes, :reward, :integer
  end
end
