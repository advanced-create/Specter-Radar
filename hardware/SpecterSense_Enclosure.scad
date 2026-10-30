// SpecterSense Handheld Radar Enclosure
// Parametric OpenSCAD Source for ESP32-S3 + mmWave Radar Carrier

$fn = 60;

// Board Dimensions
board_length = 84;
board_width  = 64;
board_height = 20;
wall_thickness = 2.0;

// Main Enclosure Base Body
module enclosure_base() {
    difference() {
        // Outer Shell
        cube([board_length + (wall_thickness * 2), board_width + (wall_thickness * 2), board_height], center = false);
        
        // Inner Cavity
        translate([wall_thickness, wall_thickness, wall_thickness])
            cube([board_length, board_width, board_height], center = false);
            
        // USB-C Cutout for ESP32-S3
        translate([-1, wall_thickness + 15, wall_thickness + 2])
            cube([wall_thickness + 2, 12, 6.5]);
    }
    
    // M2.5 Mounting Stand-offs
    standoff(wall_thickness + 4, wall_thickness + 4);
    standoff(wall_thickness + board_length - 4, wall_thickness + 4);
    standoff(wall_thickness + 4, wall_thickness + board_width - 4);
    standoff(wall_thickness + board_length - 4, wall_thickness + board_width - 4);
}

module standoff(x, y) {
    translate([x, y, wall_thickness])
    difference() {
        cylinder(r = 3.0, h = 5);
        cylinder(r = 1.25, h = 6); // M2.5 screw tap hole
    }
}

enclosure_base();
