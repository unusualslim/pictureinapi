class Board < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend FriendlyId
  friendly_id :name, use: :slugged

  whitelist = ['image/png', 'image/jpeg', 'image/gif', 'video/mp4', 'application/pdf', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'video/x-matroska' ]
 
  validates :image, presence: true, blob: { content_type: whitelist}

# Blacklist:
#   video/x-msvideo  # AVI
#   video/x-flv  # FLV

  
  def should_generate_new_friendly_id?
    slug.blank?  || name_changed?
  end


end
