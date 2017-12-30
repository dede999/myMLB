module StandingsHelper
  def avg number
    if number == 1000
      "1.000"
    else
      ".%03d" % number
    end
  end

  def diff time
    time.pf - time.pa
  end

end
