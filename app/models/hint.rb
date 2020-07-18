class Hint < ApplicationRecord
  belongs_to :answer
  has_one_attached :photo
end
