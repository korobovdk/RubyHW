p "Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными."
p "[1,2,3,4,5,6].select(&:even?)"
p "[1,2,3,4,5,6].select(&:odd?)"
p [1,2,3,4,5,6].select(&:even?)
p [1,2,3,4,5,6].select(&:odd?)
p  '--------------'
p "Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными."
p "[1,2,3,4,5,6].select(&:odd?)"
p "[1,2,3,4,5,6].select(&:even?)"
p [1,2,3,4,5,6].select(&:odd?)
p [1,2,3,4,5,6].select(&:even?)
p  '--------------'
p "Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]."
arr = [1,40,2,3,4,5,6]
p " arr.find_index { |el| arr.first < el && el < arr.last } || [] "
p  arr.find_index { |el| arr.first < el && el < arr.last } || [] 
p '--------------'
p "Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]."
arr = [1,40,2,3,4,5,6]
p "arr.index(arr.select { |el| arr.first < el && el < arr.last }.last) || []"
p arr.index(arr.select { |el| arr.first < el && el < arr.last }.last) || []
p '--------------'
p "Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять."
p arr = [1,2,3,4,5,6,7]
p "arr.map {|e| e!=arr[0] && e!=arr[-1] && e.even? ? e+arr[0] : e}"
p arr.map {|e| e!=arr[0] && e!=arr[-1] && e.even? ? e+arr[0] : e}
p '--------------'
p "Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять."
p arr = [1,2,3,4,5,6,7]
p "arr.map {|e| e!=arr[0] && e!=arr[-1] && e.even? ? e+arr[-1] : e}"
p arr.map {|e| e!=arr[0] && e!=arr[-1] && e.even? ? e+arr[-1] : e}
p '--------------'
p "Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять."
p arr = [1,2,3,4,5,6,7]
p "arr.map {|e| e!=arr[0] && e!=arr[-1] && e.odd? ? e+arr[-1] : e}"
p arr.map {|e| e!=arr[0] && e!=arr[-1] && e.odd? ? e+arr[-1] : e}
p '--------------'
p "Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять."
p arr = [1,2,3,4,5,6,7]
p arr.map {|e| e!=arr[0] && e!=arr[-1] && e.odd? ? e+arr[0] : e}
p '--------------'
p "Дан целочисленный массив. Заменить все положительные элементы на значение минимального."
p arr = [1,-2,3,-4,5,6]
p "arr.map {|e| e>0 ? e=arr.min : e}"
p arr.map {|e| e>0 ? e=arr.min : e}
p '--------------'
p "Дан целочисленный массив. Заменить все положительные элементы на значение максимального."
p arr = [1,-2,3,-4,5,6]
p arr.map {|e| e>0 ? e=arr.max : e}
p "arr.map {|e| e>0 ? e=arr.max : e}"
p '--------------'
p "Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального."
p arr = [1,-2,3,-4,5,6]
p "arr.map {|e| e<0 ? e=arr.min : e}"
p arr.map {|e| e<0 ? e=arr.min : e}
p '--------------'
p "Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального."
p arr = [1,-2,3,-4,5,6]
p "arr.map {|e| e<0 ? e=arr.max : e}"
p arr.map {|e| e<0 ? e=arr.max : e}
p '--------------'
p "Дан целочисленный массив. Найти количество его локальных максимумов."
p arr = [2, 18, 1, 3, 19, 11, 16, 7, 15, 5, 12, 6, 4, 8, 9, 13, 14, 10, 20, 17]
p "arr.select {|e| e!= arr[0] && e!= arr[-1] && e>arr[arr.index(e)-1] && e>arr[arr.index(e)+1]}.size"
p arr.select {|e| e!= arr[0] && e!= arr[-1] && e>arr[arr.index(e)-1] && e>arr[arr.index(e)+1]}.size
p '--------------'
p "Дан целочисленный массив. Найти количество его локальных минимумов."
p arr = [2, 18, 1, 3, 19, 11, 16, 7, 15, 5, 12, 6, 4, 8, 9, 13, 14, 10, 20, 17]
p "arr.select {|e| e!= arr[0] && e!= arr[-1] && e<arr[arr.index(e)-1] && e<arr[arr.index(e)+1]}.size"
p arr.select {|e| e!= arr[0] && e!= arr[-1] && e<arr[arr.index(e)-1] && e<arr[arr.index(e)+1]}.size
p '--------------'
p "Дан целочисленный массив. Найти максимальный из его локальных максимумов."
p arr = [2, 18, 1, 3, 19, 11, 16, 7, 15, 5, 12, 6, 4, 8, 9, 13, 14, 10, 20, 17]
p "arr.select {|e| e!= arr[0] && e!= arr[-1] && e>arr[arr.index(e)-1] && e>arr[arr.index(e)+1]}.max"
p arr.select {|e| e!= arr[0] && e!= arr[-1] && e>arr[arr.index(e)-1] && e>arr[arr.index(e)+1]}.max
p '--------------'
p "Дан целочисленный массив. Найти минимальный из его локальных минимумов.	"
p arr = [2, 18, 1, 3, 19, 11, 16, 7, 15, 5, 12, 6, 4, 8, 9, 13, 14, 10, 20, 17]
p "arr.select {|e| e!= arr[0] && e!= arr[-1] && e<arr[arr.index(e)-1] && e<arr[arr.index(e)+1]}.min"
p arr.select {|e| e!= arr[0] && e!= arr[-1] && e<arr[arr.index(e)-1] && e<arr[arr.index(e)+1]}.min
p '--------------'
p "Дан целочисленный массив. Упорядочить его по возрастанию."
p arr = [1,-2,3,-4,5,6,-7]
p "arr.sort()" 
p arr.sort() 
p '--------------'
p "Дан целочисленный массив. Упорядочить его по убыванию."
p arr = [1,-2,3,-4,5,6,-7]
p "arr.sort_by{|e| -e}"  
p arr.sort_by{|e| -e}  
p '--------------'
p "Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность"
p arr = [1,-2,3,-4,5,6,-7]
p "arr.sort_by{|e| -e}.map{|e| arr.index(e)}"
p arr.sort_by{|e| -e}.map{|e| arr.index(e)}
p '--------------'
p "Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность."
p arr = [1,-2,3,-4,5,6,-7]
p "arr.sort().map{|e| arr.index(e)}"
p arr.sort().map{|e| arr.index(e)}
p '--------------'
p "Дан целочисленный массив. Найти индекс минимального элемента."
p arr = [1,-2,3,-4,5,6,-7]
p "arr.index(arr.min)"
p arr.index(arr.min)
p '--------------'
p "Дан целочисленный массив. Найти индекс максимального элемента."
p arr = [1,-2,3,-4,5,6,-7]
p "arr.index(arr.max)"
p arr.index(arr.max)
p '--------------'
p "Дан целочисленный массив. Найти индекс первого минимального элемента."
p arr = [1,-2,3,-4,5,6,-7]
puts "arr.each do |e| 
     if e<arr[arr.index(e)+1]
         p arr.index(e)
    break 
    end   
 end"
 arr.each do |e| 
     if e<arr[arr.index(e)+1]
         p arr.index(e)
    break 
    end   
 end
