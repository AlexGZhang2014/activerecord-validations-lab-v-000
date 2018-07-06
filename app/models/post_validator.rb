class PostValidator < ActiveModel::Validator
  def validate(record)
    unless record.title.include? "Won't Believe"
      record.errors[:title] << "Your title does not contain enough clickbait!"
    end
  end
end