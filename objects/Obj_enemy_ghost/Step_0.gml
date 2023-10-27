/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 0840A3A0
/// @DnDArgument : "x1" "-200"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-200"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "200"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "200"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "obj" "Obj_Player"
/// @DnDArgument : "shape" "1"
/// @DnDSaveInfo : "obj" "Obj_Player"
var l0840A3A0_0 = collision_rectangle(x + -200, y + -200, x + 200, y + 200, Obj_Player, true, 1);
if((l0840A3A0_0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6D975C2E
	/// @DnDParent : 0840A3A0
	/// @DnDArgument : "speed" "2"
	speed = 2;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 5454C4F7
	/// @DnDParent : 0840A3A0
	/// @DnDArgument : "x" "Obj_Player.x"
	/// @DnDArgument : "y" "Obj_Player.y"
	direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3D0B0F25
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0034E39C
	/// @DnDParent : 3D0B0F25
	/// @DnDArgument : "speed" "2"
	speed = 2;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 490FDA1C
	/// @DnDParent : 3D0B0F25
	/// @DnDArgument : "direction" "2"
	/// @DnDArgument : "direction_relative" "1"
	direction += 2;
}