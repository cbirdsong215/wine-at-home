class Tasting < ApplicationRecord
  belongs_to :user
  has_many :wines
  has_many :pairings

  validates :name, presence: true
end
