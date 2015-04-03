import std.stdio;

int factorial(int i){
	if(i<1) return 1;
	else return i*factorial(i-1);
}

int fibonacci(int i){
	if(i<2) return i;
	else return fibonacci(i-1)+fibonacci(i-2);
}

void main(){
	static int fac= factorial(5);
	writeln(fac);

	static int fib= fibonacci(7);
	writeln(fib);
}
