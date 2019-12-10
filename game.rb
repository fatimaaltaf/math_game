require "./player"
require "./question"

class Game 
  attr_accessor :p1, :p2, :current_player, :game_over

  def initialize(p1_name, p2_name)
      @p1 = Player.new(p1_name)
      @p2 = Player.new(p2_name)
      @current_player = p1
      @game_over = false
  end

  def start
    while !self.game_over
      question = Question.new
      question.ask(current_player)
      answer = $stdin.gets.chomp.to_i
      if (!question.answer_check(answer))
        current_player === p1 ? p1.lose_life_count : p2.lose_life_count
        if p1.life == 0 || p2.life == 0
          self.game_over = true
        end
        message(false) 
      else
        message(true)
      end      
    end
  end

  def message(correct)
    puts correct ? "#{current_player.name}: Yes, you are correct!" : "#{current_player.name} No, you're wrong!"
    puts "#{p1.name}: #{p1.game_score} vs. #{p2.name}: #{p2.game_score}"
    if (game_over)
      puts current_player.name == p1.name ? "#{p2.name} wins with a score of #{p2.game_score}" : "#{p1.name} wins with a score of #{p1.game_score}"
      puts "----- GAME OVER -----"
      puts "Good bye!"
      exit(0)
    else
      puts "----- NEW TURN -----"
      next_player
  end
end

  def next_player
    if (current_player.name == p1.name)
      self.current_player = p2
    else 
      self.current_player = p1
  end
end

end
