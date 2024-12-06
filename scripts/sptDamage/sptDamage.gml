/// @function                    RangedHit(Attacker, Projectile, Victim)
/// @param {index} Attacker      The object that shot the attack
/// @param {index} Projectile    The projectile object that hit the Victim
/// @param {index} Victim        The object that got hit

function RangedHit( Attacker, Projectile = id, Victim){
    with (Victim)
    {
        if Invincible = 0
        {
            ColorMerge = 0
        
            hp -= (Projectile.damage - defense)
            
            
            Invincible = IFrames
        }
    }
}