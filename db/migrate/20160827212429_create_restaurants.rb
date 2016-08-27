class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
	  t.string :name
      t.string :location
      t.string :website
      t.references :category_id, index: true
      t.references :area_id, index: true
      t.timestamps
    end
  end
end
