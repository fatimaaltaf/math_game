class Player

  attr_accessor :life
  attr_reader :name

  def initialize(name)
    @name = name
    @life = 3
  end

  def life_count()
    self.life -= 1
  end

  def score
    return "#{self.life}/3"
  end
end 

