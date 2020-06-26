#include <iostream>
#include <math.h>

bool isPrime(int x){
  for(int i = 2; i <= sqrt(x); i++){
    if(x % i == 0){
      return 0;
    }
  }
  return 1;
}

int main(){

  while(1){

    int x;
    std::cout<< "Write a value for x: "; std::cin >> x;

    if(x < 2){
      std::cout<< "x must be greater than 2" << std::endl;
    }else{
      for(int i = 2; i <= x; i++){
        std::cout<< i << ": " << isPrime(i) <<std::endl;
      }
    }
  }
  return 0;
}
