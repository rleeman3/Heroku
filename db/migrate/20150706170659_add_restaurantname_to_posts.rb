class AddRestaurantnameToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :restaurant_name, :string
  end
end
