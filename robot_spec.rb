require 'rspec'
require 'robot'

describe "Robot PING" do
  it "should say 'PONG! when the robot got ping" do
  robot = Robot.new
  robot.command("PING") == "PONG!"
  end
end

describe "Robot move and report" do
  it "should be on 0,1,NORTH now" do
  robot = Robot.new
  robot.place(0,0,"NORTH")
  robot.command("MOVE")
  robot.command("REPORT") == "0,1,NORTH"
  end
end

describe "Robot turn left and report" do
  it "should be on 0,1,WEST now" do
  robot = Robot.new
  robot.place(0,0,"NORTH")
  robot.command("LEFT")
  robot.command("REPORT") == "0,1,WEST"
  end
end

describe "Robot assigned certain command and report" do
  it "should be on 3,3,NORTH now" do
  robot = Robot.new
  robot.place(1,2,"EAST")
  robot.command("MOVE")
  robot.command("MOVE")
  robot.command("LEFT")
  robot.command("MOVE")
  robot.command("REPORT") == "3,3,NORTH"
  end
end