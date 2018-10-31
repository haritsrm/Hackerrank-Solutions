#!/bin/ruby

require 'json'
require 'stringio'

# Complete the arrayManipulation function below.
def arrayManipulation(n, queries)
    diffArr =[]
    for i in 0..n
        diffArr.push(0)
    end
    for j in queries
        diffArr[j[0]-1] += j[2]
        diffArr[j[1]] -= j[2]
    end
    max = 0
    sum = 0
    for k in diffArr
        sum += k
        max = [sum, max].max
    end
    return max

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nm = gets.rstrip.split

n = nm[0].to_i

m = nm[1].to_i

queries = Array.new(m)

m.times do |i|
    queries[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = arrayManipulation n, queries

fptr.write result
fptr.write "\n"

fptr.close()
