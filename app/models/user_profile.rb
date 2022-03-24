class UserProfile < ApplicationRecord
  has_person_name
  has_one_attached :picture
  has_many :posts

  def picture_endpoint
    Rails.application.routes.url_helpers.rails_blob_path(picture, only_path: true)
  end
end
