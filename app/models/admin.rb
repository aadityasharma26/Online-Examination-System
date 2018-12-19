class Admin < ApplicationRecord
  belongs_to :user
  has_many :examinees
  has_many :shared_folders
  has_many :shared_questions
  has_one :setting
  has_and_belongs_to_many :subject
  has_many :category
  has_many :subcategory, through: :category
  validates :name, presence: true
  validates :number, numericality: { only_integer: true}
  validates :email, uniqueness: true, on: :account_setup
  validates :password, confirmation: { case_sensitive: false}, length: { in: 6..20}
  validates :address, length: {maximum: 500,
    too_short: "%{count} characters is the maximum not allowed"}

end
