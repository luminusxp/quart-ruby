class Quart
  attr_reader :level

  def initialize limit
    @limit = limit
    @level = 0
  end

  def fill
    @level = @limit
  end

  def fill_from other
    remaining_space = @limit - @level
    did_get = other.take remaining_space
    @level += did_get
  end

  def take n
    can_give = n > @level ? @level : n
    @level -= can_give
    can_give
  end

  def empty
    @level = 0
  end
end

three_quart = Quart.new 3
five_quart = Quart.new 5

#STEP 1
three_quart.fill
#STEP 2
five_quart.fill_from three_quart
#STEP 3
three_quart.fill
#STEP 4
five_quart.fill_from three_quart
#STEP 5
five_quart.empty
#STEP 6
five_quart.fill_from three_quart
#STEP 7
three_quart.fill
#STEP 8
five_quart.fill_from three_quart

p five_quart.level
p three_quart.level