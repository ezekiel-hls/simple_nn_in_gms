/// Script: scr_nn_create
function scr_nn_create() {
    il = 1; // Input nodes
    hl = 4; // Hidden neurons
    ol = 1; // Output nodes

    inputs = array_create(il, 0);
    neurons = array_create(hl, 0);
    bias = array_create(hl, 0);
    outputs = array_create(ol, 0);
    output_bias = array_create(ol, 0);
    weights = array_create(hl);
    output_weights = array_create(ol);

    for (var i = 0; i < hl; i++) {
        weights[i] = array_create(il, 0);
    }
    for (var i = 0; i < ol; i++) {
        output_weights[i] = array_create(hl, 0);
    }
}
