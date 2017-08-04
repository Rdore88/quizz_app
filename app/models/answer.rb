class Answer < ApplicationRecord
  belongs_to :question
  has_many :results
  validates :answer, presence: true
end
