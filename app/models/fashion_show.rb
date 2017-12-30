class FashionShow < ApplicationRecord

  has_many :designs
  has_many :designers, through: :designs, class_name: "User"

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :location, presence: true
  validates :venue, presence: true
  # validates :design_ids, presence: { message: "At least one design is required for the show"}

  def design=(design_attributes)
    design = Design.new(design_attributes)
    if design.save
      self.designs << design
      self.save
    end
  end

  def self.select_by_location(location)
    where(location: location)
  end

  def self.locations
    self.all.collect { |instance| instance.location }.uniq
  end



end
