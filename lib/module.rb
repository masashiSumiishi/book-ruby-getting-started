module Greeter
  def hello
    'hello'
  end
end

module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable

  def title 
    log 'title is called.'
    p 'A great movie'
  end
end

class User 
  include Loggable
  include Greeter

  def name
    log 'name is called'
    p 'Alice'
    p hello + ', Japan'
  end
end

product = Product.new
product.title
user = User.new
user.name