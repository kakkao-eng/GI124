/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 293239AB
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "Obj_enemy_bullet"
/// @DnDSaveInfo : "objectid" "Obj_enemy_bullet"
instance_create_layer(x + 0, y + 0, "Instances", Obj_enemy_bullet);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3B76F81D
/// @DnDArgument : "steps" "60 * 0.5"
alarm_set(0, 60 * 0.5);