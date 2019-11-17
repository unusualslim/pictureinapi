class Board < ApplicationRecord
  has_one_attached :image
  extend FriendlyId
  friendly_id :name, use: :slugged
end
