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
    sql = <<-SQL
            SELECT *
            FROM pokemon
            WHERE id = ?
        SQL
        
        x = db.execute(sql, id).map do |row|
            self.new_from_db(row, db)
        end.first
  end   






















end