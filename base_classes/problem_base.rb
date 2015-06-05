class ProblemBase
  def solve
  end

  def loop_with_index
    index = 0
    loop do
      yield index
      index +=1
    end
  end

  def is_an_integer?(num)
    num % 1 == 0
  end
end
