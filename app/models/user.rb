class User < ApplicationRecord
  has_many :quizzes
  has_many :results
  has_many :answers, through: :results
  has_many :quizes, through: :results
  before_save :default_values

  def default_values
    self.admin = false
  end
end
