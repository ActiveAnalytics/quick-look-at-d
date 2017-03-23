import std.stdio : writeln;

/* ldc2 scal_double.d -boundscheck=off && ./scal_double */

double[] scal_double(double[] x, in double a)
{
    foreach(i, el; x)
    {
        x[i] *= a;
    }
    return x;
}

void main(){
    double[] x = [1, 2, 3, 4, 5, 6];
    writeln(scal_double(x, 3.0));
}
