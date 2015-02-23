class Exercise < ActiveRecord::Base
  validates :name, :reps, :sets, :presence => true, :uniqueness => {:scope => :difficulty}
  validates :muscle_group, :difficulty, :presence => true

  belongs_to :muscle_groups
  belongs_to :difficulties
end
