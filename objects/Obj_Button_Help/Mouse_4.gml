/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 6913A46B
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 401A02B7
/// @DnDArgument : "obj" "Obj_Control"
/// @DnDSaveInfo : "obj" "Obj_Control"
var l401A02B7_0 = false;
l401A02B7_0 = instance_exists(Obj_Control);
if(l401A02B7_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5FB076B1
	/// @DnDApplyTo : {Obj_Control}
	/// @DnDParent : 401A02B7
	with(Obj_Control) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 235F5E63
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6725ECA7
	/// @DnDParent : 235F5E63
	/// @DnDArgument : "xpos" "room_width/2"
	/// @DnDArgument : "ypos" "room_height-100"
	/// @DnDArgument : "objectid" "Obj_Control"
	/// @DnDSaveInfo : "objectid" "Obj_Control"
	instance_create_layer(room_width/2, room_height-100, "Instances", Obj_Control);
}