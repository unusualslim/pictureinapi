class Vboard < ApplicationRecord
  has_one_attached :video
  extend FriendlyId
  friendly_id :name, use: :slugged
end
