class Triangle

  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2 
    @side3 = side3
  end 

  def kind 
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 
      raise TriangleError
    elsif @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3 
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else 
      :scalene
    end 
  end 

  class TriangleError < StandardError
    def message 
       "Your triangle is invalid. The sum of the lengths of any two sides should exceed the length of the third side."
    end 
  end
end


# class Triangle

#   attr_accessor sides

#   def initialize (side_one, side_two, side_three)
#     # @side_one = side_one
#     # @side_two = side_two
#     # @side_three = side_three 
#     @sides = [side_one, side_two, side_three].sort
#   end
    
#   def kind
#     @sides <= 0 
#       raise TriangleError
#     # elsif @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
#     #   raise TriangleError
#     # elsif @side_one = @side_two && @side_one = @side_three && @side_one = @side_three
#     #   :equilateral
#     # else @side_one == @side_two || @side_one == @side_three || @side_one == @side_three
#     #   :isosceles
#     # else !all.equal
#     #   :scalene
#     # end 
#   end  

#     def validate_triangle(side)
#       if @sides.any?{|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2])
#       raise TriangleError
#       end
#     end

#   class TriangleError < StandardError
#     def message
#       "Your triangle is invalid. The sum of the lengths of any two sides should exceed the length of the third side."
#     end
   
#   end 
# end 


# def triangle(a, b, c)
#   sides = [a, b, c].sort
#   raise TriangleError, "Invalid side #{sides[0]}" unless sides[0] > 0
#   raise TriangleError, "Impossible triangle" if sides[0] + sides[1] <= sides[2]
#   return [:scalene, :isosceles, :equilateral][ 3 - sides.uniq.size ]
# end


# option 1:
# def triangle(a, b, c)
#   t = Triangle.new(a, b, c)
#   return t.type
# end

# class Triangle
#   def initialize(a, b, c)
#     @sides = [a, b, c].sort
#     guard_against_invalid_lengths
#   end

#   def kind
#     case @sides.uniq.size
#     when 1 then :equilateral
#     when 2 then :isosceles
#     else :scalene
#     end
#   end

#   private
#   def guard_against_invalid_lengths
#     if @sides.any? { |x| x <= 0 }
#       raise TriangleError, "Sides must be greater than 0"
#     end

#     if @sides[0] + @sides[1] <= @sides[2]
#       raise TriangleError, "Not valid triangle lengths"    
#     end
#   end
# end





