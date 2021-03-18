
json.moves @game.moves do |move|
  json.name move.player.name
  json.move move.title
end
json.result @game.result
