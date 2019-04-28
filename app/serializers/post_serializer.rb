class PostSerializer < ActiveModel::Serializer
  attributes :id, :caption, :image, :created_at, :updated_at
  belongs_to :user
  has_many :comments
end
