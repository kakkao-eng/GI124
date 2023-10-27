/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6F595EB9
/// @DnDArgument : "var" "relative_x"
/// @DnDArgument : "min" "-5"
/// @DnDArgument : "max" "5"
relative_x = (random_range(-5, 5));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1C4A1094
/// @DnDArgument : "var" "relative_y"
/// @DnDArgument : "min" "-5"
/// @DnDArgument : "max" "5"
relative_y = (random_range(-5, 5));

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 3B3AB665
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "8"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FF0032FF"
effect_create_above(8, x + 0, y + 0, 0, $FF0032FF & $ffffff);