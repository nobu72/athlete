class Post < ApplicationRecord
  validates :text, :video, :presence => true
  has_many :comments
  belongs_to :user
  mount_uploader :video, VideoUploader

end

