class MuscleGroup < ActiveRecord::Base
  validates :location, :presence => true

  has_many :exercises
  has_many :difficulties, :through => :exercises
end
