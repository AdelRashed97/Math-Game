class Question
  attr_reader :question , :reader
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
    operators = ["plus","minus","multiply","divided by"]
    selector = rand(3)
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
    when "divided by"
      return @first / @second
    end
  end



  



end

