text = <<TEXT
I love Ruby.
Python is a great language.
Java and JavaScript are different.
TEXT

p text.scan(/[A-Z][A-Za-z]+/)

text2 = <<TEXT
私の郵便番号は1234567です。
僕の住所は6770056 兵庫県西脇市坂波町1234だよ。
TEXT

p text2.gsub(/(\d{3})(\d{4})/, '\1-\2')

text3 = "私の誕生日は、2021年7月27日です"
m = /(\d+)年(\d+)月(\d+)日/.match(text3)
p m[1]
p m[2]
p m[3]

n = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text3)
p n[:year]
p n[:month]
p n[:day]

text4 = "123,456-789"
hash = {','=>':', '-'=>'/'}
p text4.gsub(/,|-/, hash)