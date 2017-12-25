class StandingsController < ApplicationController
  def divisional
    divs = ["AL East", "AL Central", "AL West", "NL East", "NL Central", "NL West"]
    american = []
    national = []
    @times = [american, national]
    (divs.length).times do |dd|
      now = divs[dd].split(' ')
    end
  end

  def wc
  end
end
