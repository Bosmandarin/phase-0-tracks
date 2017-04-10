#Author: Tife Odumosu
#Unit 5.6: Solo Challenge


#Release 0
# Searching algortithm
def search_array(array, x)
 index = 0
 until index == array.length
   if x == array[index]
     return index
   end
 index += 1
 end
end

array = [10, 23, 42, 81]
p search_array(array, 42)


#Release 1
#Fibonacci Algorithm
def fibonacci(int)
  fib_array = [0, 1]
  until fib_array.length == int
  fib_array << fib_array[fib_array.length-1]  + fib_array[fib_array.length-2]
end
fib_array

end

fibonacci(100)

#Release 2
#Bubble Sort
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
