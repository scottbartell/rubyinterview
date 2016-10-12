class AddCategoryNameToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :category_name, :string
  end
end
