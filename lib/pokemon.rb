class Pokemon
  attr_accessor :id, :name, :type, :hp, :db

  def initialize(id:, name:, type:, hp: nil, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end



end
