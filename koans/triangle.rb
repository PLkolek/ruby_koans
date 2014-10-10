# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
    if(a<=0 or b<=0 or c<=0 or a+b<=c or b+c<=a or a+c<=b) 
        fail TriangleError;
    end
    if(a==b and b==c)
        :equilateral
    elsif(a!=b and b!=c and a!=c)
        :scalene
    else
        :isosceles
    end 
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
