# Q4. 繰り返し処理（each, times, range）でレポートを作る

# 要件
# 	•	1からnまでの整数について次を判定し、行ごとに文字列を出力する関数 fizzbuzz_report(n) を実装：
# 	•	3の倍数 → "Fizz"
# 	•	5の倍数 → "Buzz"
# 	•	3と5の公倍数 → "FizzBuzz"
# 	•	それ以外 → 数字そのもの
# 	•	さらに、各カテゴリの件数集計を最後にハッシュで返す：
# { fizz: X, buzz: Y, fizzbuzz: Z, number: W }
# 	•	実装上の制約：
# 	•	ループは times, each, 範囲（1..n）いずれか（もしくは複数）で書くこと。

# 期待挙動（例）
# 	•	標準出力（例）：
#     1
#     2
#     Fizz
#     4
#     Buzz
#     Fizz
#     7
#     8
#     Fizz
#     Buzz
#     11
#     Fizz
#     13
#     14
# ... 
# 返り値（例）：{ fizz: 27, buzz: 14, fizzbuzz: 6, number: 53 }（n=100のときなど）

# 評価観点
# ループの書き分け、条件分岐の重複回避、カウントの集計。

def fizzbuzz_repost(n)
    result = { fizz: 0, buzz: 0, fizzbuzz: 0, number: 0 }
    (1..n).each do |i|
        if i % 3 == 0 && i % 5 == 0
            result[:fizzbuzz] += 1
        elsif i % 3 == 0
            result[:fizz] += 1
        elsif i % 5 == 0
            result[:buzz] += 1
        else
            result[:number] += 1
        end
    end
    result
end

puts fizzbuzz_repost(100)