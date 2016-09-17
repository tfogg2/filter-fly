class AddCollectionIdToFilters < ActiveRecord::Migration
  def change
  	add_column :refinements, :collection_id, :integer
  	add_column :refinements, :filter_id, :integer
  end
end
