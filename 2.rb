# 要件
# 	•	numbers（整数配列）に対して次を行う関数群を実装：
# 	1.	uniq_sorted(numbers)：重複を除去して昇順ソートして返す。
# 	2.	even_squared(numbers)：偶数のみを取り出し、それぞれ2乗した配列を返す。
# 	3.	sum_of_top_k(numbers, k)：大きい順に並べて上位k個の合計を返す（kが配列長より大きければ全要素合計）。

# 期待挙動（例）
# 	•	uniq_sorted([3,1,2,2,3]) #=> [1,2,3]
# 	•	even_squared([1,2,3,4]) #=> [4,16]
# 	•	sum_of_top_k([5,1,9,9,2], 3) #=> 23（9+9+5）

# 評価観点
# 	•	Array#map, #select, #sum, #sort, #uniqなどの適切な活用。
# 	•	破壊的操作を避け、関数は元配列を変えない。

numbers = [3,1,2,2,3]

def uniq_sorted(numbers)
    numbers.uniq.sort
end    


# puts uniq_sorted(numbers)

def even_squared(numbers)
    numbers.select(&:even?).map { |number| number ** 2}
end

def sum_of_top_k(numbers , k) 
    # numbers.sort.reverse.take(k).sum
    numbers.sort_by(&:itself).last(k).sum
end

puts even_squared(numbers)
puts sum_of_top_k(numbers, 3)