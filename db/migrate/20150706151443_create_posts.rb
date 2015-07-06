class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :start_time
      t.string :end_time
      t.text :deal
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
