#Object programming excercises:

#create class (Computer)
#define methods in the class (initialize, create and Computer.get_user),
#create instance variables(@username and @password) and class variable(@@users)

class Computer

  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password

    @files = {}

    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "New file #{filename} was created #{time}"
  end

  def Computer.get_users
    return @@users
  end
end

#create a new instance of this class
my_computer = Computer.new("Lola", "122333444")

#Class Laptop inherits from class Computer

class Laptop < Computer
end
