class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :pastquestions
  has_many :comments
  has_many :favorites
  has_many :favorite_pastquestions, through: :favorites, source: :pastquestion
end
