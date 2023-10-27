/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F4DB4B7
/// @DnDArgument : "var" "x_movement"
/// @DnDArgument : "value" "x -xprevious"
var x_movement = x -xprevious;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 603BE7B1
/// @DnDArgument : "var" "x -xprevious"
/// @DnDArgument : "op" "1"
if(x -xprevious < 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 2AD47220
	/// @DnDParent : 603BE7B1
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 61443F3C
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 676C2CF2
	/// @DnDParent : 61443F3C
	image_xscale = 1;
	image_yscale = 1;
}