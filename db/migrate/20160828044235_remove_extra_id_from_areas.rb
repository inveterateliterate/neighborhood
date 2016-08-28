class RemoveExtraIdFromAreas < ActiveRecord::Migration[5.0]
  def change
  end

  remove_column :areas, :area_id
end
