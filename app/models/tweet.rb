class Tweet < ActiveRecord::Base
  mount_uploader :img_url, PhotoUploader
  belongs_to :user
end
