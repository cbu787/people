class Rover
  def initialize(x_coord, y_coord, direction)
    @x_coord = x_coord
    @y_coord = y_coord
    @direction = direction
  end

  def read_instruction(instruction)
    if instruction == "M"
      self.move
    elsif instruction == "L"
        self.left
    else
        self.right
    end
  end

  def left
    if @direction == "N"
      @direction = "W"
    elsif @direction == "W"
      @direction = "S"
    elsif @direction == "S"
      @direction = "E"
    else
      @direction = "N"
    end
end

  def move
  end

  def right
  end

end



rover_1 = Rover.new(5, 5, "N")
rover_1.read_instruction("L")
