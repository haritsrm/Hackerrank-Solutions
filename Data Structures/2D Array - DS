#!/bin/ruby

require 'json'
require 'stringio'

# Complete the hourglassSum function below.
def hourglassSum(arr)
    sum = -1000
    for i in 0..3
        for k in 0..3
            temp = arr[i][k] + arr[i][k+1] + arr[i][k+2] + arr[i+1][k+1] + arr[i+2][k] + arr[i+2][k+1] + arr[i+2][k+2]
            sum = [temp, sum].max
        end
    end
    return sum

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr = Array.new(6)

6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = hourglassSum arr

fptr.write result
fptr.write "\n"

fptr.close()
