/// obj_nn_main: Draw
var _old_colour = draw_get_colour();
draw_set_colour(c_lime);
with (obj_arrowhead) {
    draw_text(x, y, string(fitness));
}
draw_set_colour(_old_colour);
