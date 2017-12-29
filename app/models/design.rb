class Design < ApplicationRecord

  belongs_to :fashion_show
  belongs_to :designer, class_name: "User"

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :style, presence: true
  validates :fashion, presence: true
  # validates :designer_id, presence: true

end
