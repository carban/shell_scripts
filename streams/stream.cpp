#include <iostream>
#include <math.h>
#include <unistd.h>


bool isPrime(int n){
	
	for(int i = 2 ; i <= sqrt(n) ; i++){
		if(n % i == 0){
			return 0;
		}
	}
	return 1;
}

int main(){
	
	int n = 80;
	//std::cout << "write a value for n: "; std::cin >> n;
	
	unsigned int microseconds = 500000;
	
	if(n >= 2){
		for(int i = 2 ; i <= n ; i++){
			
			bool v = isPrime(i);
			usleep(microseconds);
			if(v){
				// Will print 1
				std::cout << i << ": " << v << std::endl;
			}else{
				// Will print 0
				std::cerr << i << ": " << v << std::endl;
			}
		}
	}else{
		std::cout << "n must be grater or equal to 2" << std::endl;
	}
	
	return 0;
}
