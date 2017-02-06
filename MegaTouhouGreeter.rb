class MegaGreeter
attr_accessor :names
#create object
def initialize(names = "World")
  @names = names
  end
  
  #say hi to everyone
  
  def say_hi
  if @names.nil?
  puts "..."
  elsif @names.respond_to?("each")
  #@names is list. iterate.
  @names.each do |name|
  puts "Hello #{name}!"
  end
  else puts "Hello #{@names}!"
  end 
  end
  #Say goodbye to everyone
  def say_bye
  if @names.nil?
  puts "..."
  elsif @names.respond_to?("join")
  puts "Goodbye #{@names.join(", ")}. Come back soon!"
  else
  puts "Goodbye #{@names}. Come back soon!"
  end
  end
  end
  
  if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye
  
  #change name to be Flan
  mg.names = "Flan"
  mg.say_hi
  mg.say_bye
  
  #change name to be an array of names
  mg.names= ["Flandre", "Sakuya", "Nitori", "Alice", "Marisa"]
  mg.say_hi
  mg.say_bye
  
  #change names to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
  end