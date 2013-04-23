class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.text :answer
      t.text :content_html
      t.text :answer_html
      t.references :category, index: true

      t.timestamps
    end
  end
end
