class AddColumnToCities < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :display_name, :string
  end
end
