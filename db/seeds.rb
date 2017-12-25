# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
Team db
vec = IO.readlines "db/teams.txt"
vec.each do |eq|
  a = eq.split ","
  t = Team.create(:name => a[0], :abr => a[1].delete(' '), :win => 0, :loss => 0, :aw => 0, :al => 0, :hw => 0, :hl => 0, :pf => 0, :pa => 0, :division => a[2], :pennants => a[3], :championships => a[4], :playoffs => a[5], :league => a[6], div: a[7])
  p t.name
end
=end

vec = IO.readlines "db/schedule.txt"
week = 1
vec.each do |eq|
  a = eq.split " "
  if a[0] == "AL" or a[0] == "NL"
    p a
    home = Team.find_by_abr(a[4])
    away = Team.find_by_abr(a[5])
    p "#{away.name} @ #{home.name} -- week #{week}"
    Match.create(:home => home.name, :away => away.name, :week => week)
  else
    week += 1
  end
  #Team.create(:name => a[0], :abr => a[1], :win => 0, :loss => 0, :avg => 0.000, :aw => 0, :al => 0, :hw => 0, :hl => 0, :pf => 0, :pa => 0, :diff => 0, :division => a[2], :pennants => a[3], :championships => a[4], :playoffs => a[5])
end