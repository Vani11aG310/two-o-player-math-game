class Game
  
  def initialize( player1, player2 )
    @player1 = player1
    @player2 = player2
    @current_player = @player1
    @question = nil
    @answer = nil
    @user_answer = nil
    @winner = nil
  end

  def new_question
    number1 = rand(20)
    number2 = rand(20)
    @question = "What is #{number1} + #{number2}?"
    @answer = number1 + number2
  end

  def set_input(input)
    @user_answer = input
  end

  def check_answer
    if @user_answer == @answer
      puts "#{@current_player.name}: YES! You are correct!"
      puts "P1: #{@player1.player_health}/3 vs P2 #{@player2.player_health}/3"
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
    else
      puts "#{@current_player.name}: Seriously? No!"
      @current_player.reducePlayerHealth
      puts "P1: #{@player1.player_health}/3 vs P2 #{@player2.player_health}/3"
      if @player1.player_health == 0
        @winner = @player2
      elsif @player2.player_health == 0
        @winner = @player1
      end
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
    end
  end

  def question
    @question
  end

  def current_player
    @current_player
  end

  def winner
    @winner
  end
end