import std.stdio : writeln;
import std.algorithm.iteration: sum;

/* ldc2 dot_arr.d -boundscheck=off && ./dot_arr */

X dot(X)(X[] x, X[] y)
{
    x[] *= y[];
    return sum(x);
}

void main(){
    double[] x = [1, 2, 3, 4, 5, 6];
    double[] y = [6, 5, 4, 3, 2, 1];
    writeln(dot(x, y));
}
