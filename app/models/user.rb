class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_groups
  has_many :study_groups, through: "user_groups"
  has_many :user_courses
  has_many :courses, inverse_of: "users", through: "user_courses"
  has_many :user_hobbies
  has_many :hobbies, inverse_of: "users", through: "user_hobbies"

  accepts_nested_attributes_for :hobbies
  accepts_nested_attributes_for :courses 


  validates :name, presence: true
end
