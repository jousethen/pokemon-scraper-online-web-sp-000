class Pokemon
  attr_accessor :id, :name, :type, :db 
  
  def initialize (name:, type:, db:, id: nil)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def save
    sql = <<-SQL
      INSERT INTO students (name, type)
      VALUES (?, ?)
    SQL
    DB[:conn].execute(sql, self.name, self.grade)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
end
