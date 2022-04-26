floorsCleared = 0;
moving = false;
moveCounter = 0;
xmovespeed = 0;
ymovespeed = 0;
axisActive = false;
axisToCheck = 0;
canmove = true;
canbehurt = 1;
canbecontrolled = 1;
global.playerhp = 5;
global.tutorial = false; //overwritten by the obj_tutorial
bugmoney = 0;
global.bugmoney = 0;


function Left()
{
	AxisCheck(obj_controller.pad_left);
	if (moving = false and canmove = true)
	{
		moving = true;
		xmovespeed = -4;
		
	}
}

function Up()
{
	AxisCheck(obj_controller.pad_up);
	
	if (moving = false and canmove = true)
	{
		moving = true;
		ymovespeed = -4;
	}
}

function Right()
{
	AxisCheck(obj_controller.pad_right);
	if (moving = false and canmove = true)
	{
		moving = true;
		xmovespeed = 4;
	}
}

function Down()
{
	AxisCheck(obj_controller.pad_down);
	
	if (moving = false and canmove = true)
	{
		moving = true;
		ymovespeed = 4;
	}
}

function AxisCheck(axis)
{
	if (gamepad_axis_value(obj_controller.pad_num, axis) > 0.5 || gamepad_axis_value(obj_controller.pad_num, axis) < -0.5)
	{
		axisActive = true;
		axisToCheck = axis;
	}
}