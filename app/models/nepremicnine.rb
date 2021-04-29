class Nepremicnine < ApplicationRecord
    #mount_uploader :photo, PhotoUploader
    belongs_to :user

    scope :latest, -> { order created_at: :desc}
end
