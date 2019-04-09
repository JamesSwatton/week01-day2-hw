class River

  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def amount_of_fish()
    return @fishes.count
  end

end
