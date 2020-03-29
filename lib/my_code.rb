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

def reduce(array, *starting)
    if starting[0]
      value = starting[0]
      count = 0
      else
      value = array[0]
      count = 1
    end

    while count < array.count do
      value =  yield(value,array[count])
      count+=1
    end
    value
end
#source_array = [1,2,3]
#starting_point = 100
#reduce(source_array, starting_point){|memo, n| memo + n}

#source_array = [1, 2, true, "razmatazz"]
#reduce(source_array) do |memo, n|
#  memo && n
#end
