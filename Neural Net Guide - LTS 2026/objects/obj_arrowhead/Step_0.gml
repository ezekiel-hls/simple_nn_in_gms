/// obj_arrowhead: Step (complete event)
var _target = instance_find(obj_target, 0);
if (_target == noone) {
    exit;
}

var _desired = point_direction(x, y, _target.x, _target.y);
var _angle = angle_difference(_desired, image_angle);
inputs[0] = 2 * normalize(_angle, -180, 180) - 1;
scr_nn_feedforward();

var _turn_speed = 3;
var _move_speed = 5;

image_angle += _turn_speed * outputs[0];
x += lengthdir_x(_move_speed, image_angle);
y += lengthdir_y(_move_speed, image_angle);
