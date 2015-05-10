#include <iostream>

using namespace std;

template<int n>
struct factorial{
	enum {value=n * factorial<n-1>::value};
};

template<>
struct factorial<0>{
	enum {value=1};
};

template<int n>
struct fibonacci{
	enum { value= fibonacci<n-1>::value+fibonacci<n-2>::value};
};


template<>
struct fibonacci<0>{
	enum{value=0};
};
template<>
struct fibonacci<1>{
	enum{value=1};
};

int main(){

	const int fac= factorial<5>::value;

	cout << fac << endl;

	const int fib= fibonacci<7>::value;

	cout << fib << endl;
	
}
