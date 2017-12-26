module MatchesHelper

  def get_score
    h, a = 0, 0
    while h == a do
      h += Random.rand 0..8
      a += Random.rand 0..8
    end
    return h, a
  end

end
