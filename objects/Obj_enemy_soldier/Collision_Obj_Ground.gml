/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5903CBCE
/// @DnDArgument : "x" "xprevious"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "object" "Obj_Ground"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "Obj_Ground"
var l5903CBCE_0 = instance_place(xprevious, y, Obj_Ground);
if (!(l5903CBCE_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0C073DF5
	/// @DnDParent : 5903CBCE
	/// @DnDArgument : "x" "xprevious"
	/// @DnDArgument : "y" "y"
	x = xprevious;
	y = y;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2360D632
else
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2AFD2FD5
	/// @DnDParent : 2360D632
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "yprevious"
	/// @DnDArgument : "object" "Obj_Ground"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "Obj_Ground"
	var l2AFD2FD5_0 = instance_place(x, yprevious, Obj_Ground);
	if (!(l2AFD2FD5_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 193A1831
		/// @DnDParent : 2AFD2FD5
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "yprevious"
		x = x;
		y = yprevious;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 06834D88
	/// @DnDParent : 2360D632
	else
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 3D316425
		/// @DnDParent : 06834D88
		/// @DnDArgument : "x" "xprevious"
		/// @DnDArgument : "y" "yprevious"
		x = xprevious;
		y = yprevious;
	}
}