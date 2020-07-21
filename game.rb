
require "./player"
require "./question"
class Game

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @current_player = @player1
    @game_over = false

  end

  def start

    while (!@game_over) do
      question = Question.new
      puts "Player #{@current_player.id}: #{question.question}"
      answer= gets.chomp.to_i

      # check if the player answer is correct
      if (answer == question.answer)
        puts "Player #{@current_player.id}: Yes! You are correct."
      else
        @current_player.decrease_score
        puts "Player #{@current_player.id} : No! You are wrong"
      end

      # check the players score and decide whether to continue or end the game
      if (@current_player.score == 0)
        @game_over = true

        if (@player1.score > 0) 
          puts "Player 1 with a score #{@player1.score}/3"
        else
          puts "Player 2 with a score #{@player2.score}/3"
        end
        puts "------Game Over------"
        puts "-----Good Bye-----"

      else 
        puts "P1:#{@player1.score}/3 vs P2:#{@player2.score}/3"
        puts "-----New Turn-----"

        if (@current_player.id == 1)
          @current_player = @player2
        else
          @current_player = @player1
        end

      end




    end




  end






end


g= Game.new

g.start

