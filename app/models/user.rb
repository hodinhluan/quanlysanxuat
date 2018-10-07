class User < ApplicationRecord
  has_and_belongs_to_many :groups

  validates :name, presence: true, length: {maximum: 50}, uniqueness: {case_sensitive: false}
  validates :email, presence: true, length: {maximum: 50}
  validates :password, presence: true
  validates :password_confirmation, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
