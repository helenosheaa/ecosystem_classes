class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_fill()
    return @stomach.length()
  end

  def eat_fish(fish)
      @stomach.push(fish)
  end

  # def take_fish_from_river(river)
  #       for fish in river.fish_count()
  #         take(fish)
  #       end
  #       river.clear_fish_count()
  #     end
  #
  # def take_fish_from_river
  #   temporary_count = @fish_count
  #   @fish_count = []
  #   return temporary_count
  # end

  def take_fish_from_river
    @stomach.concact(fish_count)
  end

end
