class FashionShow < ApplicationRecord

  has_many :designs
  has_many :designers, through: :designs, class_name: "User"

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :location, presence: true
  validates :venue, presence: true
  validates :design_ids, presence: true
  validates :designer_ids, presence: true

  def design=(design_attributes)
    design = Design.new(design_attributes)
    if design.save
      self.designs << design
    end 
  end



end
