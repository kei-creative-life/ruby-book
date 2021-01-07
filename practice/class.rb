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
# class Product
#   DEFAULT_PRICE = 0
#   attr_reader :name, :price

#   def initialize(name, price = DEFAULT_PRICE)
#     @name = name
#     @price = price
#   end
# end

# product = Product.new('A free movie')
# p product.price

# ======================================================================
# あるメソッド内で他のメソッドを呼び出すケース
# class User
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def hello
#     "Hello,I am #{name}."
#   end

#   def hi
#     "Hi,I am #{self.name}."
#   end

#   def my_name
#     "My name is #{@name}."
#   end
# end

# user = User.new('Alice')
# p user.hello
# p user.hi
# p user.my_name

# ======================================================================
# セッターメソッドを呼び出す場合は、必ずselfが必要！！
# class User
#   attr_accessor :name

#   def initialize(name)
#     @name = name
# 	end

# 	def rename_to_bob
# 		name = 'Bob'
# 	end

# 	def rename_to_carol
# 		self.name = 'Carol'
# 	end

# 	def rename_to_dave
# 		@name = 'Dave'
# 	end
# end

# user = User.new('Alice')
# user.rename_to_bob
# p user.name

# user.rename_to_carol
# p user.name

# user.rename_to_dave
# p user.name

# ======================================================================
# クラスメソッドをインスタンスメソッドで呼び出す
# class Product
# 	attr_reader :name,:price

# 	def initialize(name,price)
# 		@name = name
# 		@price = price
# 	end

# 	def self.format_price(price)
# 		"#{price}円"
# 	end

# 	def to_s
# 		formatted_price = Product.format_price(price)
# 		"name:#{name},price:#{formatted_price}"
# 	end
# end

# product = Product.new('great movie',1000)
# p product.to_s

# ======================================================================
# クラスの継承
# class User
# end

# user = User.new
# p user.to_s
# p user.nil?
# p User.superclass
# # p user.methods.sort
# p user.class
# p user.instance_of?(User)
# p user.is_a?(User)

# class Product
#   attr_reader :name, :price

#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
# end

# product = Product.new('A great movie', 1000)
# p product.name
# p product.price

# class DVD < Product
#   attr_reader :running_time

#   def initialize(name, price, running_time)
#     super(name, price)
#     @running_time = running_time
#   end
# end

# dvd = DVD.new('A great movie', 1000, 120)
# p dvd.name
# p dvd.price
# p dvd.running_time

# ======================================================================
# メソッドのオーバーライド
# class Product
# 	attr_reader :name, :price
# 	def initialize(name,price)
# 		@name = name
# 		@price = price
# 	end

# 	def to_s
# 		"name:#{name},price:#{price}"
# 	end
# end

# class DVD < Product
# 	attr_reader :running_time
# 	def initialize(name,price,running_time)
# 		super(name,price)
# 		@running_time = running_time
# 	end

# 	def to_s
# 		"#{super},running_time:#{running_time}"
# 	end
# end

# product = Product.new('Greate movie.',1000)
# p product.to_s

# dvd = DVD.new('Awesome film',3000,120)
# p dvd.to_s

# ======================================================================
# クラスメソッドの継承

# class Foo
# 	def self.hello
# 		'hello'
# 	end
# end

# class Bar < Foo
# end

# p Foo.hello
# p Bar.hello

# ======================================================================
# private
# class User
# 	private
# 	def hello
# 		'hello'
# 	end
# end
# user = User.new
# p user.hello

# クラスメソッドはprivateにならない。
# class User
# 	private
# 	def self.hello
# 		'Hello'
# 	end
# end

# p User.hello

# ======================================================================
# protected：インスタンスメソッド内であれば呼び出せる
# class User
# 	attr_reader :name

# 	def initialize(name,weight)
# 		@name = name
# 		@weight = weight
# 	end


# 	def heavier_than?(other_user)
# 		other_user.weight < @weight
# 	end

# 	protected
# 	def weight
# 		@weight
# 	end
# end

# alice = User.new('Alice',50)
# bob = User.new('Bob',60)

# p alice.heavier_than?(bob)

# ======================================================================
# 定数の再代入
# class Product
# 	DEFAULT_PRICE = 0
# 	DEFAULT_PRICE = 1000
# end

# p Product::DEFAULT_PRICE
# Product::DEFAULT_PRICE = 3000

# p Product::DEFAULT_PRICE

# ======================================================================
#クラス変数

# class Product
# 	@@name = 'Product'

# 	def self.name
# 		@@name
# 	end

# 	def initialize(name)
# 		@@name = name
# 	end

# 	def name
# 		@@name
# 	end
# end

# class DVD < Product
# 	@@name = 'DVD'
# 	def self.name
# 		@@name
# 	end

# 	def upcase_name
# 		@@name.upcase
# 	end
# end

# p Product.name
# p DVD.name

# product = Product.new('Great movie')
# p product.name

# ======================================================================
class User
	def initialize(name)
		@name = name
	end

	def hello
		"Hello,#{@name}!"
	end
end

user = User.new('Alice')
p user.hello

class User
	def hello
		"#{@name}さん、こんにちは！"
	end
end

# モンキーパッチ発動！
p user.hello