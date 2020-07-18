class Hint < ApplicationRecord
  belongs_to :answer
  has_many :user_hints
  has_many :users, through: :user_hints
  has_one_attached :photo

  attr_accessor :attempt

  def check_correctness(attempt)
    attempt == answer.correct
  end

end
