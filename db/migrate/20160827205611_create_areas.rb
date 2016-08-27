class CreateAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :areas do |t|
      t.integer :area_id
      t.string :area_name
      t.timestamps
    end
  end
  remove_column :areas, :area_id, :integer
end
