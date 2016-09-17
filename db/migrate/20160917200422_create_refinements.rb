class CreateRefinements < ActiveRecord::Migration
  def change
    create_table :refinements do |t|
    	t.string :type
    	t.string :tag, :name, :title
      t.timestamps
    end
  end
end