p '--------------'
p "Дан целочисленный массив. Найти индекс первого максимального элемента."
p arr = [1,-2,3,-4,5,6,-7]
puts "arr.each do |e| 
     if e>arr[arr.index(e)+1]
         p arr.index(e)
    break 
    end   
 end"
 arr.each do |e| 
     if e>arr[arr.index(e)+1]
         p arr.index(e)
    break 
    end   
 end
p '--------------'
p "Дан целочисленный массив. Найти индекс последнего минимального элемента."
p arr = [1,-2,3,-4,5,6,-7]
puts " arr.reverse.each do |e| 
     if e<arr[arr.index(e)-1]
         p arr.index(e)
    break 
    end   
 end"
 arr.reverse.each do |e| 
     if e<arr[arr.index(e)-1]
         p arr.index(e)
    break 
    end   
 end
p '--------------'
p "Дан целочисленный массив. Найти индекс последнего максимального элемента."
p arr = [1,-2,3,-4,5,6,-7]
puts " arr.reverse.each do |e| 
     if e>arr[arr.index(e)-1]
         p arr.index(e)
    break 
    end   
 end"
 arr.reverse.each do |e| 
     if e>arr[arr.index(e)-1]
         p arr.index(e)
    break 
    end   
 end
p '--------------'

p "Дан целочисленный массив. Найти минимальный четный элемент."
p arr = [1,2,3,4,5,6]
p "arr.select(&:even?).min()"
p arr.select(&:even?).min()
p '--------------'

p "Дан целочисленный массив. Найти минимальный нечетный элемент."
p arr = [1,2,3,4,5,6]
p "arr.select(&:odd?).min()"
p arr.select(&:odd?).min()
p '--------------'

p "Дан целочисленный массив. Найти максимальный четный элемент."
p arr = [1,2,3,4,5,6]
p "arr.select(&:even?).max()"
p arr.select(&:even?).max()
p '--------------'

p "Дан целочисленный массив. Найти максимальный нечетный элемент."
p arr = [1,2,3,4,5,6]
p "arr.select(&:odd?).max()"
p arr.select(&:odd?).max()
p '--------------'

p "Дан целочисленный массив. Найти минимальный положительный элемент."
p arr = [1,-2,-3,4,5,-6]
p "arr.select { |e| e >= 0}.max()"
p arr.select { |e| e >= 0}.max() 
p '--------------'

p "Дан целочисленный массив. Найти максимальный отрицательный элемент."
p arr = [1,-2,-3,4,5,-6]
p "arr.select { |e| e <= 0}.max()"
p arr.select { |e| e <= 0}.max() 
p '--------------'

