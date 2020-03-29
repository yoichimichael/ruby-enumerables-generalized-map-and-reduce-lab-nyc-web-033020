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

    total = yield(array[i], true)

    i += 1
  end
  total
end

#source_array = [1,2,3]
#starting_point = 100
#reduce(source_array, starting_point){|memo, n| memo + n}

#source_array = [1, 2, true, "razmatazz"]
#reduce(source_array) do |memo, n|
#  memo && n
#end
