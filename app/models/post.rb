class Post < ApplicationRecord
  validates :image, :user_id, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
end
