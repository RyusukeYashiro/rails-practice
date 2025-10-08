# Q3. ハッシュ操作＋条件分岐：ユーザー属性の正規化

# 要件
# 	•	ユーザーデータ（ハッシュ）の配列を受け取り、正規化して返す関数 normalize_users(users) を実装。
# 各ユーザーは {name: "Taro", age: 20, role: "admin"} のようなハッシュで渡される。
# 	•	正規化ルール：
# 	•	:name は String で、前後の空白除去、"姓 名" 形式（半角スペース1つ）に整列。
# nil や空なら "Unknown User"。
# 	•	:age は整数に変換し、nil/不正なら 0。
# 	•	:role は "admin" | "member" | "guest" のいずれか。該当なし/nil は "guest"。
# 	•	年齢に応じて :adult（true/false）キーを付与（20歳以上を成人とする）。

# 期待挙動（例）
# 	•	normalize_users([{name: "  YASHIRO  Ryusuke ", age: "22", role: "owner"}])
# ⇒ [{name: "YASHIRO Ryusuke", age: 22, role: "guest", adult: true}]

# 評価観点
# 	•	シンボル/文字列キーの扱い、Hash#transform_keys, #merge, ガード節、条件分岐の明確さ。

users = [{name: "  YASHIRO  Ryusuke ", age: "22", role: "owner"}]

def normalize_users(users)
  users.map do |user|
    parts = user[:name].strip.squeeze(" ").split(" ")
    name  = "#{parts[0].upcase} #{parts[1].capitalize}" rescue user[:name].strip
    age   = user[:age].to_i
    role  = user[:role] || "guest"
    adult = age >= 20
    {name: name, age: age, role: role, adult: adult}
  end
end

p normalize_users(users)