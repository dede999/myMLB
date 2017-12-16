module MatchesHelper
  def avg favor, total
    if total == 0
      return 0.0
    else
      return favor.to_f/total
    end
  end
end
