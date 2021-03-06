require('rspec')
require('triangles')

describe ('Triangle#not_a_triangle') do
  it('returns true when three sides to not create a triangle') do
  tc = Triangle.new(3, 3, 22)
    expect(tc.not_a_triangle()).to(eq(true))
  end
end

describe ('Triangle#equilateral') do
  it('checks to see if three sides create equilateral triangle') do
    tc = Triangle.new(4, 5, 6)
      expect(tc.equilateral()).to(eq(false))
  end
end

describe ('Triangle#equilateral') do
  it('checks to see if three sides create equilateral triangle') do
    tc = Triangle.new(4, 4, 4)
      expect(tc.equilateral()).to(eq(true))
  end
end  

describe ('Triangle#check_scalene') do
  it('checks to see if three sides create a scalene triangle') do
    tc = Triangle.new(4,5,7)
      expect(tc.check_scalene()).to(eq(true))
  end
end

describe ('Triangle#check_scalene') do
  it('checks to see if three sides create a scalene triangle') do
    tc = Triangle.new(4,4,4)
      expect(tc.check_scalene()).to(eq(false))
  end
end

describe ('Triangle#check_isosceles') do
  it('checks to see if three sides create a isosceles triangle') do
    tc = Triangle.new(4,2,4)
      expect(tc.check_isosceles()).to(eq(true))
  end
end

describe ('Triangle#check_isosceles') do
  it('checks to see if three sides create a isosceles triangle') do
    tc = Triangle.new(3,2,4)
      expect(tc.check_isosceles()).to(eq(false))
  end
end

describe ('Triangle#return_triangle_type') do
  it('checks to see the type of triangle') do
    tc = Triangle.new(4,4,4)
      expect(tc.return_triangle_type()).to(eq("These side lengths make an equilateral triangle"))
  end
end