
pragma solidity ^0.8.13;
library Prime{
    function isprime(uint num) public view returns (bool){
        bool result;
        assembly{
        
            if eq(num,2){
                result := true;
            }

            else if eq(num %2,0){
                result:=true;
            }

            else{
                result:= true;
                for(uint i = 3; i < num; i += 2){
                    switch eq(num % i,0){
                        case true{
                            result:= false;
                            break;
                        }
                        {
                            result:= true;
                        }
                    }
                }
            }
        }
    }
}