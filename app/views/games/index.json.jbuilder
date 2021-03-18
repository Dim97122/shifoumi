json.nb_total_games Game.count
json.games @games do |game|
  json.moves game.moves do |move|
    json.name move.player.name
    json.move move.title
    json.created_at move.created_at
    json.updated_at move.updated_at
  end
  json.result game.result
end
