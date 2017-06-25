class User < ApplicationRecord
  has_many :tastings
  has_many :wines
  

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on:[:create, :update], presence: true
  validates :admin, default: false

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
