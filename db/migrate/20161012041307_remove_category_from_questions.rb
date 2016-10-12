class RemoveCategoryFromQuestions < ActiveRecord::Migration
  def change
    remove_reference :questions, :category
  end
end
