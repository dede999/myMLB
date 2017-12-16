class ScheduleController < ApplicationController
  def show
    i = 2
    @schedule = Array.new(28) {[]}
    @schedule.each do |sc|
      (Match.where(:week => i)).each do |m|
        sc << m
      end
      i += 1
    end
  end
end
