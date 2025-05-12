class User < ApplicationRecord
  has_many :rounds

  def average_handicap
    return nil if rounds.empty?

    #sort handicap estimates from lowest to highest
    sorted_handicaps = rounds.map(&:to_par).sort

    included = [(sorted_handicaps.size * 0.4).ceil, 1].max

    #only include the top 40% of rounds
    best_rounds = sorted_handicaps.first(included)
    (best_rounds.sum.to_f / best_rounds.size).round(2)

  end
end
