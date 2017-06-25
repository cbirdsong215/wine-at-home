class Tasting < ApplicationRecord
  belongs_to :user
  has_many :wines


  validates :name, presence: true
end
