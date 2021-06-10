class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end 
  
  def kind
    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0 || @side_one + @side_two <= @side_three 
      begin 
       raise TriangleError
      resuce TriangleError => error 
        puts error.message
      end 
    elsif @side_one != @side_two && @side_two != @side_three && @side_one != @side_three
      :scalene
    elsif @side_one == @side_two && @side_two == @side_three && @side_one == @side_three
      :equilateral
    else 
      :isosceles
  end 
  
  
  class TriangleError < StandardError
    def error 
      ""
    end 
  end 
  
end
