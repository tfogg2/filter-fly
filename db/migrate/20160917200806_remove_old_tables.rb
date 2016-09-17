class RemoveOldTables < ActiveRecord::Migration
  def up
  	Filter.all.each do |f|
  		Refinement.create(name: f.name, tag: f.tag)
  	end 
  	Collection.all.each do |c|
  		Refinement.create(title: c.title, tag: c.tag)
  	end 


  	drop_table :filters
  	drop_table :collections
  end
  def down
  end
end
