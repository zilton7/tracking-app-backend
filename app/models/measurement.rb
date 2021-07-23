class Measurement < ApplicationRecord
  has_many :measures

  validates :name, presence: true, length: { minimum: 3, maximum: 24 }
  validates :image, presence: true
end
