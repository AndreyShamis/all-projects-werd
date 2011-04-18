/*
 * EX3B    :: Program that finds the two prime numbers.
 * =============================================================
 * Writen by: Andrey Shamis, id: 321470882, login:andreysh
 *
 *  Program that finds the two prime numbers,
 *  with the difference in the two and displays
 */

//--------------- including section -------------
#include <iostream>
#include <math.h>
//--------------- using section        -------------
using std::cout;
using std::cin;
using std::endl;
using std::cerr;


unsigned int SumNumbers(const unsigned int &Number)
{
	unsigned int sum=0;
	unsigned int n = Number;
	
    while (n!=0)
    {
        sum += n%10;
        n /= 10;
    }
    
    return(sum);
}

unsigned int MultNumbers(const unsigned int &Number)
{
	unsigned int sum=1;
	unsigned int n = Number;
	
    while (n!=0)
    {
        sum *= (n%10 +1);
        n /= 10;
    }
    
    return(sum);
    
}


unsigned int Chetnie(const unsigned int &Number)
{
	unsigned int sum=0;
	unsigned int n = Number;
	
    while (n!=0)
    {
        const short int res = n%10;
        if(res%2 == 0)
        {
        	sum++;
        }
        n /= 10;
    }
    
    return(sum);
	
}

void ChetNeChet(const unsigned int &Number, unsigned int &Chet , unsigned int &NeChet)
{
	unsigned int n = Number;
	
    while (n!=0)
    {
        const short int res = n%10;
        
        if(res%2 == 0)
        	Chet++;
        else
        	NeChet++;
        	
        n /= 10;
    }
}


//--------------- function             -------------
bool simple(const unsigned int &input)
{   // Function to find if input number is simple
    int index;                          // Used in cicle

	const int max = sqrt(input);
    for(index=3; index <= max; index+=2)
	{
		if(index%5==0)
		{
			index+=2;
		}
        if((input%index) ==  0)         // if find devider return 0
            return (0);

	}

    return(1);                          // return 1 if not find devider
}

//--------------- main                 -------------
int main()
{
    unsigned int minNumber,  // min Input number variable
        maxNumber;  // max Input number variable, used too in for cicle
     

    int  res ,prev_pr = 2;
	
	
	cout << sizeof(short int) << " " << sizeof(int) << " " << sizeof(char);
	
	prev_pr=2;
	//while(true)
	//{
		cin >> minNumber >> maxNumber;
		if(minNumber < 3 || minNumber+3 > maxNumber)
		{   // exit end return 1 if input incorrect
			cerr << "Error: Illegal input" << endl;
			return(1);
		}

		if(minNumber%2 == 0) // working only with even numbers
			minNumber++;

		int nes = 0;
		int pons = 0;
		bool find = false;
		int prev_last_for = 0;
		for (; minNumber <= maxNumber; minNumber+=2)
		{
			nes++;
			res = simple(minNumber);
			if(res) // check if this number simple
			{
				unsigned int Chet=0;
				unsigned int NeChet=0;
				const unsigned int sumNum = SumNumbers(minNumber);
				const unsigned int mulNum = MultNumbers(minNumber);
				const float mulDsum = mulNum/sumNum;
				ChetNeChet(minNumber,Chet,NeChet);
				
				cout << minNumber << "\tSUM " << sumNum <<
				"\tCH " << Chet << "\tnCH " << NeChet <<  
				"\tmN " << mulNum << 
				"\tmN\\sN" << mulDsum <<
				"\t - " << minNumber/mulDsum << 
				
				"\n";
				find = true;
				pons++;
			}
			else
			{
				find = false;
			}
			//if(res%10 != prev_pr%10)
			//{
			//	cout << " " <<  res%prev_pr << " " << prev_pr%10 << "\n";
			//}
			if(nes%5==0)
			{
				//cout << "\n";
				nes = 0;
				if(pons == 4)
				{
				//	cout << minNumber << " - \t" << minNumber-prev_last_for <<  "\n";
					prev_last_for = minNumber;
				}
				pons = 0;
			}
		}
//	}
    return(0);
}
