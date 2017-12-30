class ScheduleController < ApplicationController
  def show
    i = 2
    j = 2
    @schedule = Array.new(28) {[]}
    @schedule.each do |sc|
      (Match.where(:week => i)).each do |m|
        sc << m unless m.happened
      end
      i += 1
    end
    @played = Array.new(28) {[]}
    @played.each do |sc|
      (Match.where(:week => j)).each do |m|
        sc << m if m.happened
      end
      j += 1
    end
  end
end
