def greeting(*names)
  "#{names.join('と')}、こんにちは！"
end

p greeting('tanaka')
p greeting('tanaka', 'suzuki')

dimentions = [
  [10, 20],
  [30, 40],
  [50, 60]
]
areas = []
dimentions.each do |dimention|
  length = dimention[0]
  width = dimention[1]
  areas << length * width
end
p areas

areas2 = []
dimentions.each do | length, width |
  areas2 << length * width
end
p areas2

dimentions.each_with_index do |(length, width), i|
  p "length: #{length}, width: #{width}, i: #{i}"
end

File.open("./sample.txt", "w") do |file|
  file.puts("1line.")
  file.puts("2line.")
end

names = ['tanaka', 'suzuki', 'sato']
san_names = names.map{|name| "#{name}さん"}
p san_names.join('と')

p names.map {|name| "#{name}さん"}.join('と')

num = [1,2,3,4,5]
num.each do |n|
  next if n.even?
  p n
end

foods = ['ピーマン', 'tomato', 'セロリ']
foods.each do |food|
  print "#{food}は好きですか"
  answer = ['yes', 'no'].sample
  p answer
  redo unless answer == 'yes'
end