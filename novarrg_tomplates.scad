

%square ([100,100],true);


plate8 ();


module plate10 ()
{
  for( y=[38:22:-50])  if (y >-34)
  {
    for (x=[40:40:-40]) translate ([x,y,0]) pulley ();
      for (x=[20,-20]) translate ([x,y-10,0]) pulley ();
  }
}




module plate9 ()
{
  translate ([37,30,0]) yaxisholder ();
  translate ([37,-6,0]) yaxisholder ();
  translate ([13,30,0]) yaxisholder ();
  translate ([13,-6,0]) yaxisholder ();
  translate ([-37,30,0]) yaxisholder ();
  translate ([-37,-6,0]) yaxisholder ();
  translate ([-13,30,0]) yaxisholder ();
  translate ([-13,-6,0]) yaxisholder ();
  translate ([-32,-37,0]) rotate ([0,0,90]) yaxisholder ();
  translate ([32,-37,0]) rotate ([0,0,90]) yaxisholder ();
  translate ([0,-37,0]) rotate ([0,0,90]) yaxisholder ();
}



module plate8 () {
  translate ([13,4,0]) rotate ([0,0,8]) ymotorbracket ();
  translate ([-13,-4,0]) rotate ([0,0,188]) ymotorbracket ();

  translate ([-13,65,7]) rotate ([0,180,82]) ymotorbracket ();
  translate ([13,95,7]) rotate ([0,180,262]) ymotorbracket ();

}


  

module plate7() {

translate ([-12,33,0]) xendidler ();
translate ([8,-22,0]) rotate ([0,0,90])  xendmotor ();

}

module plate6 ()
{
   translate ([0,20,0]) {
	translate ([0,-7,0]) beltclamp();
	translate ([0,7,0]) beltclamp();
	translate ([0,-21,0]) beltclamp();
	translate ([0,21,0]) beltclamp();
	//translate ([0,-35,0]) rotate ([0,0,90])  rodclamp ();
	//translate ([0,35,0]) rotate ([0,0,90])  rodclamp ();
  }
  translate ([28,37,0]) pulley ();
  translate ([28,15,0]) pulley ();

}

module plate4 ()
{
translate([0,0,0]) rotate([0,0,0]) vertex();

}

module plate2_3 ()
{
#translate([-8,-12,0]) rotate([0,0,178]) vertexfoot ();
translate([8,12,0]) rotate([0,0,-2]) vertexfoot ();
}

module plate1 ()
{
  translate ([0,0,0])
  {
   	translate([-30,0,0]) rotate([0,0,0]) barclamp ();
	translate([-30,19,0]) rotate([0,0,0]) barclamp ();
	translate([-30,-19,0]) rotate([0,0,0]) barclamp ();
	translate([-30,38,0]) rotate([0,0,0]) barclamp ();
	translate([-30,-38,0]) rotate([0,0,0]) barclamp ();

	translate([0,0,0]) rotate([0,0,0]) barclamp ();
	translate([0,19,0]) rotate([0,0,0]) barclamp ();
	translate([0,-19,0]) rotate([0,0,0]) barclamp ();
	translate([0,38,0]) rotate([0,0,0]) barclamp ();
	translate([0,-38,0]) rotate([0,0,0]) barclamp ();

  	translate([30,0,0]) rotate([0,0,0]) barclamp ();
	translate([30,19,0]) rotate([0,0,0]) barclamp ();
	translate([30,-19,0]) rotate([0,0,0]) barclamp ();
	translate([30,38,0]) rotate([0,0,0]) barclamp ();
	translate([30,-38,0]) rotate([0,0,0]) barclamp ();

  }
 // translate([-15, -38, 0]) endstop ();
//  translate([30, 20, 0]) rotate ([0,0,90]) endstop ();
 // translate([30, -20, 0]) rotate ([0,0,-90]) endstop ();
}


module yaxisholder ()
{
import_stl("gregs-y-axis-holder.stl");
}

module ymotorbracket ()
{
import_stl ("y-motor-bracket.stl");
}


module pulley ()
{
  import_stl ("pulley.stl");
}


module barclamp ()
{
import_stl ("bar-clamp.stl");
}

module endstop ()
{
import_stl ("endstop-holder.stl");
}

module vertexfoot()
{
import_stl ("frame-vertex-with-foot.stl");
}

module vertex ()
{
import_stl ("integrated-z-mount-frame-vertex-rod-pushfit-m8-608.stl");
}

module beltclamp ()
{
import_stl ("belt-clamp.stl");
}

module xendidler ()
{
import_stl ("x-end-idler.stl");
}

module xendmotor()
{
import_stl ("x-end-motor.stl");
}