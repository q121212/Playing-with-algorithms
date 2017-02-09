#yield_to_the_block

# Complete the Compute method/function so that if a block is given it will run else it returns "Do not compute".

def compute
  if block_given? then
    yield
  else
    "Do not compute"
  end
end