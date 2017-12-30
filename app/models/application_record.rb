class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def simulate match
    h = Team.find_by_name(match.home)
    a = Team.find_by_name(match.away)
    home = 0
    away = 0
    while home == away
      home += Random.rand(0..8)
      away += Random.rand(0..8)
    end
    h.increment!(:pf, home)
    h.increment!(:pa, away)
    a.increment!(:pf, away)
    a.increment!(:pa, home)
    if home > away # hw, al
      h.increment!(:hw)
      h.increment!(:win)
      a.increment!(:al)
      a.increment!(:loss)
    else # hl, aw
      a.increment!(:aw)
      a.increment!(:win)
      h.increment!(:hl)
      h.increment!(:loss)
    end
    h.save!
    a.save!
    match.h_score = home
    match.a_score = away
    match.save!
  end
end
