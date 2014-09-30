class Robot
  def initialize(args)
    #contstruct
  end

  private
  def place(x,y,z)
    @x = x.to_i
    @y = y.to_i
    @z = z.to_s
    print "Robot on the table!\n"
  end
  
  def move
    # move the robot
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