p "Дан целочисленный массив. Найти два наибольших элемента."
p arr = [1,-2,-3,4,5,-6]
p "arr.max(2)"
p arr.max(2)
p '--------------'

p "Дан целочисленный массив. Найти два наименьших элемента."
p arr = [1,-2,-3,4,5,-6]
p "arr.min(2)"
p arr.min(2)
p '--------------'

p "Дан целочисленный массив. Найти все четные элементы."
p arr = [1,2,3,4,5,6]
p "arr.select(&:even?)" 
p arr.select(&:even?) 
p '--------------'

p "Дан целочисленный массив. Найти количество четных элементов."
p arr = [1,2,3,4,5,6]
p "arr.select(&:even?).size" 
p arr.select(&:even?).size 
p '--------------'

p "Дан целочисленный массив. Найти все нечетные элементы."
p arr = [1,2,3,4,5,6]
p "arr.select(&:odd?)" 
p arr.select(&:odd?) 
p '--------------'

p "Дан целочисленный массив. Найти количество нечетных элементов."
p arr = [1,2,3,4,5,6]
p "arr.select(&:odd?).size" 
p arr.select(&:odd?).size 
p '--------------'

p "Дан целочисленный массив и число К. Если существует элемент, меньший К, то вывести true; в противном случае вывести false."
p arr = [1,2,3,4,5,6]
p K = 5
i = 0
puts "arr.each { |e| e < K ? i += 1 : i}
if i > 0 
  p true
else 
  p false
end"
arr.each { |e| e < K ? i += 1 : i}
if i > 0 
  p true
else 
  p false
end
p '--------------'

p "Дан целочисленный массив и число К. Если существует элемент, больший К, то вывести true; в противном случае вывести false."
p arr = [1,2,3,4,5,6]
p K = 6
i = 0
puts "arr.each { |e| e > K ? i += 1 : i}
if i > 0 
  p true
else 
  p false
end"
arr.each { |e| e > K ? i += 1 : i}
if i > 0 
  p true
else 
  p false
end
p '--------------'

p "Дан целочисленный массив и число К. Если все элементы массива меньше К, то вывести true; в противном случае вывести false."
p arr = [1,2,3,4,5,6]
p K = 7
i = 0
puts "arr.each { |e| e < K ? i += 1 : i}
if i == arr.size 
  p true
else 
  p false
end"
arr.each { |e| e < K ? i += 1 : i}
if i == arr.size  
  p true
else 
  p false
end
p '--------------'

p "Дан целочисленный массив и число К. Если все элементы массива больше К, то вывести true; в противном случае вывести false."
p arr = [1,2,3,4,5,6]
p K = -1
i = 0
puts "arr.each { |e| e > K ? i += 1 : i}
if i == arr.size 
  p true
else 
  p false
end"
arr.each { |e| e > K ? i += 1 : i}
if i == arr.size  
  p true
else 
  p false
end
p '--------------'

p "Дан целочисленный массив и число К. Вывести количество элементов, меньших К."
p arr = [1,2,3,4,5,6]
p K = 4
p "arr.select { |e| e<K}.size"
p arr.select { |e| e<K}.size
p '--------------'

p "Дан целочисленный массив и число К. Вывести количество элементов, меньших К."
p arr = [1,2,3,4,5,6]
p K = 3
p "arr.index(arr.select { |e| e>K}.first)"
p arr.index(arr.select { |e| e>K}.first)
p '--------------'

p "Дан целочисленный массив и число К. Вывести индекс последнего элемента, меньшего К."
p arr = [1,2,3,4,5,6]
p K = 3
p "arr.index(arr.select { |e| e<K}.last)"
p arr.index(arr.select { |e| e<K}.last)
p '--------------'

p "Дан целочисленный массив. Возвести в квадрат отрицательные элементы и в третью степень - положительные. Нулевые элементы - не изменять."
p arr = [1,2,-3, 4,-5,6]
p "arr.map { |e| e < 0 ? e**2 : e**3}"
p arr.map { |e| e < 0 ? e**2 : e**3}
p '--------------'

p "Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные."
p arr = [1, 2, 3, 4, 5, 6]
puts "arr.select(&:even?)
arr.select(&:odd?)"
p arr.select(&:even?)
p arr.select(&:odd?)
p '--------------'

p "Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные."
p arr = [1, 2, 3, 4, 5, 6]
puts "arr.select(&:odd?)
arr.select(&:even?)"
p arr.select(&:odd?)
p arr.select(&:even?)
p '--------------'

p "Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным."
p arr = [4, 3, 1, 2, 3, 4, 5, 6, 2, 4, 5]
p "arr.index(arr.min)"
p arr.index(arr.min)
p '--------------'

p "Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным."
p arr = [4, 3, 1, 2, 3, 4, 5, 6, 2, 4, 5]
p "arr.index(arr.max)"
p arr.index(arr.max)
p '--------------'





