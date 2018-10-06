class User < ApplicationRecord
  has_and_belongs_to_many :groups
  has_many :daily_reports
  accepts_nested_attributes_for :groups
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
