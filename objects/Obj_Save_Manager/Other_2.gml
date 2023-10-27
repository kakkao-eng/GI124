/// @DnDAction : YoYo Games.Files.If_File_Exists
/// @DnDVersion : 1
/// @DnDHash : 6A3B2A32
/// @DnDArgument : "file" ""checkpoint.ini""
var l6A3B2A32_0 = file_exists("checkpoint.ini");
if(l6A3B2A32_0)
{
	/// @DnDAction : YoYo Games.Files.File_Delete
	/// @DnDVersion : 1
	/// @DnDHash : 3BBD4A6E
	/// @DnDParent : 6A3B2A32
	/// @DnDArgument : "file" ""checkpoint.ini""
	file_delete("checkpoint.ini");
}