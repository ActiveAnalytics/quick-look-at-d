import std.stdio : writeln;
import std.algorithm.iteration: sum, map;
import std.array: array;

/* ldc2 scal_fp.d -boundscheck=off && ./scal_fp */

X[] scal(X)(X[] x, X a)
{
    return x.map!((xi) => xi*a).array();
}

void main(){
    double[] x = [1, 2, 3, 4, 5, 6];
    writeln(scal(x, 3));
}
