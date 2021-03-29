class Pokemon
  attr_accessor :id, :name, :type, :db 
  
  def initialize (name:, type:, db:, id: nil)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  
end
