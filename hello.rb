# def animal_sound(animal) {
#     if animal == "cat"
#         "meow"
#     elsif animal == "dog"
#         "woof"
#     else
#         "???"
#     end
# }

# puts animal_sound("cat")
# ハッシュ操作
# profile = {"name" => "John", "age" => 30, "city" => "New York"}
# profile.merge!({"gender" => "male"})
# profile.merge!({"name" => "Jane", "age" => 25, "city" => "Los Angeles"})
# profile.delete("age")
# profile.each do |key, value|
#     puts "#{key}: #{value}"
# end
# profile.has_key?("name")
# profile.has_value?("John")

# # 配列操作
# numbers = [1, 2, 3, 4, 5]
# numbers.each do | number |
#     puts number
# end

# # times操作
# 5.times do |i|
#     puts "#{i}: Hello, World!"
# end

# # upto操作
# count = 3
# count.upto(5) do |i|
#     puts "#{i}: Hello, World!"
# end

# # downto操作
# count = 5
# count.downto(3) do |i|
#     puts "#{i}: Hello, World!"
# end

# # step操作
# start = 3
# finish = 10
# step = 2
# start.step(finish , step) do |i|
#     puts "#{i}: Hello, World!"
# end

# numbers = [1, 2, 3, 4, 5]
# numbers.each do |number|
#     next if number.even?
#     puts number
# end

# # map
# numbees = [1, 2, 3, 4, 5]
# new_numbers = numbees.map do |number|
#     number * 2
# end
# puts new_numbers

# # クラス操作
# class Car
#     def Hello
#         puts "Hello, World!"
#     end
# end

# car = Car.new
# car.Hello

# # クラス操作2
# class Car
#     attr_accessor :name
#     def initialize(name)
#         @name = name
#     end
#     def Hello
#         puts "Hello, #{@name}!"
#     end
#     # def name
#     #     @name
#     # end
#     # def name=(name)
#     #     @name = name
#     # end
# end

# car = Car.new("John")
# car.Hello

# # クラス操作3：アクセサメソッド
# class Car
#     RESION = "USA"
#     # クラス変数
#     @@count = 0
#     def initialize(name)
#         @name = name
#         @@count += 1
#     end
#     def hello 
#         puts "Hello, #{@name}!"
#     end

#     # クラスメソッドを定義
#     def self.info
#         puts "Car count: #{@@count}"
#         puts "Car region: #{RESION}"
#     end
# end

# car = Car.new("John")
# car.hello

# car2 = Car.new("Jane")
# car2.hello

# Car.info

#　クラス定数
# class Car
#     RESION = "Japan"
#     @@count = 0
#     def initialize(name)
#         @name = name
#         @@count += 1
#     end

#     def hello
#         puts "Hello! I am #{@name}. #{@@count} instances created."
#     end

#     def self.info
#         puts "#{@@count} instances created."
#         puts "Car region: #{RESION}"
#     end
# end

# car_nakamura = Car.new("Nakamura")
# Car.info

# car_yamada = Car.new("Yamada")
# Car.info

# car_suzuki = Car.new("Suzuki")
# Car.info

# car_takahashi = Car.new("Takahashi")
# Car.info


# クラスの継承
# class User
#     def initialize(name)
#         @name = name
#     end
#     def hello
#         puts "Hello, #{@name}!"
#     end
# end

# class AdminUser < User
# end

# ryuusuke = User.new("Ryuusuke")
# ryuusuke.hello

# admin_ryusuke = AdminUser.new("Ryuusuke")
# admin_ryusuke.hello

#  オーバーライド
# class User
#     def initialize(name)
#         @name = name
#     end
#     def hello
#         puts "Hello, #{@name}!"
#     end
# end

# class AdminUser < User
#     def hello
#         puts "Hello, #{@name}! You are an admin."
#     end
# end

# # ryuusuke = User.new("Ryuusuke")
# # ryuusuke.hello

# admin_ryusuke = AdminUser.new("Ryuusuke")
# admin_ryusuke.hello


# # モジュール
# module Driver
#     def self.run
#         puts "Driving..."
#     end
#     def self.stop
#         puts "Stopping..."
#     end
# end

# Driver.run
# Driver.stop

#　　例外処理
puts '年齢を入力してください'
age = gets.to_i

begin 
    raise '年齢が18歳未満です' if age < 18
    puts '成人です'
rescue => e
    puts "エラーが発生しました: #{e.message}"
end