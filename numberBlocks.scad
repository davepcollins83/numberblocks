include <roundedCube.scad>
// roundedCube.scad by Sembiance
// https://github.com/Sembiance/common/blob/master/openscad/roundedCube.scad

module numberBlock(char) {
    union(){
        difference(){
            roundedCube([24, 24, 24], x=false, y=false, z=true);
            translate([24, 12, 12]){
                rotate([0, 90, 0]){
                    cylinder(h=2, r=1, center=true, $fn=128);
                }
            }
            translate([23, 11, -1]){
                cube([2, 2, 13]);
            
            }            
            translate([22, 9.95, -1]){
                cube([1.1, 4.1, 15]);
            
            }            
            translate([22.55, 12, 14]){
                rotate([0, 90, 0]){
                    cylinder(h=1.1, r=2.05, center=true, $fn=4);
                }   
            }         
        }

        translate([-0.5, 12, 12]){
            rotate([0, 90, 0]){
                cylinder(h=2, r=1, center=true, $fn=128);
            }
        }
        
        translate([-1.5, 11, 0]){
            cube([2, 2, 12]);
            
        }
        translate([-1.6, 12, 12]){
            rotate([0, 90, 0]){
                cylinder(h=1, r=2, center=true, $fn=128);
            }
        }
        
        translate([-2.1, 10, 0]){
            cube([1, 4, 12]);
            
        }
        

    }

    translate([12, 2, 23]){
        linear_extrude(2.5) text(char, size=20, halign="center", font="Arial Black:style=Regular");
    }
}

/* Uncomment this section to create a full set of blocks

for (i = [0:4]){
    translate([(i*30), 60, 0]){
        numberBlock(str(i));
    }
}

for (i = [5:9]){
    translate([(i-5)*30, 30, 0]){
        numberBlock(str(i));
    }
}

numberBlock("+");
translate([30, 0, 0]) numberBlock("\u2212");
translate([60, 0, 0]) numberBlock("\u00D7");
translate([90, 0, 0]) numberBlock("\u00F7");
translate([120, 0, 0]) numberBlock("=");
*/

numberBlock("1");