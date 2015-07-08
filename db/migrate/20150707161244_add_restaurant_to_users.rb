class AddRestaurantToUsers < ActiveRecord::Migration
  def change
    add_column :users, :restaurant, :string
  end
end
