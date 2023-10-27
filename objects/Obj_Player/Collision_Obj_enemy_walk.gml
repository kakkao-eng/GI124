/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0C167FB7
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1DCBC5C6
/// @DnDApplyTo : {Obj_Game_Manager}
/// @DnDArgument : "steps" "60"
with(Obj_Game_Manager) {
alarm_set(0, 60);

}