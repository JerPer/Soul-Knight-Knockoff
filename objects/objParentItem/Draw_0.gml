
draw_self()

if (distance_to_object(objParentPlayer) < 10)
{
    draw_set_halign(fa_left)
    draw_set_valign(fa_bottom)
    draw_text_transformed(x, y, ItemName + "\nPress E", 0.5, 0.5, 0)
}