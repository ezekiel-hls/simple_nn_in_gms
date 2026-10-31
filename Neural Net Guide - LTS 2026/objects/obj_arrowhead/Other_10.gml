/// obj_arrowhead: User Event 0 (fitness)
var _target = instance_find(obj_target, 0);
if (_target == noone) {
    exit;
}
agent_score -= point_distance(x, y, _target.x, _target.y);
point_in_time += 1;
fitness = agent_score / point_in_time;
