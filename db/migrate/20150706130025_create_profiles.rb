class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :restaurant_name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :email
      t.url :website
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
