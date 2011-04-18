/*
 * EX7B  :: Treatment of large natural numbers
 * ============================================================================
 * Writen by: Andrey Shamis, id: 321470882, login:andreysh
 *
 * Calculator for very large natural numbers.
 * to compile g++ -Wall ex7b.cc -o ex7b
 *
 *  Parameters for program
 *  i [number]                  === put number in next slot
 *  l                           === list all numbers in slots
 *  + slot_index1 slot_index2   === add two numbers from array
 *  - slot_index1 slot_index2   === sub two numbers from array
 */

//--------------- including section -------------------------------------------
#include <iostream>
#include <cstdlib>
#include <cstring>

//--------------- using section        ----------------------------------------
using std::cin;
using std::cout;

//-------------- const & enum section -----------------------------------------
const int MAX_NUMBERS   = 10;   // max lentgh of array rows
const int MAX_DIGITS    = 20;   // max lentgh of array cols

enum PROGRAM_MENU {                         // Enum used for program menu
                INPUT_CODE      =   'i',    // input
                PLUS            =   '+',    // plus
                MINUS           =   '-',    // minus
                LIST            =   'l',    // list all numbers
                EXIT_CODE       =   'e'     // exit code
                };

//--------------  Prototypes section ------------------------------------------
// get new number into array
void read_new_number(char mat[][MAX_DIGITS],int &counter);
// print out number in normal format
void print_str(const char mat[]);
// function which add and sub numbers
void plus_minus(const char mat[][MAX_DIGITS],char act);
// convert string into program need style
void strtonumstr(char mat[]);
// print all numbers which we in array(added numbers)
void list(const char mat[][MAX_DIGITS],int counters);

//------------------- MAIN ----------------------------------------------------
int main()
{
    char    data[MAX_NUMBERS][MAX_DIGITS],  // number data base
            act;                            // action value
    int     counter=0;                      // numbers counter

    do
    {
        cin >> act;

        if(act == INPUT_CODE)                   // if need put new number
            read_new_number(data,counter);      // putting new number
        else if(act == PLUS || act == MINUS)    // plus minus options
            plus_minus(data,act);               // call to function
        else if(act == LIST)                    // if need list data
            list(data,counter);                 // call to list function
    }
    while(act != EXIT_CODE);                    // check if 'e' exit do-while

    return(EXIT_SUCCESS);                       // program exit
}
//-----------------------------------------------------------------------------
// function which putting new value in array
// only one number into mat[i]
void read_new_number(char mat[][MAX_DIGITS],int &counter)
{
    cin >> mat[counter];                    // entering new number in array
    strtonumstr(mat[counter]);              // change the number like pr number
    counter++;                              // add+1 to conter
}

//-----------------------------------------------------------------------------
// The function of adding and subtracting. Gets an array of numbers as the
// string gets the sign of the operation. Displays the result of the action.
// And in the case of a negative number printed "U" in the case when the
// number is greater than the allowable print "O"
void plus_minus(const char mat[][MAX_DIGITS],char act)
{

    char result_sum[MAX_DIGITS];    // result array
    int rest=0,                     // remainder of the addition or subtraction
        find,sind,                  // indexes in array
        num1,num2,                  // arrays values
        result;                     // result value peer index

    cin >> find >> sind;            // get indexes

    // start sub or add every cell// start from BACK
    for(int i=MAX_DIGITS-1;i>=0;i--)
    {
        num1    =   mat[find][i]-'0';   // get first number value
        num2    =   mat[sind][i]-'0';   // get second number value

        result = (act == '+')? num1 + num2 : num1 - num2; // sub or add

        result  +=  rest;               // add rest
        rest    =   0;                  // reset rest for next loop
        if(act =='+' && result>9)
        {   // if add and have rest
            result_sum[i] = (result-10) + '0';  // set new value withoot rest
            rest = 1;                           // set rest
        }
        else if(act == '-' && result<0)
        {   // yf sub and have rest
            result_sum[i] = (result+10) + '0';  // set new value withoot rest
            rest = -1;                          // set rest
        }
        else    // no rest
            result_sum[i] = result + '0';       // just print value
    }


    print_str(mat[find]);               // print first number
    cout        << " " << act << " ";   // print operator
    print_str(mat[sind]);               // print second number
    cout        << " = ";               // print operator
    print_str(result_sum);              // print result

    if(rest && act=='+')                // if overlow
        cout << " o";
    else if(rest && act=='-')           // if uperflow
        cout << " u";

    cout << "\n";                       // just print new line

}

//-----------------------------------------------------------------------------
//  The function displays the number in its natural form
//  Gets a one-dimensional array.
void print_str(const char mat[])
{
    int flag = -1;                      // flag are needed to check in output
                                        // if found number!=0
    for(int i=0;i<MAX_DIGITS && flag<0;i++)     // find number !=0
        if(mat[i] != '0' || (i+1)==MAX_DIGITS)  // founded number != 0
            flag=i;                             // set him position

    for(int x=flag;x<MAX_DIGITS;x++)    // print out from flag position
        cout << mat[x];                 // every numbers

}

//-----------------------------------------------------------------------------
// function are doing numberic string with zeros
// converting string number from 7428274 to 000000000007428274 (000.. MAX_DIGI)
// actually function shifts the numbers in the right product for the
// convenience of mathematical operations.
void strtonumstr(char mat[])
{
    char    tem[MAX_DIGITS];        // temporary variable
    int     len = strlen(mat),      // set how chars geted
            counter,                // for counter
            put_counter=0;          // number counter

    // start put zeroes into temporary array in MAX_DIGITS - len lentgh
    for(counter=0;counter<MAX_DIGITS;counter++)
        if(counter>MAX_DIGITS-len-1)
        {   // putting entered numbers (chars)
            tem[counter] = mat[put_counter];
            put_counter++;
        }
        else    // putting zeroes
            tem[counter] ='0';

    // insert temporary variable value char char into programm data base arr
    for(counter=0;counter<MAX_DIGITS;counter++)
        mat[counter]=tem[counter];

}

//-----------------------------------------------------------------------------
// function are listed information about program data base
// function get:
// 2-th array
// and numbers found counter
// print out the all founded numbers
void list(const char mat[][MAX_DIGITS],int counter)
{
    int     frcnt1,frcnt2;  // for counters
    bool    found;          // bool flag if finded number !=0

    for(frcnt1=0; frcnt1 < counter;frcnt1++)
    {   // for in rows
        found = false;  // set false peer all line in array

        for(frcnt2=0; frcnt2 < MAX_DIGITS;frcnt2++)
        {   // for in every cell in rcnt1 row
            if(!found && mat[frcnt1][frcnt2] != '0')
                found = true; // found number != 0

            // check if found flag or not found but it`s last char (0) print
            if(found || (!found && (frcnt2+1)==MAX_DIGITS))
                cout << mat[frcnt1][frcnt2];    // print char
        }

        cout << "\n";
    }
}
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
//-----------------------------------END---------------------------------------
