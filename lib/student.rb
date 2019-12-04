class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
  attr_accessor :name, :grade
  attr_reader :id
 
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS songs (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade INTEGER
        )
        SQL
    DB[:conn].execute(sql) 
  end
  
  def self.drop_table
    sql = <<-SQL
      
    SQL
    DB[:conn].execute(sql)
 
  end
  
  def save
    sql = <<-SQL
      INSERT INTO songs (name, grade) 
      VALUES (?, ?)
    SQL
 
    DB[:conn].execute(sql, self.name, self.grade)
 
  end
  
  def self.create(name, grade)
    student = Student.new(name, grade)
    student.save
    student
  end
  
end