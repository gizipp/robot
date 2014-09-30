class Robot
  def command(input)
    case input
      when "MOVE"
        move
      when "REPORT"
        report
      when "LEFT"
        left
      when "RIGHT"
        right
      when "PING"
        print "PONG!\n"
    end
  end

  def place(x,y,f)
    @x = x.to_i
    @y = y.to_i
    @f = f.to_s
    print "Robot on the table!\n"
  end

  private
  
  def move
     if @x > 3 || @y > 3
      print "Do not move, or robot falling from the table!\n"
      else
        case @f
          when "NORTH"
            @y += 1
          when "EAST"
            @x += 1
          when "SOUTH"
            @y -= 1
          when "WEST"
            @x -= 1
        end
      end
  end

  def left
    case @f
      when "NORTH"
        @f = "WEST"
      when "EAST"
        @f = "NORTH"
      when "SOUTH"
        @f = "EAST"
      when "WEST"
        @f = "SOUTH"
    end
  end

  def right
    case @f
      when "NORTH"
        @f = "EAST"
      when "EAST"
        @f = "SOUTH"
      when "SOUTH"
        @f = "WEST"
      when "WEST"
        @f = "NORTH"
    end
  end

  def report
      print "#{@x},#{@y},#{@f}\n"
  end
end

robot = Robot.new
robot.place(0,0,"NORTH")
robot.command("MOVE")
robot.command("REPORT")