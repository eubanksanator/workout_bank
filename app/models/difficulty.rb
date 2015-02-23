class Difficulty < ActiveRecord::Base
  validates :level, :presence => true

  has_many :exercises
  has_many :muscle_groups, :through => :exercises
end
