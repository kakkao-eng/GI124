/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2AA43CA5
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "value" "1"
if(image_index == 1)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 08F9732E
	/// @DnDParent : 2AA43CA5
	exit;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 117662E3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "image_index"
image_index = 1;

/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 03FC16DD
/// @DnDArgument : "filename" ""checkpoint.ini""
ini_open("checkpoint.ini");

/// @DnDAction : YoYo Games.Files.Ini_Write
/// @DnDVersion : 1
/// @DnDHash : 2FCE63F1
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""player""
/// @DnDArgument : "key" ""x""
/// @DnDArgument : "value" "other.x"
ini_write_real("player", "x", other.x);

/// @DnDAction : YoYo Games.Files.Ini_Write
/// @DnDVersion : 1
/// @DnDHash : 63A2C991
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""player""
/// @DnDArgument : "key" ""y""
/// @DnDArgument : "value" "other.y"
ini_write_real("player", "y", other.y);

/// @DnDAction : YoYo Games.Files.Ini_Write
/// @DnDVersion : 1
/// @DnDHash : 02A3FB9D
/// @DnDDisabled : 1
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""player""
/// @DnDArgument : "key" ""hp""
/// @DnDArgument : "value" "other.hp"


/// @DnDAction : YoYo Games.Files.Ini_Write
/// @DnDVersion : 1
/// @DnDHash : 7119526E
/// @DnDDisabled : 1
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""player""
/// @DnDArgument : "key" ""coins""
/// @DnDArgument : "value" "other.coins"


/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 08E6291F
ini_close();