# 配列から取り出す
# a = [1,2,3,4,5]
# p a[1,3]
# p a[a.length-1]

# concatメソッド：破壊的メソッドなので注意！
# a=[1]
# b=[2,3]
# a.concat(b)

# 配列の和集合
# a=[1,2,3]
# b=[3,4,5]

# p a|b
# p a&b

# Setクラス
# require 'set'

# a=Set.new([1,2,3])
# b=Set.new([3,4,5])
# p a|b
# p a-b
# p a&b

# 多重代入
# e,*f = 100,200,300
# p e
# p f

# pushメソッド
# a = []
# b = [2,3]
# p a.push(*b)

# *スプレッド構文
# def greeting(*names)
#   "#{names.join('と')}、こんにちは!"
# end

# p greeting('田中さん')
# p greeting('田中さん', '鈴木さん')
# p greeting('田中さん', '鈴木さん', '佐藤さん')

# with_indexメソッド
# fruits = %w[apple orange banana]
# fruits.each_with_index { |fruit, i| puts "#{i}:#{fruit}"}
# fruits.map.with_index { |fruit, i| "#{i}:#{fruit}" }
# fruits.each.with_index(1) { |fruit, i| puts "#{i}:#{fruit}"}

# ブロック
# dimentions = [
#   [10, 20],
#   [30, 40],
#   [50, 60]
# ]

# areas = []

# dimentions.each do |length, width|
#   areas << length * width
# end
# p areas

# ↓これだとめんどいんだよな〜
# dimentions.each_with_index do |dimension, i|
#   length = dimension[0]
#   width = dimension[1]
#   puts "length:#{length},width:#{width},i:#{i}"
# end

# ↓ならこうしよう！
# dimentions.each_with_index do |(length,width),i|
# 	puts "length:#{length},width:#{width},i:#{i}"
# end

# ファイルの書き込み
# File.open("./sample.txt","w") do |file|
# 	file.puts("1行目の修正です。")
# 	file.puts("2行目のテキストです。")
# 	file.puts("3行目のテキストです。")
# end

# mapとjoinの組み合わせ
# names = ['田中','鈴木','佐藤']
# p names.map{|name|"#{name}さん"}.join('と')

# 繰り返し処理=========================================================================#
# times
# sum = 0
# 5.times{|n|sum+=n}
# p sum

# uptoとdownto
# a=[]
# 10.upto(14){|n|a<<n}
# p a

# step
# a=[]
# 1.step(10,2){|n|a<<n}
# p a

# while
# a=[]
# while a.size < 5
# 	a << 1
# end
# p a

# for
# numbers = [1,2,3,4]
# sum = 0
# for n in numbers
# 	sum+=n
# end
# p sum

# break
# numbers = [1, 2, 3, 4, 5].shuffle
# numbers.each do |n|
#   puts n
#   break if n == 5
# end

# throwとcatch
fruits = %w[apple melon orange]
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit},#{n}"
      throw :done if fruit == 'orange' && n == 3
    end
  end
end

# ==================================================================================#
