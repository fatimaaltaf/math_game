require "./player";
require "./question";
class Game
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    start
  end

  def start()
    question = Question.question
    answer = $stdin.gets.chomp.to_i
    if (!Question.answer_check(answer)) 
      player.
  end 
end