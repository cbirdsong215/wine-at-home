class Pairing < ApplicationRecord
  belongs_to :tasting

  validates :name, presence: true
  validates :tasting_id, presence: true
end
