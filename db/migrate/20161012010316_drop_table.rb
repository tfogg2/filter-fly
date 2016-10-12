class DropTable < ActiveRecord::Migration
  def change
  	drop_table :refinements
  end
end
