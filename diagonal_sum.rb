#diagonal_sum

# Find sum of top-left to bottom-right diagonals
# Description:

# Given a "square" array of subarrays, find the sum of values from the first value of the first array, the second value of the second array, the third value of the third array, and so on...

# Example 1:

# exampleArray = [[1, 0, 0, 0],
#                 [0, 1, 0, 0],
#                 [0, 0, 1, 0],
#                 [0, 0, 0, 1]]

# diagonalSum(exampleArray) # => 4
# Example 2:

# exampleArray = [[1, 0, 0, 0, 0],
#                 [0, 1, 0, 0, 0],
#                 [0, 0, 1, 0, 0],
#                 [0, 0, 0, 1, 0],
#                 [0, 0, 0, 0, 1]]

# diagonalSum(exampleArray) # => 5


def diagonalSum(matrix)
 # case Matrix[*matrix].column_size
  # when Matrix[*matrix].row_size
    x=0
    y=0
    p matrix.class
    while x<matrix.flatten.size do 
      y=y+matrix.flatten[x]
      x=x+matrix.size+1 
   #   print "x= #{x}, y = #{y}, "
   end
    y
end

