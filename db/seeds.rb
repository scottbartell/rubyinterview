SEED_FILE_PATH = Rails.root.join('db/seeds/questions.yml')

ActiveRecord::Base.transaction do
  file = File.open SEED_FILE_PATH
  questions = YAML.load(file)['questions']

  questions.each do |question|

    Question.find_or_create_by!(
      content: question[:content],
      answer: question[:answer],
      category_name: question[:category_name]
    )
  end
end
