class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
    	t.string :name
      t.string :website
      t.float :latitude
      t.float :longitude
      t.string :address
      
      t.references :category, index: true
      t.references :area, index: true
      t.timestamps
    end
  end
end
