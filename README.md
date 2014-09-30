Robot Simulator
=================
This is Robot Simulator. The command is PLACE, MOVE, LEFT, RIGHT and REPORT.

#Usage
Open irb and load robot.rb and create object. The robot!

1. To create the robot :

robot = Robot.new

2. Check the robot is alive and ready to go :

robot.command("PING")

and the result should be PONG!

3. Assign some command to the robot :

robot.place(1,2,"EAST") -> to placing robot

robot.command("MOVE") -> to move the robot 1 step

robot.command("LEFT") -> to face robot to the left

robot.command("RIGHT") -> to face robot to the right

robot.command("REPORT") -> to report the location status of the robot

4. Test the robot with some cases. Open robot_spec.rb and add some test case. To add run default test case run this command :

spec rspec robot_spec.rb

