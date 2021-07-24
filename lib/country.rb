def greeting(country)
  # countryがnilならメッセージを返してメソッドを抜ける
  country or return p 'countryを入力してください'
  if country == 'japan'
    p 'こんにちは'
  end
  unless country == 'japan'
    p 'hello'
  end
end
=begin 
greeting('japan')
greeting(nil)
greeting('US')
=end

def argument_attachment_greeting(country = 'japan')
  if country == 'japan'
    p 'こんにちは'
  else
    p 'hello'
  end
end
=begin 
argument_attachment_greeting()
argument_attachment_greeting(nil)
argument_attachment_greeting('Italy')
=end

def argument_attachment_greeting(time = Time.now, message = bar) 
  p "time : #{time}, message: #{message}"
end

def bar
  'bar'
end

argument_attachment_greeting()