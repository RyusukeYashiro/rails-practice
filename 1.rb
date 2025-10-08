# Q1. 変数・定数と文字列操作の基礎

# 要件
# 	•	定数 APP_NAME に "Ruby Basics" を定義。
# 	•	変数 first_name, last_name を受け取り、"YASHIRO, Ryusuke" のように
# 「LASTNAME_UPPER, Firstname_Capitalize」形式のフルネームを返すメソッド format_name(first_name, last_name) を実装。
# 	•	余分な空白は除去（前後のスペース、連続スペースを1つに）。
# 	•	ハイフン・アポストロフィーを含む名前にも対応（例: "jean-luc" → "Jean-Luc"）。

# 期待挙動（例）
# 	•	format_name("  ryusuke ", "  yashiro ") #=> "YASHIRO, Ryusuke"
# 	•	format_name("jean-luc", "picard") #=> "PICARD, Jean-Luc"

# 評価観点
# 	•	定数・変数の使い分け、破壊的/非破壊的メソッドの選択、メソッドの単一責任。

APP_NAME = "Ruby Basics"

def remove_extra_spaces(name) {
    name.strip.squeeze(" ")
}

def format_name(first_name, last_name)
    lastname_upper = last_name.remove_extra_spaces.upcase
    firstname_capitalize = first_name.remove_extra_spaces.split('-').map(&:capitalize).join('-')
    "#{lastname_upper}, #{firstname_capitalize}"
end

puts APP_NAME
puts format_name("  ryusuke ", "  yashiro ")
puts format_name("jean-luc", "picard")
