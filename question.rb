class Question

  attr_reader :answer, :question

  def initialize()
    @num1 = rand(0..20)
    @num2 = rand(0..20)
    @answer = @num1 + @num2
    @question = "What is #{@num1} plus #{@num2}?"
  end
end