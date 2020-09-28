class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def not_a_triangle
    if @side1 > (@side2 + @side3) || @side2 > (@side1 + @side3) || @side3 > (@side1 + @side2)
    return true
    end
    return false 
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
end
    
    
      # check_type() {
      # if ((this.side1 > (this.side2 + this.side3)) || (this.side2 > (this.side1 + this.side3)) || (this.side3 > (this.side1 + this.side2))) {
      #   return "not a triangle"
      #   elsif ((this.side1 !== this.side2) && ((this.side1 !== this.side3)) && ((this.side2 !== this.side3))) {
      #   return "scalene triangle"
      #   elsif ((this.side1 === this.side2) && (this.side1 === this.side3)) 
      #   return "equilateral triangle"
      #   else 
      #   return "isosceles triangle"
      
       
  