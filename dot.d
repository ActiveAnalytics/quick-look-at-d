import std.stdio : writeln;

/* ldc2 dot.d -boundscheck=off && ./dot */

X dot(X)(in X[] x, in X[] y)
{
    X output = X(0);
    foreach(i, el; x)
    {
        output += el*y[i];
    }
    return output;
}

void main(){
    double[] x = [1, 2, 3, 4, 5, 6];
    double[] y = [6, 5, 4, 3, 2, 1];
    writeln(dot(x, y));
}
