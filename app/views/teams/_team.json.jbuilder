json.extract! team, :id, :name, :abr, :win, :loss, :avg, :hw, :hl, :aw, :al, :pf, :pa, :diff, :division, :playoffs, :pennants, :championships, :created_at, :updated_at
json.url team_url(team, format: :json)
