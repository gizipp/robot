Robot Simulator
=================
This is Robot Simulator. The command is PLACE, MOVE, LEFT, RIGHT and REPORT.

#Usage
Open irb and load robot.rb and create object. The robot! To create the robot :

```
robot = Robot.new
```

Check the robot is alive and ready to go :

```
robot.command("PING")
```

and the result should be PONG!

Assign some command to the robot :

```
robot.place(1,2,"EAST") -> to placing robot on certain location
robot.command("MOVE") -> to move the robot 1 step
robot.command("LEFT") -> to face the robot to the left
robot.command("RIGHT") -> to face the robot to the right
robot.command("REPORT") -> to report the location of the robot
```
Test the robot with some cases. To run default test case run this command :

```
spec rspec robot_spec.rb
```

For more test case, open robot_spec.rb and add some test case for the robot.

#Version
0.1