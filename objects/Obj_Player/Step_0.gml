/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FE4EF8C
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "value" "keyboard_check(vk_right)-keyboard_check(vk_left)"
var move_x = keyboard_check(vk_right)-keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3AD2DE44
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "not" "1"
if(!(move_x == 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6BB84549
	/// @DnDParent : 3AD2DE44
	/// @DnDArgument : "expr" "sign(move_x)*1.5"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = sign(move_x)*1.5;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3ED5D549
/// @DnDArgument : "expr" "move_x*move_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x*move_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 47B84B75
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Obj_Ground"
/// @DnDSaveInfo : "object" "Obj_Ground"
var l47B84B75_0 = instance_place(x + 0, y + 2, Obj_Ground);
if ((l47B84B75_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CB7ACDB
	/// @DnDParent : 47B84B75
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5B8663E9
	/// @DnDParent : 47B84B75
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "Obj_Ground"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "Obj_Ground"
	var l5B8663E9_0 = instance_place(x + 0, y + 2, Obj_Ground);
	if (!(l5B8663E9_0 > 0))
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 6B0F0A16
		/// @DnDParent : 5B8663E9
		/// @DnDArgument : "x" "move_x"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "10"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "Obj_Ground"
		/// @DnDSaveInfo : "object" "Obj_Ground"
		var l6B0F0A16_0 = instance_place(x + move_x, y + 10, Obj_Ground);
		if ((l6B0F0A16_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 64F2C58A
			/// @DnDInput : 2
			/// @DnDParent : 6B0F0A16
			/// @DnDArgument : "expr" "abs(move_x)"
			/// @DnDArgument : "var" "move_y"
			/// @DnDArgument : "var_1" "move_x"
			move_y = abs(move_x);
			move_x = 0;
		}
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 101DE5F9
	/// @DnDParent : 47B84B75
	/// @DnDArgument : "key" "vk_up"
	var l101DE5F9_0;
	l101DE5F9_0 = keyboard_check(vk_up);
	if (l101DE5F9_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78E358FE
		/// @DnDParent : 101DE5F9
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7158309B
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E3C984B
	/// @DnDParent : 7158309B
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25D34B62
		/// @DnDParent : 7E3C984B
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 5EA48E9B
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "-1"
/// @DnDArgument : "maxymove" "-1"
/// @DnDArgument : "object" "Obj_Ground"
/// @DnDSaveInfo : "object" "Obj_Ground"
move_and_collide(move_x, move_y, Obj_Ground,4,0,0,-1,-1);