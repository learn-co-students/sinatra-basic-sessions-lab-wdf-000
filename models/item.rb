class Item

attr_accessor :name, :quantity, :size
@@all = []
  def initialize(hash)
    @name = hash[:name]
    @quantity = hash[:quantity]
    @size = hash[:size]
  end

  def self.all
    @@all
  end
  
end