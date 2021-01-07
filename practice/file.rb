# # FileとDirクラスは組込ライブラリなので、requireは必要なし
# p File.exist?('./sample.txt')
# p Dir.exist?('./test')

# # 行数を数える
# File.open('../lib/gate.rb', 'r') do |f|
#   puts f.readlines.count
# end

# # ファイルに書き込む
# File.open('./sample.txt', 'w') do |f|
#   f.puts 'Hello World'
# end

# 特定のファイルを作成
# require "fileutils"
# FileUtils.touch('./sample_1.txt')

# # ファイルのリネーム:fileutilsを使う
# require 'fileutils'
# FileUtils.mv('./sample.rb', './sample_rename.rb')

# 日付を含んだファイルを作成
# require 'fileutils'
# t = Time.now
# filename = "./back/sample1_#{t.strftime("%Y%m%d")}.txt"
# FileUtils.cp("sample1.txt",filename)

# # ファイルのパス：pathnameを使う
# require 'pathname'

# lib = Pathname.new('../lib')
# if lib.file?
# 	puts 'ファイルです。'
# elsif lib.directory?
# 	puts 'ディレクトリです。'
# else
# 	puts '分かりません'
# end

# p lib.join('ticket.txt').to_s

# fileutilsを使う場合
# require 'fileutils'
# FileUtils.mv('../before_move.txt','../after_move/before_move.txt')

# # 特定のディレクトリ配下のフォルダをコピー:Dir.glob
# require "fileutils"
# Dir.glob('*.*').each do |filename|
# 	FileUtils.cp(filename,"back/" + filename)
# end

# 同じフォルダに複数ファイルを作成
# require "fileutils"
# (2..10).each do |i|
# 	FileUtils.cp("sample1.txt","./after_move/sample#{i.to_s}.txt")
# end

# 特定のファイルを一つ削除
# require 'fileutils'
# FileUtils.rm('sample_1.txt')

# 特定のファイルを全て削除
# require "fileutils"
# Dir.glob('*.*').each do |filename|
# 	FileUtils.rm(filename)
# end


# 特定のファイルの読み書き編========================================================
# # csvファイルを開く
# require 'csv'

# CSV.open('./sample.csv','w') do |csv|
# 	csv << ['Name','Email','Age']
# 	csv << ['Alice','alice@example.com',20]
# end

# # CSVファイルの中身を開き、コンソールに表示
# require 'csv'

# sample_csv = CSV.generate do |csv|
# 	csv << ["Name","Email","Age"]
# 	csv << ["Mary","mary@gmail.com","28"]
# end

# p sample_csv

# # csvファイルの読み込み：ヘッダー行があるパターン
# require 'csv'
# # File.write("users.csv",<<CSV)
# # id,name,age
# # 1,山田,20
# # 2,鈴木,23
# # 3,伊藤,19
# # 4,本田,32
# # CSV

# # table = CSV.read("users.csv",headers:true)
# # table.each do |row|
# # 	id = row[:id]
# # 	name = row[:name]
# # 	age = row[:age]
# # end

# # csvファイルの読み込み：ヘッダー行がないパターン
# array = CSV.read("users2.csv")
# array.each do |row|
# 	id = row[0]
# 	name = row[1]
# 	age = row[2]
# end

# ダブルクオテーションで囲まれたcsvを読み込む
# require 'csv'
# table = CSV.read("./users3.csv")
# table.each do |row|
# 	p "id:#{row[0]}"
# 	p "name:#{row[1]}"
# 	p "age:#{row[2]}"
# 	p "address:#{row[3]}"
# end

# foreachで読み込む
require 'csv'
File.write("users4.csv",<<CSV)
id,name,age,address
1,山田,20,TOKYO
2,鈴木,18,NAGOYA
3,伊藤,19,OSAKA
CSV

CSV.foreach("users.csv",headers: true) do |row|
	p id = row["id"]
	p name = row["name"]
end
