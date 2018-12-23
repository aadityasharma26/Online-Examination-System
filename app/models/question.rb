class Question < ApplicationRecord
  has_many :exam, dependent: :destroy
  has_many :answer, dependent: :destroy

  belongs_to :subject
  belongs_to :question_type

  validates :question_type, presence: true
  validates :question, presence: true
  validates :description, presence: true
  validates :answer, presence: true

end
