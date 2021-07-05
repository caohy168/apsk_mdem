// Title:apsk mapping modle.
// Reason:I thought the mapping come from the star in the sky.So I write this code remember for Mikołaj Kopernik.
// Author:CaoHuiyang at HTGD-THZ Research and Department.
// Web:https://www.htgd.com.cn/
// e-mail:caohy@htgd.com.cn;QQ:2685997598
#include "apskmod.h"
#include <stdio.h>
#include <math.h>
#include <cmath>
#include <fstream>
#include <iostream>
#include <iomanip>
#include <string>
using namespace std;

int main()
{
	int datin[340];
	   for (int i = 0; i < 340; i++)
	   {
		   if(i > 63){
			   datin[i] = i%64;
		   }
		   else{
			   datin[i] = i;}
	   }

	string Titledatin,Titlemodi,Titlemodq,Titledemoddatout;
	float modiout[340];
	float modqout[340];
	apskmod(datin,modiout,modqout);
	Titledatin = "datin 340 display as below:";
	cout << Titlemodi <<endl;
	for( int i = 0; i <340; i = i + 1 ){
		//make the wind to the star.
		//cout << setw(13) << datin[i];					//insert blank between the numbers
		cout << datin[i]<<',';							//insert dot   between the numbers
		if ((i+1)%21 == 0)cout << endl;}cout << endl;
	Titlemodi = "modi out 340 display as below:";
	cout << Titlemodi <<endl;
	for( int i = 0; i <340; i = i + 1 ){
		//cout << setw(13) << modiout[i];
		cout << modiout[i]<<',';
		if ((i+1)%20 == 0)cout << endl;}cout << endl;
	Titlemodq = "modq out 340 display as below:";
	cout << Titlemodq <<endl;
	for( int i = 0; i <340; i = i + 1 ){
		//cout << setw(13) << modqout[i];
		cout << modqout[i]<<',';
		if ((i+1)%20 == 0)cout << endl;}cout << endl;

return 0;
}
