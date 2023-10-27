/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B7CC345
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" ""left""
if(state == "left")
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53A80D58
	/// @DnDParent : 3B7CC345
	/// @DnDArgument : "expr" "-2"
	/// @DnDArgument : "var" "hspeed"
	hspeed = -2;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 074D8D91
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FB603F1
	/// @DnDParent : 074D8D91
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "hspeed"
	hspeed = 2;
}

/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 2FC28CCF
/// @DnDArgument : "x" "hspeed"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
var l2FC28CCF_0 = place_empty(x + hspeed, y + 0);
if (!l2FC28CCF_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66E02209
	/// @DnDParent : 2FC28CCF
	/// @DnDArgument : "var" "state"
	/// @DnDArgument : "value" ""left" "
	if(state == "left" )
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A47B8F1
		/// @DnDParent : 66E02209
		/// @DnDArgument : "expr" ""right""
		/// @DnDArgument : "var" "state"
		state = "right";
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 181FD150
	/// @DnDParent : 2FC28CCF
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0FE0C60F
		/// @DnDParent : 181FD150
		/// @DnDArgument : "expr" ""left""
		/// @DnDArgument : "var" "state"
		state = "left";
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 4D574C7A
/// @DnDArgument : "x" " hspeed*16"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l4D574C7A_0 = place_empty(x +  hspeed*16, y + 16);
if (l4D574C7A_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79D03362
	/// @DnDParent : 4D574C7A
	/// @DnDArgument : "var" "state"
	/// @DnDArgument : "value" ""left" "
	if(state == "left" )
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3FE58EE8
		/// @DnDParent : 79D03362
		/// @DnDArgument : "expr" ""right""
		/// @DnDArgument : "var" "state"
		state = "right";
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 64B4C15A
	/// @DnDParent : 4D574C7A
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F1B7389
		/// @DnDParent : 64B4C15A
		/// @DnDArgument : "expr" ""left""
		/// @DnDArgument : "var" "state"
		state = "left";
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 33BC7BCF
/// @DnDArgument : "x1" "-300"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-300"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "300"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "300"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "obj" "Obj_Player"
/// @DnDArgument : "shape" "1"
/// @DnDSaveInfo : "obj" "Obj_Player"
var l33BC7BCF_0 = collision_rectangle(x + -300, y + -300, x + 300, y + 300, Obj_Player, true, 1);
if((l33BC7BCF_0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 12C0E4BA
	/// @DnDParent : 33BC7BCF
	/// @DnDArgument : "speed" "4"
	speed = 4;

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7CFACB15
	/// @DnDParent : 33BC7BCF
	/// @DnDArgument : "colour" "$FFFF0094"
	image_blend = $FFFF0094 & $ffffff;
	image_alpha = ($FFFF0094 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2B72206A
	/// @DnDParent : 33BC7BCF
	/// @DnDArgument : "spriteind" "Spr_enemy_walk_angry"
	/// @DnDSaveInfo : "spriteind" "Spr_enemy_walk_angry"
	sprite_index = Spr_enemy_walk_angry;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6B8FC6D1
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1426A285
	/// @DnDParent : 6B8FC6D1
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2E16DA1D
	/// @DnDParent : 6B8FC6D1
	/// @DnDArgument : "spriteind" "Spr_enemy_walk"
	/// @DnDSaveInfo : "spriteind" "Spr_enemy_walk"
	sprite_index = Spr_enemy_walk;
	image_index = 0;
}