# Array-DS
def reverseArray(a)
    return a.reverse

end

# 2D - Array
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

# Array Left Rotation

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


# Sparse Arrays

def matchingStrings(strings, queries)
    count = []
    for o in 0..queries.length-1
        count.push(0)
    end
    for i in 0..queries.length-1
        for j in 0..strings.length-1
            if strings[j] == queries[i]
                count[i] += 1
            end
        end
    end
    return count

end
