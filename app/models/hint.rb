class Hint < ApplicationRecord
  belongs_to :answer
  belongs_to :group
  has_many :user_hints
  has_many :users, through: :user_hints
  has_one_attached :photo

  attr_accessor :attempt

  def check_correctness(attempt)
    return check_with_range(attempt.to_i) if answer.range

    attempt.gsub(' ', '').downcase == answer.correct.gsub(' ', '').downcase
  end

  def check_with_range(attempt)
    attempt >= answer.correct.to_i - answer.range / 2 && attempt <= answer.correct.to_i + answer.range / 2
  end
end
