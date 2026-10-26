/// obj_arrowhead: User Event 1 (mutation)
for (var i = 0; i < hl; i++) {
    bias[i] = mutate(bias[i], 0.4);
    for (var j = 0; j < il; j++) {
        weights[i][j] = mutate(weights[i][j], 0.4);
    }
}
for (var i = 0; i < ol; i++) {
    output_bias[i] = mutate(output_bias[i], 0.4);
    for (var j = 0; j < hl; j++) {
        output_weights[i][j] = mutate(output_weights[i][j], 0.4);
    }
}
