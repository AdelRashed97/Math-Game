class Question
  attr_reader :question , :answer
  def initialize
    @first = random_integer
    @second = random_integer
    @operator = random_operator
    @question = "What is #{@first} #{@operator} #{@second} ? "
    @answer = get_answer

  end

  def random_integer
    return rand(20) + 1
  end

  def random_operator
    operators = ["plus","minus","multiply"]
    selector = rand(2)
    return operators[selector]
  end

  def get_answer
    case @operator
    when "plus"
      return @first + @second
    when "minus"
      return @first - @second
    when "multiply"
      return @first * @second
    end
  end



  



end

