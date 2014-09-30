class Robot
  def initialize(args)
    @x = 0
    @y = 0
    @f = 0
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
        case @y
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
    # robot, please turn left
  end

  def right
     # robot, please turn right
  end

  def report
     # robot, send the status!
  end
end