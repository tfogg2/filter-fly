class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.string :name, null: false
      t.string :tag, null: false

      t.timestamps
    end
  end
end
