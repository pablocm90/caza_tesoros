class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_hints
  has_many :hints, through: :user_hints
  belongs_to :group
  validates :username, presence: true

  def next_hint
    last_answered = hints.order(order: :asc).last&.order.to_i
    Hint.where(group_id: group_id).find_by_order(last_answered + 1)
  end
end
