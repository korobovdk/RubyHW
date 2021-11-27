arr = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
p "arr.size"
p arr.size
p "---------------------------"
p "arr.reverse"
p arr.reverse
p "---------------------------"
p "arr.max"
p arr.max
p "---------------------------"
p "arr.min"
p arr.min
p "---------------------------"
p "arr.sort"
p arr.sort 
p "---------------------------"
p "arr.sort.reverse"
p arr.sort.reverse 
p "---------------------------"
p "arr.select(&:even?)"
p arr.select(&:even?)
p "---------------------------"
p "arr.select{ |e| e % 3 == 0 }"
p arr.select{ |e| e % 3 == 0 }
p "---------------------------"
p "arr.uniq"
p arr.uniq
p "---------------------------"
p "arr.map{ |e| e.to_f/10}"
p arr.map{ |e| e.to_f/10}
p "---------------------------"
en = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
p "arr.map { |e| e <= 26 ? e = en[e] : e }" 
p arr.map { |e| e <= 26 ? e = en[e] : e } 
p "---------------------------"
"min = arr.min
max = arr.max
arr[arr.index(arr.min)] = max 
arr[arr.index(arr.max)] = min"
min = arr.min
max = arr.max
arr[arr.index(arr.min)] = max 
arr[arr.index(arr.max)] = min
p arr
p "---------------------------"
p "arr[0...arr.index(arr.min)]"
p arr[0...arr.index(arr.min)]
p "---------------------------"
"for e in 0...3 do
  p arr.delete(arr.min)
end"
for e in 0...3 do
  p arr.delete(arr.min)
end
p "---------------------------"