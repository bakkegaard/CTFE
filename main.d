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
	const int fac= factorial(5);
	pragma(msg,fac)

	const int fib= fibonacci(7);
	pragma(msg,fib);
}
