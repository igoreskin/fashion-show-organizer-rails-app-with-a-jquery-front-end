class DesignSerializer < ActiveModel::Serializer
  attributes :id, :name, :style, :fashion, :designer_id
  belongs_to :designer, class_name: "User"
end
