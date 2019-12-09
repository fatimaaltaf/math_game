class Game
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    start
  end

  def start()
    q = Question.new
    gets.chomp
  end 
end