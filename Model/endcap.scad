// Endcap for 20mm square steel tubing
// Designed for Leon CNC by Peter Hertel 2021
// CC-BY 4.0 license

// Variables

od = 20; // [20] outer diameter of square tubing
id = 18; // [18] inner diameter of square tubing, adjust this if fit is too tight
offset = 2; // [2] amount of rounded corners
tab_size = 3; // [3] depth/length of tabs 
tab_width = 1; // [1] width of tabs

// The end cap itself
    mirror([0,0,1]) // mirrored to get the chamfer on the bottom/outside
    linear_extrude(height=2,scale=0.96) // extrusion of the 2D shape defined below, scaled to chamfer the edge
    offset(offset,$fn=24) // restores the basic shape to its original od size, rounding the corners in the process
    offset(-offset) // makes the basic shape smaller
        square(od,center=true); // basic 2D shape of end cap, modified above

// Internal shape
// Made spiky with tabs to conform to inside burr after cutting
// Might need slight convincing with a mallet to fit snugly

difference(){ // making the center hollow
    linear_extrude(height=10,scale=0.93){ // makes the 3D shape with a slight scale/chamfer along the edge for easier insertion
        circle(r=id/2-tab_size/2); // basic shape of center cylinder
        for(Y=[90:90:360]) // makes four of the shapes below
            for(X=[-1:1]) // makes three of the shapes below
                rotate([0,0,360/20*X+Y]) // rotates the tabs around the center
                translate([0,-tab_width/2]) // moves the tab to center
                    square([id/2,tab_width]); // basic shape of tab
}
cylinder(r=id/2-3.5,h=20); // basic shape of center hole
}
