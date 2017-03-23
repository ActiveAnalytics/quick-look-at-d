import std.stdio : writeln;

/* ldc2 scal_template.d -boundscheck=off && ./scal_template */

X[] scal(X)(X[] x, in X a)
{
    foreach(i, el; x)
    {
        x[i] *= a;
    }
    return x;
}

void main(){
    float[] x = [1, 2, 3, 4, 5, 6];
    /* explicit notation */
    writeln(scal!(float)(x, 3));
    /* Short cut notation */
    writeln(scal(x, 3));
}
