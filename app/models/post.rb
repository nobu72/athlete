class Post < ApplicationRecord
 

  validates :text, :video, :presence => true

  mount_uploader :video, VideoUploader

end

