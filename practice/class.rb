# まずはクラス使わないパターン
# ハッシュからキーを取り出す方法を完全に理解していないことに気付きました！！

# ユーザー情報を登録
# users = []
# users << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
# users << { first_name: 'Bob', last_name: 'Python', age: 30 }

# 氏名を作成するメソッド
# def full_name(user)
#   "#{user[:first_name]} #{user[:last_name]}"
# end

# ユーザーのデータを表示する
# users.each do |user|
#   puts "氏名：#{user[:first_name]}#{user[:last_name]},年齢：#{user[:age]}"
# end

# ======================================================================
# # クラスを使うパターン
# # Userクラスを定義する
# class User
#   attr_reader :first_name, :last_name, :age

#   def initialize(first_name, last_name, age)
#     @first_name = first_name
#     @last_name = last_name
#     @age = age
#   end

#   # 氏名を作成するメソッド
#   def full_name
#     "#{first_name} #{last_name}"
#   end
# end

# # ユーザーのデータを作成
# users = []
# users << User.new('Alice', 'Ruby', 20)
# users << User.new('Bob', 'Python', 30)

# # ユーザーのデータを表示する
# users.each do |user|
#   puts "氏名：#{user.full_name},年齢：#{user.age}"
# end

# ======================================================================
# # initializeは初期値の設定
# class User
# 	def initialize(name)
# 		# インスタンス変数
#     @name = name
#   end

#   # インスタンスメソッド
#   def hello
#     puts "hello,#{@name}さん"
#   end
# end

# user = User.new('Alice')
# # インスタンスメソッドはインスタンスに対して使えるよ
# puts user.hello

# ======================================================================
# # アクセサメソッドに関して：インスタンス変数の値を変えるやつ
# class User
#   attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end

# user = User.new('Alice', 20)
# user.name = 'Bob'
# p user.name
# p user.age
# ======================================================================

# クラスメソッドに関して
# class User
#   def initialize(name)
#     @name = name
#   end

#   def self.create_users(names)
#     names.map do |name|
#       User.new(name)
#     end
#   end

#   def hello
#     "Hello,I am #{@name}."
#   end
# end

# names = %w[Alice Bob Carol]
# users = User.create_users(names)
# users.each do |user|
#   puts user.hello
# end

# 定数:必ず大文字！
class Product
  DEFAULT_PRICE = 0
  attr_reader :name, :price

  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end

product = Product.new('A free movie')
p product.price
