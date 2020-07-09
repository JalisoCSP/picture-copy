class Copy < ApplicationRecord
  belongs_to :picture

  has_one_attached :image

  validates :name, :image, presence: true
end
