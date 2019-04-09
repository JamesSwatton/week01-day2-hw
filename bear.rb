class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @belly = []
  end

  def amount_of_fish_in_belly
    return @belly.count
  end

  def take_fish_from_river(amount_of_fish, river)
    count = 0
    while count < amount_of_fish
      @belly << river.fishes.pop
      count += 1
    end
  end

end
