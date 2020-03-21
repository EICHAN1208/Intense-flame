class Pastquestion < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :favorites

#pastquestionがイイねされてるか判定したい
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
