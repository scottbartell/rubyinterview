class DropCategories < ActiveRecord::Migration
  def up
    drop_table :categories
  end

  def down
    create_table :categories do |t|
      t.string :name
      t.references :parent, index: true

      t.timestamps
    end
  end
end
