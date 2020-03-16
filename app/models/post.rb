class Post < ApplicationRecord
  validates :text, :video, :presence => true
  has_many :comments

  mount_uploader :video, VideoUploader

end

