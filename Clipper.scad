//  
//  
//      |<--a--->|<-d->|
//  --   --------------                           --------------
//  /\  |              |                         |              |
//  b   |              |                         |              |
//  \/  |              |                         |              |
//  --  |         -----                           -----         |
//  /\  |        |                                     |        |
//  e   |        |                                     |        |
//  \/  |        |<–––––––––––––––––f–––––––––––––––––>|        |
//  --  |         -------------------------------------         |
//  /\  |                                                       |
//  c   |                                                       |
//  \/  |                                                       |
//  --   -------------------------------------------------------
//

a = 0.508;
b = 0.508;
c = 0.508;

d = 1;
e = 2+c;
f = 20;

g=10;
r=0.5;
cut = c;
distance = 4;
h=c;

module example002()
{
	union() {
		difference() {
			union() {
				translate([0, -c/2, 0])
					cube([g, c, f+2*a], center = true);

				translate([0, -(e+b+c)/2, -(f+a)/2])
					cube([g, e+c+b, a], center = true);
				translate([0, -(e+b+c)/2, +(f+a)/2])
					cube([g, e+c+b, a], center = true);

				translate([0, -(e+c+b/2), +((f+a)/2+a-d)])
					cube([g, b, a+d], center = true);
				translate([0, -(e+c+b/2), -((f+a)/2+a-d)])
					cube([g, b, a+d], center = true);
			}
			translate([g/6+cut/3, 0, 0])
				cube([cut, 2*c, f-2*d], center = true);
			translate([-(g/6+cut/3), 0, 0])
				cube([cut, 2*c, f-2*d], center = true);
		}
		translate([-(g/3+cut/3), -(c/2+h), -f/3])
			cube([(g-6*cut)/3, c, f/6], center = true);
		translate([g/3+cut/3, -(c/2+h), f/3])
			cube([(g-6*cut)/3, c, f/6], center = true);
		translate([0, -(c/2+h), 0])
			cube([(g-6*cut)/3, c, f/6], center = true);
	}		
}

example002();

