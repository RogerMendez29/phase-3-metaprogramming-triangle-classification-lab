class Triangle
  # TRIANGLE_TYPES = [":equi"]
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      raise TriangleError
    elsif side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2
      raise TriangleError
    elsif
      @side1 = side1
      @side2 = side2
      @side3 = side3
    end

  end
  def kind
    if @side1 == @side2 && side2 == @side3
      :equilateral
    elsif @side1 == @side2 || side2 == @side3 || side3 == @side1
      :isosceles
    elsif @side1 != @side2 && side2 != @side3 && side3 && @side1
      :scalene
    
    end
    
  end
  class TriangleError < StandardError
    def message
      "Triangle is Invalid"
    end

  end
end
