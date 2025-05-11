class Round < ApplicationRecord
  belongs_to :course
  belongs_to :user

  def handicap_estimate
    strokes - course.par
  end
end
