class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :avatar
  has_many :posts
  has_many :comments
  has_many :followers
  has_many :following
end
