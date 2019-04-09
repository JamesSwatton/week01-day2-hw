class River

  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def amount_of_fish()
    return @fishes.count
  end

  def spawn_fish(name)
    if @fishes.count >= 2
      @fishes << Fish.new(name)
    end
  end
end
