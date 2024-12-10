require './player'
require './game'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

game = Game.new(player1, player2)

while player1.player_health > 0 and player2.player_health > 0

  puts "---NEW TURN---"

  game.new_question

  print "#{game.current_player.name}: #{game.question}"
  user_answer = gets.chomp.to_i

  game.set_input(user_answer)

  game.check_answer

end

puts "#{game.winner.name} wins with a score of #{game.winner.player_health}/3"
puts "----- GAME OVER -----"
puts "Good bye!"