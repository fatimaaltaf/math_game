class Question

  attr_reader :answer, :question

  def initialize()
    @num1 = rand(0..20)
    @num2 = rand(0..20)
  end

  def integer_meth
    self.num1 = rand(0..20)
    self.num2 = rand(0..20)

  def question(player)
    @question = "What is #{@num1} plus #{@num2}?"
    puts ">"
  end

  def answer_check(answer)
    return self.num1 + self.@num2 == answer
  end

end