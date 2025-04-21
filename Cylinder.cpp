# ifndef CYLINDER_CPP
# define CYLINDER_CPP

#include "Cylinder.h"

using namespace std;

const double PI = 3.14159265358979323846;

double Cylinder :: SurfaceArea(){
    
    return 2 * PI * radius * (radius + height);
}

double Cylinder :: Volume(){

    return PI * radius * radius * height;
}

double Cylinder :: Circumference(){

    return 2 * PI * radius ;
}

istream & operator>>(istream & in, Cylinder & cldr)
{
	in >> cldr.radius >> cldr.height;
	

    return in ;
}

ostream & operator<<(ostream & out, Cylinder & cldr)
{
	out << fixed << setprecision(3);
	out << "Circumference: "<< cldr.Circumference() << endl;
	out << "SurfaceArea: "<< cldr.SurfaceArea() << endl;
	out << "Volume: "<< cldr.Volume() << endl ;
    
    return out;
}

# endif
