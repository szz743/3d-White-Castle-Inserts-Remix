$fn=200;
include <js500Functions.scad>

difference(){
//Outer cube
RoundedCube(220,53.8,49,3);

//Castle First Floor
translate([2.4,1.8,1])
cube([74,12.3,100]);

//Castle Second Floor
translate([2.4,15.1,1])
cube([74,10.8,100]);

//Castle Third Floor
translate([2.4,26.9,1])
cube([74,9.8,100]);
    
//Solo
translate([2.4,37.7,1])
cube([74,9.3,100]);
    
//Decree
translate([2.4,48,1])
cube([74,4,100]);    

//Finger Holes for Cards
translate([39.4,200,49])
rotate([90,0,0])
cylinder(h=400, d=50, center=false);

translate([50,0,0]){    
//Stone Garden
translate([93.6,1.8,1])
cube([74,7.2,100]);

//Plant Garden
translate([93.6,10,1])
cube([74,7.2,100]);

//Flower Arrangement
translate([93.6,18.2,1])
cube([74,6.7,100]);

//Calligraphy
translate([93.6,25.9,1])
cube([74,6.7,100]);

//Starting Resources
translate([93.6,33.6,1])
cube([74,9.7,100]);

//Starting Actions
translate([93.6,44.3,1])
cube([74,7.7,100]);

//Finger Holes for Cards
translate([130.6,200,49])
rotate([90,0,0])
cylinder(h=400, d=50, center=false);
}
    


//Rounded Corners
for(i = [0:1]){
translate([(i*141.2)+9.9,240,44])
rotate([90,0,0])
linear_extrude(250)
difference(){square(5);circle(5);}

translate([(i*141.2)+68.9,240,44])
mirror([1,0,0])
rotate([90,0,0])
linear_extrude(250)
difference(){square(5);circle(5);}
}

//Yard Tiles
translate([78.8,1.8,20.6])
cube([36,15,100]);

translate([78.8,1.8,20.6])
RoundedCube(36,27.75,100,10);

FingerHoleBottom(96.8,0,25,49,5,1.8);

//Ceremony Tiles
translate([117.2,1.8,27])
RoundedCube(23.7,32,100,5);

FingerHoleBottom(129.05,0,18,59,3,1.8);

translate([117.32,9,46])
rotate([90,0,0])
linear_extrude(10)
difference(){square(3);circle(3);}

translate([140.78,-1,46])
rotate([90,0,180])
linear_extrude(10)
difference(){square(3);circle(3);}

//Water Lily Tiles
translate([78.8,30.55,31.4])
RoundedCube(22.8,21.45,100,10);

FingerHoleTop(90.2,53.8,18,59,3,1.8);

translate([79.26,54,46])
rotate([90,0,0])
linear_extrude(10)
difference(){square(3);circle(3);}

translate([101.14,45,46])
rotate([90,0,180])
linear_extrude(10)
difference(){square(3);circle(3);}

//Tray Finger Hole
translate([122,53.8,-1])
rotate([0,0,0])
cylinder(h=400, d=30, center=false);

translate([139.7,50.8,-1])
rotate([0,0,90])
linear_extrude(60)
difference(){square(3);circle(3);}

translate([104.3,50.8,-1])
rotate([0,0,0])
linear_extrude(60)
difference(){square(3);circle(3);}

}