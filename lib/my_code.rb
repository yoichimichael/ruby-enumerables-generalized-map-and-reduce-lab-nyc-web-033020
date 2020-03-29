# Your Code Here
def map(array)
  new_array = []
  i = 0
  while i < array.length do
    new_array << yield(array[i])
    i += 1
  end
  new_array
end

def reduce(array, starting_point = 0)
  total = starting_point
  i = 0
  while i < array.length do
    if array[i].class = Integer
      total += yield(0 , array[i])
    elsif 
    i += 1
  end
  total
end
