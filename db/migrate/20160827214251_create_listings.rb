class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.references :user, index: true
      t.references :restaurants, index: true
      t.timestamps
    end
    add_foreign_key :listings, :users
    add_foreign_key :listings, :restaurants
  end
end
