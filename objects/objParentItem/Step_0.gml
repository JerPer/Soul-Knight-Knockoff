 
PickupPlayer = instance_nearest(x, y, objParentPlayer)

if (keyboard_check_pressed(ord("E"))) && (PickupPlayer != noone) && (distance_to_object(PickupPlayer) < 10)
{
    with(PickupPlayer)
    {
        if WeaponSlot1 == noone
        {
            WeaponSlot1 = instance_create_layer(x, y, "Weapons", other.ItemIndex, {Active : 1})
            WeaponSlot1.CarriedBy = id
            ActiveSlot = 1
            other.PickedUp = 1
        }
        else if WeaponSlot2 == noone
        {
            WeaponSlot2  = instance_create_layer(x, y, "Weapons", other.ItemIndex, {Active : 1})
            WeaponSlot1.CarriedBy = id
            ActiveSlot = 2
            other.PickedUp = 1
        }
    }
    
    if PickedUp == 1
        instance_destroy()
}