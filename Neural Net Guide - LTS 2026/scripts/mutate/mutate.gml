/// Script: mutate
function mutate(_value, _rate) {
    _rate = clamp(_rate, 0, 1);
    if (random(1) >= _rate) {
        return _value;
    }

    var _kind = irandom(3);
    if (_kind == 0) {
        _value = -_value;
    } else if (_kind == 1) {
        _value = random_range(-1, 1);
    } else if (_kind == 2) {
        _value *= random_range(1, 2);
    } else {
        _value *= random(1);
    }
    return _value;
}
