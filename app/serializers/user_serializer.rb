class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :designs, foreign_key: "designer_id"
  has_many :fashion_shows, through: :designs
end
