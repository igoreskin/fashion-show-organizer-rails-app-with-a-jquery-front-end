class FashionShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :venue
  has_many :designers, through: :designs, class_name: "User"
end
