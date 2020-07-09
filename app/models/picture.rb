class Picture < ApplicationRecord
  has_many :copies

  has_one_attached :image

  validates :title, :image, presence: true
end
