import std.stdio : writeln;
import std.algorithm.iteration: sum;

/* ldc2 scal_arr.d -boundscheck=off && ./scal_arr */

X[] scal(X)(X[] x, in X a)
{
    x[] *= a;
    return x;
}

void main(){
    double[] x = [1, 2, 3, 4, 5, 6];
    writeln(scal(x, 3));
    /* UFCS */
    writeln(x.scal(3));
}
