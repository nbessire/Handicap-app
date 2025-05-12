class Round < ApplicationRecord
  belongs_to :course
  belongs_to :user

  def to_par
    strokes - course.par
  end
end
