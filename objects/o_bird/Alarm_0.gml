//generator

dy = 502;

py = choose(-224,-178, -76, -64, -52, 0);
instance_create_layer(room_width+20, py, "instances_1", o_wall);
instance_create_layer(room_width+20, py+dy, "instances_1", o_wall2);

alarm[0] = room_speed;

