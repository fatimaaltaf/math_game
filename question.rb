class Question

  attr_reader :num1, :num2

  def initialize()
    @num1 = rand(0..20)
    @num2 = rand(0..20)
  end

  def ask(player)
    puts "#{player.name}: What is #{num1} plus #{num2}?"
    print "> "
  end

  def answer_check(answer)
    return self.num1 + self.num2 == answer
  end
end