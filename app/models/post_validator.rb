class PostValidator < ActiveModel::Validator
  def validate(record)
    unless record.name.include? "Won't Believe", "Secret", "Top[number]", "Guess"
      record.errors[:name] << "Your title does not contain enough clickbait!"
    end
  end
end