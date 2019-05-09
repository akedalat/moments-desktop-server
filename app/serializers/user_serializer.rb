class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :avatar
  has_many :posts
  has_many :comments
  has_many :likes
  has_many :followers
  has_many :following
  has_many :active_relationships
  has_many :passive_relationships
end
