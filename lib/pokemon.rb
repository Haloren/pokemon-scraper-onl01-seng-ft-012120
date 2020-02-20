class Pokemon
  attr_accessor :name, :type
  attr_reader :id
  def initialize (name:, type:, id:, db:)
    @name = name
    @type = type
    @id = id 
    @db = db 
  end   

























end