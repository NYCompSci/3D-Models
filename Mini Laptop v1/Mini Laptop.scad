//!OpenSCAD

length2 = 30;
width = 19.5;
thickness = 1.5;
border = 2.5;
KeyLong = 1;
KeyWidth = 1;
union(){
  cube([length2, width, thickness], center=false);
  difference() {
    cube([length2, thickness, width], center=false);

    translate([border, (thickness * 0.5), (border + thickness)]){
      cube([(length2 - border * 2), thickness, ((width - thickness) - border * 2)], center=false);
    }
  }
  translate([(length2 / 2), 0, (width / 2)]){
    rotate([90, 0, 180]){
      // size is multiplied by 0.75 because openScad font sizes are in points, not pixels
      linear_extrude( height=(thickness * 1.5), twist=0, center=false){
        text("NYCS", font = "Roboto", size = 8*0.75, halign="center", valign="center");
      }

    }
  }
  translate([border, (border + thickness), 0]){
    cube([(length2 - border * 2), (width / 2.5), (thickness * 1.5)], center=false);
  }
  translate([(length2 / 2), (width / 1.25), thickness]){
    cube([(length2 / 3), (width / 4), (thickness * 1)], center=true);
  }
}
//(width - thickness) - border * 2;
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE5NjA4NzQ3ODNdfQ==
-->