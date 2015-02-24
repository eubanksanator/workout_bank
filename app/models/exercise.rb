class Exercise < ActiveRecord::Base
  validates :reps, :sets, :presence => true
  validates :name, :presence => true, :uniqueness => { :scope => :difficulty_id}
  # validates :muscle_groups, :presence => true
  # validates :difficulties, :presence => true

  belongs_to :muscle_group
  belongs_to :difficulty
end
