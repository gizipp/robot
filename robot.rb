class Robot
  def initialize(args)
    @x = 0
    @y = 0
    @f = "NORTH"
  end

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
        print "PONG!"
    end
  end

  private
  def place(x,y,f)
    @x = x.to_i
    @y = y.to_i
    @f = z.to_s
    print "Robot on the table!\n"
  end
  
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
     # print @x, @y, @f
     print "test"
  end
end

print "Command you robot:\n"
input = gets.strip
@robot.command(input)

# robot = Robot.new
# robot.command("PLACE,0,1,EAST")
# robot.command("MOVE")
# robot.command("LEFT")
# robot.command("REPORT")