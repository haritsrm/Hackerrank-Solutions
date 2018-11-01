#!/bin/ruby

require 'json'
require 'stringio'



nd = gets.rstrip.split

n = nd[0].to_i

d = nd[1].to_i

a = gets.rstrip.split(' ').map(&:to_i)

temp = []
for k in 0..n-1
    temp.push(0)
end
idx = d % n

for i in 0..n-1
    temp[i] = a[(idx+i)%n]
end

for j in temp
    print("#{j} ")
end
