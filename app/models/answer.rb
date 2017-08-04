class Answer < ApplicationRecord
  belongs_to :question
  has_may :results
  validates :answer, presence: true
  validtes :correct, 
end
