import std.stdio : writeln;
import std.range : zip;
import std.algorithm.iteration: sum, map;

/* ldc2 dot_fp.d -boundscheck=off && ./dot_fp */

X dot(X)(X[] x, X[] y)
{
    return zip(x, y).map!(a => a[0]*a[1]).sum;
}

void main(){
    double[] x = [1, 2, 3, 4, 5, 6];
    double[] y = [3, 6, 9, 12, 15, 18];
    writeln(dot(x, y));
}
