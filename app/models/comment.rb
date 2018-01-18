class Comment < ApplicationRecord

  belongs_to :designer, class_name: "User"
  belongs_to :design

  validates :content, presence: true

end
