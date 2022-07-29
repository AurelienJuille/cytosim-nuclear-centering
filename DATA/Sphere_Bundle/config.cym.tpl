% Nuclear centering S.pombe
% Phong Tran, May 4, 2022
% NOTE: parameters use units of picoNewton, micrometer, second

[[length=[3.5,14]]]

set simul pombe
{
    time_step  = .1
    kT         = 0.0042
    viscosity  = 0.9
    precondition = 0
    display = ( window_size=1024,256 )
}

set space cell
{
    geometry = ( capsule 0 [[length]])
    display = ( color=0xFFFFFF33, 0x11111188; visible=3; )
}

new cell

set fiber microtubule
{
    rigidity       = 30
    segmentation   = 0.5
    confine        = inside, 200
    activity        = dynamic
    unit_length     = 0.008
    growing_speed   = 0.0437
    shrinking_speed = -0.1465
    hydrolysis_rate = 0.12
    growing_force   = 1.7
    persistent      = 1
    rebirth_rate    = 1
    min_length      = 0.5
    display = ( line_width=5; plus_end=15; minus_end=15; )
}

set sphere envelope
{
    point_mobility = 0.05
    confine        = all_inside, 200
    piston_effect  = 0

    display = ( color=0x0000FF55; size=12; style=15 )
}

set bundle microtubule_bundle
{
    overlap   = 0.5
    stiffness = 1000
}


set nucleus noyau
{
    stiffness  = 200
}

new noyau
{
    sphere     = envelope
    bundles      = [[[1,2,4,8,16]]], microtubule_bundle, (fibers=2, microtubule, (length=0.5; plus_end=grow;))
    radius       = 1.75
    position     = [[2-length]] 0 0
}

run 90000 pombe
{
    nb_frames  = 900
}






