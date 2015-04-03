import std.stdio;

int factorial(int i){
	return i?factorial(i-1)*i:1;
}

void main(){
	static int fac= factorial(4);
	writeln(fac);
}
