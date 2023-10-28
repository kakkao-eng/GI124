/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D3919D6
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "Obj_Game_Manager.points"
Obj_Game_Manager.points = 1;

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 0A5488BA
/// @DnDArgument : "type" "6"
effect_create_below(6, 0, 0, 0, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5DAA3444
instance_destroy();