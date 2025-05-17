class Round < ApplicationRecord
  belongs_to :course
  belongs_to :user
  has_many_attached :photos

  def to_par
    strokes - course.par
  end
end
