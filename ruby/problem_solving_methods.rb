#Release 0

array = [22, 21, 13, 1995]

def index_finder(array, x)
 index = 0
 until index == array.length
   if x == array[index]
     return index
   end
 index += 1
 end
end

p index_finder(array, 13)

#Release 1

def fibonacci(t)
fib_array = [0,1]
 index = 2
 until index == t
    fib_array.push(fib_array[index-1] + fib_array[index-2])
 index += 1
 end
 return fib_array
end

p fibonacci(22)

#Release 2
#Create an array of integers
#start the loop at index 0
#for every index, check if the index is greater than or less than
#the index following it
#if the index is less than the index following it, then it must swap positions
#if the index is greater than the index following it, it must go to the next index
#(index is constantly changing, probably noted by index +=1)

array_2 = [22, 26, 11, 13]

def bubble_sort (array_2)
    g = array_2.length

    loop do
        swapped = false
        (g-1).times do |index|
        if array_2 [index] > array_2 [index+1]
            array_2[index], array_2 [index+1] = array_2 [index+1], array_2 [index]
            swapped=true
        end
    end
    break if not swapped
    end

    return array_2
end


p bubble_sort (array_2)
