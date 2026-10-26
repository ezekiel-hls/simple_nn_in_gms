/// obj_nn_main: Create
randomize();
nn_obj = array_create(10, noone);
for (var i = 0; i < array_length(nn_obj); i++) {
    nn_obj[i] = instance_create_layer(x, y, "Instances", obj_arrowhead);
}
