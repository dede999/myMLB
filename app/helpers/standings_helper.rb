module StandingsHelper
  def avg favor, total
    if total == 0
      0.0
    else
      favor.to_f/total
    end
  end

  def diff time
    time.pf - time.pa
  end

  def ordena agora
    equipe = Team.where(:div => agora[1], :league => agora[0]).sort_by do |tt|
      avg tt.win, tt.win + tt.loss
      avg tt.hw, tt.hw + tt.hl
      avg tt.aw, tt.aw + tt.al
      diff tt
      tt.win
      tt.name
    end
    equipe
  end
end
