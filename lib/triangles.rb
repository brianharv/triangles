class Triangle
  include Enumerable
  attr_accessor(:side1, :side2, :side3)
  # attr_reader(:triangle_type)

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    # @triangle_type = return_triangle_type()
  end

  def return_triangle_type
    if not_a_triangle()
      return "these side lengths don't make a triangle"
    elsif equilateral()
        return "These side lengths make an equilateral triangle"
    elsif check_scalene()
        return "These side lengths make a scalene triangle"
    else check_isosceles()
        return "These side lengths make an isosceles triangle"
    end
  end  

  

  def equilateral
    if @side1 === @side2 && @side2 === @side3 && @side1 === @side3 
      return true
    end
      return false
  end

  def check_scalene
    if (@side1 != @side2) && (@side1 != @side3) && (@side2 != @side3)
      return true
    end
    return false
  end

  def check_isosceles
    if @side1 === @side2 || @side2 === @side3 || @side3 === @side1
      return true
    end
    return false
  end    
    
  def not_a_triangle
    if @side1 > (@side2 + @side3) || @side2 > (@side1 + @side3) || @side3 > (@side1 + @side2)
      return true
    end
      return false 
  end
end

  