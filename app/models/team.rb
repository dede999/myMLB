class Team < ApplicationRecord
  validates! :avg, presence: true
  validates! :h_avg, presence: true
  validates! :a_avg, presence: true
  validates! :diff, presence: true
end
