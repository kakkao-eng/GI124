/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6CB02F8D
/// @DnDArgument : "speed" "4"
speed = 4;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6FE4ABBB
/// @DnDArgument : "obj" "Obj_Player"
/// @DnDSaveInfo : "obj" "Obj_Player"
var l6FE4ABBB_0 = false;
l6FE4ABBB_0 = instance_exists(Obj_Player);
if(l6FE4ABBB_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4633A4CF
	/// @DnDParent : 6FE4ABBB
	/// @DnDArgument : "x" "Obj_Player.x"
	/// @DnDArgument : "y" "Obj_Player.y"
	direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 123621E6
	/// @DnDParent : 6FE4ABBB
	/// @DnDArgument : "angle" "direction"
	image_angle = direction;
}