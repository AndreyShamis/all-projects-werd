//--------------- including section -------------
#include <iostream>
#include <stdlib.h>
#include <string.h>
//--------------- using section        -------------
using std::cout;
using std::cin;
using std::endl;
using std::cerr;
using std::max;

//=============================================================================
class BigNumber
{
	friend std::ostream &operator<<(std::ostream &other,const BigNumber &bn);

public:

	BigNumber();
	BigNumber(const char *value);
	~BigNumber();	
	void operator+=(const BigNumber &OtherNumber);
	void operator++();

private:
	void AllocateSpace(const unsigned int size);

	char *_data;
		


};
//=============================================================================
BigNumber::BigNumber()
{
	AllocateSpace(1);
	_data[0] = '0';
}
//=============================================================================
BigNumber::~BigNumber()
{
	delete _data;
}
//=============================================================================
std::ostream &operator<<(std::ostream &other,const BigNumber &bn)
{
	const unsigned int Arr_Size = strlen(bn._data);
	
	for(unsigned int i=0; i<Arr_Size ;i++)
		other << bn._data[i]-'0';
	
	return(other);
}
//=============================================================================
BigNumber::BigNumber(const char *value)
{
	const int Arr_Size = strlen(value);
	AllocateSpace(Arr_Size);
	
	for(int i=0; i<Arr_Size ;i++)
		_data[i]= value[i];

}
//=============================================================================
void BigNumber::operator++()
{
	BigNumber one("1");
	
	*this+=one;

}
//=============================================================================
void BigNumber::operator+=(const BigNumber &OtherNumber)
{
	int max_size = 0;		//	new size of digits of future number
	char *newValue = NULL;			//	return value
	
	//	Get number of digits in each number
	const int selfSize = 	strlen(_data); 
	const int otherSize = 	strlen(OtherNumber._data); 
	
	max_size = max(selfSize,otherSize) +1;
		
	newValue = new(std::nothrow) char[max_size];
	
	if(newValue == NULL)
	{
		cerr << "Can not allocate memory for " << max_size << " chars\n";
		exit(EXIT_FAILURE);
	}
	
	short int num1=0,num2=0,result=0,rest=0;
	int counter = 0;
    for(int i=max_size-1;i>=0;i--)
    {
		if(selfSize > counter)
        	num1    =   _data[selfSize-counter-1]-'0';   		// get first number value
        else
        	num1 = 0 ;
        	
        if(otherSize>counter)
        	num2    =   OtherNumber._data[otherSize-counter-1]-'0';   // get second number value
		else
			num2    = 0;
        
        result = num1 + num2;

        result  +=  rest;               // add rest
        rest    =   0;                  // reset rest for next loop
        if(result>9)
        {   // if add and have rest
            newValue[i] = (result-10) + '0';  // set new value withoot rest
            rest = 1;                           // set rest
        } // no rest
        else
  		{
            newValue[i] = result + '0';       // just print value
    	}
    	
    	counter++;
    }	

	delete  _data;
	
	_data = newValue;
	
}

//=============================================================================
/*
BigNumber BigNumber::operator=(const int &val)
{
	BigNumber val;
	
	return(val:
	

}*/

//=============================================================================
void BigNumber::AllocateSpace(const unsigned int size)
{
	_data = NULL;
	_data = new(std::nothrow) char[size];
	if(_data == NULL)
	{
		cerr << "Can not allocate memory \n";
	
	}
//	for(int i = 0;i<(int)size;i++)
//	{
//			_data[i] =  0 - '0';
//	}

}
//=============================================================================
//=============================================================================


int main()
{

	BigNumber newB("200000000"),newA("99999999999999999999999999999999999999999999999913");
	
	newB+=newA;
	cout << newB << "\n";
	++newB;
	cout << newB << "\n";
		
	cout << "End\n";
	
	return(0);
}

//=============================================================================
//=============================================================================
//=============================================================================
