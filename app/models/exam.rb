class Exam < ApplicationRecord
  has_many :examinees
  has_many :questions
  has_many :result
  belongs_to :examinee
  belongs_to :question
  belongs_to :subject
end
