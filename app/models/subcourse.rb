class Subcourse < ApplicationRecord
  has_many :qeustions
  has_many :exams
  has_many :subjects
  belongs_to :course
  validates :subcourse, prnceese: true
end
