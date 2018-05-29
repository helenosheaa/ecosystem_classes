class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish_count = []
  end

  def fish_number()
    return @fish_count.length()
  end

end
