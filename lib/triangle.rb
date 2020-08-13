class Triangle
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 
  
  def kind 
    sides = [a,b,c].sort

  raise TriangleError if sides.first <= 0 || sides[2] >= sides[1] + sides[0]
  return :equilateral if sides.uniq.length  == 1
  return :isosceles if sides.uniq.length  == 2
  :scalene
end
  
  
  
end

class TriangleError < StandardError
end

# def triangle(a, b, c)
#   sides = [a,b,c].sort

#   raise TriangleError if sides.first <= 0 || sides[2] >= sides[1] + sides[0]
#   return :equilateral if sides.uniq.length  == 1
#   return :isosceles if sides.uniq.length  == 2
#   :scalene
# end


