class Pokemon
  attr_accessor :name, :type
  attr_reader :id, :db 
 
  def initialize (name:, type:, id:, db:)
    @name = name
    @type = type
    @id = id 
    @db = db 
  end   

  def self.save (name, type, db)
    sql = <<-SQL
            INSERT INTO pokemon (name, type)
            VALUES (?, ?)
        SQL

    db.execute(sql, name, type)
  end   

  def self.find(id, db)
    #find pokemon by id then return a new pokemon as an object
    found_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?;", id)
    binding.pry 
  end   






















end