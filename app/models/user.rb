class User < ApplicationRecord
  has_many :rounds

  def average_handicap
    return nil if rounds.empty?

    total = rounds.map(&:handicap_estimate).sum
    (total.to_f / rounds.size).round(2)
  end
end
