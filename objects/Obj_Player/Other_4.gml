/// @DnDAction : YoYo Games.Files.If_File_Exists
/// @DnDVersion : 1
/// @DnDHash : 7A8C6C0E
/// @DnDArgument : "file" ""checkpoint.ini""
var l7A8C6C0E_0 = file_exists("checkpoint.ini");
if(l7A8C6C0E_0)
{
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 25606CF1
	/// @DnDParent : 7A8C6C0E
	/// @DnDArgument : "filename" ""checkpoint.ini""
	ini_open("checkpoint.ini");

	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 0EE0828D
	/// @DnDParent : 7A8C6C0E
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "section" ""player""
	/// @DnDArgument : "key" ""x""
	/// @DnDArgument : "default" "x"
	x = ini_read_real("player", "x", x);

	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 33ED4A12
	/// @DnDParent : 7A8C6C0E
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "section" ""player""
	/// @DnDArgument : "key" ""y""
	/// @DnDArgument : "default" "y"
	y = ini_read_real("player", "y", y);

	/// @DnDAction : YoYo Games.Files.Close_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 0305F5FA
	/// @DnDParent : 7A8C6C0E
	ini_close();
}