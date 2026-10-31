/// Script: normalize
function normalize(_value, _min, _max) {
    if (_max <= _min) {
        return 0;
    }
    return clamp((_value - _min) / (_max - _min), 0, 1);
}
