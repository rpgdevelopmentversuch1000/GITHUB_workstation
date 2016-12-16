///scr_slide_state()


xslide = lengthdir_x(1, lastdir);
yslide = lengthdir_y(1, lastdir);
        
with (self){

    physics_apply_impulse(-x,-y,xslide,yslide)
    icecontact = 0

}
if (icecontact = 0 ) {
    len = 0;
    xslide = 0 ;
    yslide = 0 ;
    lastdir = 0 ;
    hspd = 0 ;
    vspd =0 ;
    alarm[1] = 1 ;
    
}

         










