# ハッシュとシンボル

currencies = {'japan'=>'yen', 'us'=>'dollar', 'india'=>'rupee'}
p currencies['japan']

currencies_hash = {:japan => 'yen', :us => 'dollar', :india => 'rupee'}
p currencies_hash[:japan]
currencies_hash[:italy] = 'euro'
p currencies_hash[:italy]

person = {
  name: 'alice',
  age: 20,
  friends:['bob', 'carol'],
  phones:{home:'1234-0000', mobile:'5678-00000'}
}
p person[:name]
p person[:friends]
p person[:phones]

# メソッドと引数のキーワード
def buy_burger(menu, drink: true, potato: true) 
  if drink
    p "drinkを購入"
  end

  if potato
    p "potatoを購入"
  end
end

buy_burger('cheese', drink:true, potato:false)
buy_burger('duble')