class StandingsController < ApplicationController
  def divisional
    divs = ["AL East", "AL Central", "AL West", "NL East", "NL Central", "NL West"]
    american = [[], [], []]
    national = [[], [], []]
    @times = [american, national]
    (divs.length).times do |dd|
      now = divs[dd].split(' ')
      p now
      @times[dd/3][dd%3] = ordena now
    end
    @times
  end

  def wc
    equipes = divisional
    @al = [[], []]
    @nl = [[], []]
    p equipes
  end

  private
  def ordena agora
    equipe = Team.where(:div => agora[1], :league => agora[0]).sort_by do |tt|
      tt.loss
      tt.win
      tt.a_avg
      tt.h_avg
      tt.pf
      tt.diff
      tt.avg
    end
    return equipe
  end
end
