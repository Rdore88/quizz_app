class User < ApplicationRecord
  has_many :quizzes
  has_many :results
  has_many :answers, through: :results
  has_many :quizes, through: :results
  validates :admin, defaults: false
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :name, presence: true
end
