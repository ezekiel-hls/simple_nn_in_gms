/// obj_nn_main: User Event 0 (training)
var _fittest = noone;
var _fitness = 0;

// Select only living agents that have at least one fitness sample.
for (var i = 0; i < array_length(nn_obj); i++) {
    var _agent = nn_obj[i];
    if (!instance_exists(_agent)) {
        continue;
    }
    if (_agent.point_in_time <= 0) {
        continue;
    }
    if (_fittest == noone || _agent.fitness > _fitness) {
        _fittest = _agent;
        _fitness = _agent.fitness;
    }
}
if (_fittest == noone) {
    exit;
}

// Copy scalar DNA values into the independent arrays created in part 1.
for (var i = 0; i < array_length(nn_obj); i++) {
    var _agent = nn_obj[i];
    if (!instance_exists(_agent)) {
        continue;
    }
    if (_agent != _fittest) {
        for (var j = 0; j < _agent.hl; j++) {
            _agent.bias[j] = _fittest.bias[j];
            for (var k = 0; k < _agent.il; k++) {
                _agent.weights[j][k] = _fittest.weights[j][k];
            }
        }
        for (var j = 0; j < _agent.ol; j++) {
            _agent.output_bias[j] = _fittest.output_bias[j];
            for (var k = 0; k < _agent.hl; k++) {
                _agent.output_weights[j][k] = _fittest.output_weights[j][k];
            }
        }
        with (_agent) {
            event_user(1);
        }
    }
    with (_agent) {
        event_user(2);
    }
}
