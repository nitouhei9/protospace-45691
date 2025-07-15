class Comment < ApplicationRecord
  # バリデーション
  validates :content, presence: true

  # アソシエーション
  belongs_to :prototype
  belongs_to :user
end
