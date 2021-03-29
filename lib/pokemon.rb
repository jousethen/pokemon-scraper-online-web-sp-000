class Pokemon
  attr_accessor :id, :name, :type, :db 
  
  def initialize (name:, type:, db:, id: nil)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def self.save(name:, type:, db:)
    sql = <<-SQL
      INSERT INTO students (name, type)
      VALUES (?, ?)
    SQL
    db.execute(sql, self.name, self.type)
    @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
end
