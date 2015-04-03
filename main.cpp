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

int main(){
	int fac= factorial<4>::value;
	cout << fac << endl;
}
