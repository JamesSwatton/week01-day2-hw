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
end
