class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
  attr_accessor :name, :album
 
  def initialize(name, album)
    @name = name
    @album = album
  end
  
  def save
    
  end
  
end