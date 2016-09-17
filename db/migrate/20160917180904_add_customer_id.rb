class AddCustomerId < ActiveRecord::Migration
  def up
  	add_column :filters, :collection_id, :string
  end

  def down
  	remove_column :filters, :collection_id, :string 
  end
end
