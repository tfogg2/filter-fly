class AddFilterToCollection < ActiveRecord::Migration
  def change
    add_reference :collections, :filter, index: true
  end
end
