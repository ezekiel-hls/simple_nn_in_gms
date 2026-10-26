/// Script: scr_nn_feedforward
function scr_nn_feedforward() {
    for (var i = 0; i < hl; i++) {
        neurons[i] = bias[i];
        for (var j = 0; j < il; j++) {
            neurons[i] += inputs[j] * weights[i][j];
        }
        neurons[i] = tanh(neurons[i]);
    }

    for (var i = 0; i < ol; i++) {
        outputs[i] = output_bias[i];
        for (var j = 0; j < hl; j++) {
            outputs[i] += neurons[j] * output_weights[i][j];
        }
        outputs[i] = tanh(outputs[i]);
    }
}
