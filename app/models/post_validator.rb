class PostValidator < ActiveModel::Validator
  def validate(record)
    unless record.title.include? "Won't Believe", "Secret", "Top[number]", "Guess"
      record.errors[:title] << "Your title does not contain enough clickbait!"
    end
  end
end