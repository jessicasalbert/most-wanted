class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :password_digest, :string
    add_column :users, :badge_id, :integer
    add_column :users, :city_id, :integer
  end
end
