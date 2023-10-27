/// @DnDAction : YoYo Games.Files.If_File_Exists
/// @DnDVersion : 1
/// @DnDHash : 17670406
/// @DnDArgument : "file" ""checkpoint.ini""
var l17670406_0 = file_exists("checkpoint.ini");
if(l17670406_0)
{
	/// @DnDAction : YoYo Games.Files.File_Delete
	/// @DnDVersion : 1
	/// @DnDHash : 53B20EC6
	/// @DnDParent : 17670406
	/// @DnDArgument : "file" ""checkpoint.ini""
	file_delete("checkpoint.ini");
}