import std.stdio : writeln;

/* ldc2 scal_c.d -boundscheck=off && ./scal_c */

void scal(N, X)(N n, in X a, X* x)
{
    while(n)
    {
        *x *= a;
        x += 1;
        --n;
    }
}

void main(){
    double[] x = [1, 2, 3, 4, 5, 6];
    scal(6, 3, x.ptr);
    writeln(x);
}
