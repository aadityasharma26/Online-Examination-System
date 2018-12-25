class Course < ApplicationRecord
  has_many :subcourses
  belongs_to :admin
  belongs_to :user
  validates :course, presence: true
end
