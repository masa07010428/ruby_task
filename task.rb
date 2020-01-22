# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names << "斎藤"
  # names.each do |name|
    # puts name
  p names
end

def q2
  array1 = %w(dog cat fish)
  array2 = %w(bird bat tiger)

  # 以下に回答を記載
  p array1 + array2
end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  puts numbers.count(3)
end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  # sports.delete(nil)
  # p sports
  sports.compact!
  p sports
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  p array1.empty?
  p array2.empty?
end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  numbers2 = numbers1.map {|i| i * 10}
  p numbers2
end 

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  p array.map! {|s| s.to_i}
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載

  
  p programming_languages.map! {|language| language.capitalize}

  upper_case_programming_languages = programming_languages.map! {|language| language.upcase}
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) do |name, i|
    puts "会員No.#{i} #{name}さん"
  end
end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  # foods.each {|food|
  #   if food.include?("うに")
  #     puts "#{food}は、好物です"
  #   else
  #     puts "#{food}は、まぁまぁ好きです"
  #   end
  # }
  foods.each do |food|
    if food.include?("うに")
      puts "#{food}は、好物です"
    else
      puts "#{food}は、まぁまぁ好きです"
    end
  end
end


def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  sports2 = sports.flatten.uniq

  puts "ユーザーの趣味一覧"
  sports2.each.with_index(1) {|sport,i| 
    puts "No.#{i} #{sport}"  
  }
end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  puts data[:user][:name]
end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  # user_data[:age] = 32
  # user_data[:address] = "沖縄"
  # puts user_data
  user_data = user_data.merge(update_data)
  puts user_data
end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  p data.keys
end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  # if data1.keys.include?(:age)
  #   puts "OK"
  # else
  #   puts "NG"  
  # end

  # if data2.keys.include?(:age)
  #   puts "OK"
  # else
  #   puts "NG"  
  # end
  puts data1.keys.include?(:age) ? "OK" : "NG"
  puts data2.keys.include?(:age) ? "OK" : "NG"
end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}です。"
  end
end

class UserQ17
  # 以下に回答を記載
  
  # 修正前
  # def initialize(name:, age:, gender:, admin:)
  #   @name = name
  #   @age = age
  #   @gender = gender
  #   @admin = admin
  
  # 修正後
  def initialize(profile)
    @name = profile[:name]
    @age = profile[:age]
    @gender = profile[:gender]
    @admin = profile[:admin]
  end

  # 修正前
  # def info
  #   puts "名前 : #{@name}"
  #   puts "年齢 : #{@age}"
  #   puts "性別 : #{@gender}"
  #   puts "管理者権限 : #{@admin == true ? "有り" : "無し"}"
  # end

  # 修正後
  def info
    puts <<~E0S
    "名前 : #{@name}"
    "年齢 : #{@age}"
    "性別 : #{@gender}"
    "管理者権限 : #{@admin == true ? "有り" : "無し"}"
    E0S
  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男", admin: true)
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男", admin: false)

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載
  def initialize(profile)
    @name = profile[:name]
    @age = profile[:age]
  end

  def introduce
    if @age < 20
      puts "はいさいまいど〜、#{@name}です！！！"
    else
      puts "こんにちは、#{@name}と申します。宜しくお願いいたします。"
    end
  end

end

def q18_
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10) 

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい

  # def initialize(name)
  def initialize(name:)
    # @name = name.values
    @name = name
  end
  
  # def name
  #   @name
  # end
  attr_reader :name
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載
  
  def initialize(profile)
    @name = profile[:name]
    @age = profile[:age]
  end

  # def name
  #   @name
  # end

  # def age
  #   @age
  # end
  attr_reader :name, :age

end

class Zoo
  # 以下に回答を記載
  def initialize(zoo)
    @infant = zoo[:entry_fee][:infant]
    @children = zoo[:entry_fee][:children]
    @adult = zoo[:entry_fee][:adult]
    @senior = zoo[:entry_fee][:senior]
  end

  def info_entry_fee(user)
    # if user.age >= 65 && user.age <= 120
    #   puts "#{user.name}さんの入場料金は#{@senior}円です。"
    # elsif user.age >= 13
    #   puts "#{user.name}さんの入場料金は#{@adult}円です。" 
    # elsif user.age >= 6
    #   puts "#{user.name}さんの入場料金は#{@children}円です。" 
    # elsif user.age >= 0
    #   puts "#{user.name}さんの入場料金は#{@infant}円です。" 
    # end
    fee = 
    case user.age
    when 0..5
      @infant
    when 6..12
      @children
    when 13..64
      @adult
    when 65..120
      @senior
    end
    puts "#{user.name}さんの入場料は#{fee}円です。"
  end
end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end