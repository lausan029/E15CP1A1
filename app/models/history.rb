class History < ApplicationRecord
  mount_uploader :picture, ImageUploader
  belongs_to :user

  def to_s
  	title
  end
end
