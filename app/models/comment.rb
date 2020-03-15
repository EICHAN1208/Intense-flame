class Comment < ApplicationRecord
  belongs_to :pastquestion
  belongs_to :user
end
