class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish_count = []
  end

  def fish_number()
    return @fish_count.length()
  end

  def remove_fish(fish)
    @fish_count.delete(fish)
  end

end
