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

  def display_position
    puts "The Rover is at #{@x_coord} and #{@y_coord}, facing #{@direction}."
  end

  def move
    if @direction == "N"
      @y_coord += 1
    elsif @direction == "W"
      @x_coord -= 1
    elsif @direction == "S"
      @y_coord -= 1
    else
      @x_coord += 1
    end
  end

  def right
    if @direction == "N"
      @direction = "E"
    elsif @direction == "W"
      @direction = "N"
    elsif @direction == "S"
      @direction = "W"
    else
      @direction = "S"
    end
  end

end



rover_1 = Rover.new(5, 5, "N")
rover_1.read_instruction("R")
rover_1.display_position
rover_1.read_instruction("M")
rover_1.display_position
