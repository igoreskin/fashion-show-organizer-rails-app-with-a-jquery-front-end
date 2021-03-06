class Design < ApplicationRecord

  belongs_to :fashion_show, required: false
  belongs_to :designer, class_name: "User"
  has_many :comments

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :style, presence: true
  validates :fashion, presence: true

end
