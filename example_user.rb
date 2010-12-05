class User
  attr_accessor :name, :email
  
  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end
  
  def formatted_email
    "#{@name} <#{email}>"
  end
end

class Letters
  def initialize
    a = Array.new()
    a = rand(a..z)
  end
