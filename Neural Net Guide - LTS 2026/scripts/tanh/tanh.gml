/// Script: tanh
function tanh(_x) {
    var _decay = exp(-2 * abs(_x));
    return sign(_x) * (1 - _decay) / (1 + _decay);
}
