# 正規表現例①
# text = '私の誕生日は1992年6月16日です。'

# if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text) =~ text
# 	puts "#{year}/#{month}/#{day}"
# else
# 	puts '特にありません'
# end

# 正規表現例②
# array = '123 456 789'.scan(/\d+/)
# puts array

# 正規表現例③
# text = '郵便番号は123-4567です。'
# puts text[/(?<front>\d{3})-(?<back>\d{4})/,:back]

# 正規表現④
# text = '郵便番号は123-4567です'
# text.slice!(/\d{3}-\d{4}/)
# puts text

# 正規表現⑤ splitを使うパターン
# text = '123,456-789'
# puts text.split(',')
# puts text.split(/,|-/)

# 正規表現⑥ gsubを使うパターン
# text = '123,456-789'
# puts text.gsub(',', ':')
# puts text.gsub(/,|-/, ':')

# 正規表現⑦ case文を使うパターン
# text = '03-1234-5678'

# case text
# when /^\d{3}-\d{4}$/
#   puts '郵便番号です'
# when %r{^\d{4}/d{1,2}/d{1,2}}
#   puts '日付です'
# when /^\d+-\d+-\d+$/
#   puts '電話番号です'
# end

# 正規表現⑧ $を使うパターン
text = '私の誕生日は1992 年6 月16 日です。'

text =~ /(\d+) 年(\d+) 月(\d+) 日/
puts $~
puts $&
puts Regexp.last_match(1)
puts Regexp.last_match(2)
puts Regexp.last_match(3)
