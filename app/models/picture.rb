class Picture < ApplicationRecord
  has_many :copies

  has_one_attached :image
end
