class DesignSerializer < ActiveModel::Serializer
  attributes :id, :name, :style, :fashion
  belongs_to :designer, class_name: "User"
end
