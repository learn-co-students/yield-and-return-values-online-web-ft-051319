array = ["Tim", "Tom", "Jim"]

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end
hello(array) { |name| "Hi, #{name}" }

def hello_2(array)
  collection = []
  array.each {|person| collection << yield(person)}
end
hello_2(array) { |name| "Hi, #{name}" }

def hello_3(array)
  array.collect {|person| yield(person)}
end

hello_3(array) { |name| "Hi, #{name}" }
