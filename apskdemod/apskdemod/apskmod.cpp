// Title:apsk modle demodle.
// Author:CaoHuiyang at HTGD-THZ Research and Department.
// Web:https://www.htgd.com.cn/  //e-mail:caohy@htgd.com.cn  //QQ:2685997598

#include "apskmod.h"
#include<stdio.h>
#include<math.h>

void apskmod(unsigned char mod_datin[340],float modi[340],float modq[340]) {
	unsigned char mod_tempin[340];
	float mod_tempouti[340];
	float mod_tempoutq[340];
	for( int i = 0; i <340 ; i = i + 1 )mod_tempin[i]=mod_datin[i];
	for( int j = 0; j <340 ; j = j + 1 ){
		switch (mod_tempin[j])
		{
		//row 1 to 10
		//0.7391 + 0.3061i  -0.7391 + 0.3061i   0.7391 - 0.3061i  -0.7391 - 0.3061i   0.3061 + 0.7391i  -0.3061 + 0.7391i   0.3061 - 0.7391i  -0.3061 - 0.7391i   0.8485 + 0.8485i  -0.8485 + 0.8485i
		    case 0:{
		    	mod_tempouti[j]=0.7391;
				mod_tempoutq[j]=0.3061;break;}
		    case 1:{
		    	mod_tempouti[j]=-0.7391;
				mod_tempoutq[j]=0.3061;break;}
		    case 2:{
				mod_tempouti[j]=0.7391;
				mod_tempoutq[j]=-0.3061;break;}
			case 3:{
				mod_tempouti[j]=-0.7391;
				mod_tempoutq[j]=-0.3061;break;}
			case 4:{
				mod_tempouti[j]=0.3061;
				mod_tempoutq[j]=0.7391;break;}
			case 5:{
				mod_tempouti[j]=-0.3061;
				mod_tempoutq[j]=0.7391;break;}
			case 6:{
				mod_tempouti[j]=0.3061;
				mod_tempoutq[j]=-0.7391;break;}
			case 7:{
				mod_tempouti[j]=-0.3061;
				mod_tempoutq[j]=-0.7391;break;}
			case 8:{
				mod_tempouti[j]=0.8485;
				mod_tempoutq[j]=0.8485;break;}
			case 9:{
				mod_tempouti[j]=-0.8485;
				mod_tempoutq[j]=0.8485;break;}
		//row 11 to 20
		//0.8485 - 0.8485i  -0.8485 - 0.8485i   1.1591 + 0.3106i  -1.1591 + 0.3106i   1.1591 - 0.3106i  -1.1591 - 0.3106i   1.4142 + 1.4142i  -1.4142 + 1.4142i   1.4142 - 1.4142i  -1.4142 - 1.4142i
			case 10:{
				mod_tempouti[j]=0.8485;
				mod_tempoutq[j]=-0.8485;break;}
			case 11:{
				mod_tempouti[j]=-0.8485;
				mod_tempoutq[j]=-0.8485;break;}
			case 12:{
				mod_tempouti[j]=1.1591;
				mod_tempoutq[j]=0.3106;break;}
			case 13:{
				mod_tempouti[j]=-0.7391;
				mod_tempoutq[j]=-0.3061;break;}
			case 14:{
				mod_tempouti[j]=-1.1591;
				mod_tempoutq[j]=0.3106;break;}
			case 15:{
				mod_tempouti[j]=1.1591;
				mod_tempoutq[j]=-0.3106;break;}
			case 16:{
				mod_tempouti[j]=1.4142;
				mod_tempoutq[j]=1.4142;break;}
			case 17:{
				mod_tempouti[j]=-1.4142;
				mod_tempoutq[j]=1.4142;break;}
			case 18:{
				mod_tempouti[j]=1.4142;
				mod_tempoutq[j]=-1.4142;break;}
			case 19:{
				mod_tempouti[j]=-1.4142;
				mod_tempoutq[j]=-1.4142;break;}
			//row 21 to 30
			//1.7820 + 0.9080i  -1.7820 + 0.9080i   1.7820 - 0.9080i  -1.7820 - 0.9080i   0.3106 + 1.1591i  -0.3106 + 1.1591i   0.3106 - 1.1591i  -0.3106 - 1.1591i   1.9754 + 0.3129i  -1.9754 + 0.3129i
			case 20:{
				mod_tempouti[j]=1.7820;
				mod_tempoutq[j]=0.9080;break;}
			case 21:{
				mod_tempouti[j]=-1.7820;
				mod_tempoutq[j]=0.9080;break;}
			case 22:{
				mod_tempouti[j]=1.7820;
				mod_tempoutq[j]=-0.9080;break;}
			case 23:{
				mod_tempouti[j]=-1.7820;
				mod_tempoutq[j]=-0.9080;break;}
			case 24:{
				mod_tempouti[j]=0.3106;
				mod_tempoutq[j]=1.1591;break;}
			case 25:{
				mod_tempouti[j]=-0.3106;
				mod_tempoutq[j]=1.1591;break;}
			case 26:{
				mod_tempouti[j]=0.3106;
				mod_tempoutq[j]=-1.1591;break;}
			case 27:{
				mod_tempouti[j]=-0.3106;
				mod_tempoutq[j]=-1.1591;break;}
			case 28:{
				mod_tempouti[j]=1.9754;
				mod_tempoutq[j]=0.3129;break;}
			case 29:{
				mod_tempouti[j]=-1.9754;
				mod_tempoutq[j]=0.3129;break;}
			//row 31 to 40
			//1.9754 - 0.3129i  -1.9754 - 0.3129i   0.3263 + 2.4786i  -0.3263 + 2.4786i   0.3263 - 2.4786i  -0.3263 - 2.4786i   0.9567 + 2.3097i  -0.9567 + 2.3097i   0.9567 - 2.3097i  -0.9567 - 2.3097i
			case 30:{
				mod_tempouti[j]=1.9754;
				mod_tempoutq[j]=-0.3129;break;}
			case 31:{
				mod_tempouti[j]=-1.9754;
				mod_tempoutq[j]=-0.3129;break;}
			case 32:{
				mod_tempouti[j]=0.3263;
				mod_tempoutq[j]=2.4786;break;}
			case 33:{
				mod_tempouti[j]=-0.3263;
				mod_tempoutq[j]=2.4786;break;}
			case 34:{
				mod_tempouti[j]=0.3263;
				mod_tempoutq[j]=-2.4786;break;}
			case 35:{
				mod_tempouti[j]=-0.3263;
				mod_tempoutq[j]=-2.4786;break;}
			case 36:{
				mod_tempouti[j]=0.9567;
				mod_tempoutq[j]=2.3097;break;}
			case 37:{
				mod_tempouti[j]=-0.9567;
				mod_tempoutq[j]=2.3097;break;}
			case 38:{
				mod_tempouti[j]=0.9567;
				mod_tempoutq[j]=-2.3097;break;}
			case 39:{
				mod_tempouti[j]=-0.9567;
				mod_tempoutq[j]=-2.3097;break;}
			//row 41 to 50
			//1.9834 + 1.5219i  -1.9834 + 1.5219i   1.9834 - 1.5219i  -1.9834 - 1.5219i   1.5219 + 1.9834i  -1.5219 + 1.9834i   1.5219 - 1.9834i  -1.5219 - 1.9834i   0.9080 + 1.7820i  -0.9080 + 1.7820i
			case 40:{
				mod_tempouti[j]=1.9834;
				mod_tempoutq[j]=1.5219;break;}
			case 41:{
				mod_tempouti[j]=-1.9834;
				mod_tempoutq[j]=1.5219;break;}
			case 42:{
				mod_tempouti[j]=1.9834;
				mod_tempoutq[j]=-1.5219;break;}
			case 43:{
				mod_tempouti[j]=-1.9834 ;
				mod_tempoutq[j]=-1.5219;break;}
			case 44:{
				mod_tempouti[j]=1.5219;
				mod_tempoutq[j]=1.9834;break;}
			case 45:{
				mod_tempouti[j]=-1.5219;
				mod_tempoutq[j]=1.9834;break;}
			case 46:{
				mod_tempouti[j]=1.5219;
				mod_tempoutq[j]=-1.9834;break;}
			case 47:{
				mod_tempouti[j]=-1.5219;
				mod_tempoutq[j]=-1.9834;break;}
			case 48:{
				mod_tempouti[j]=0.9080;
				mod_tempoutq[j]=1.7820;break;}
			case 49:{
				mod_tempouti[j]=-0.9080;
				mod_tempoutq[j]=1.7820;break;}
			//row 51 to 60
			//0.9080 - 1.7820i  -0.9080 - 1.7820i   0.3129 + 1.9754i  -0.3129 + 1.9754i   0.3129 - 1.9754i  -0.3129 - 1.9754i   2.3097 + 0.9567i  -2.3097 + 0.9567i   2.3097 - 0.9567i  -2.3097 - 0.9567i
			case 50:{
				mod_tempouti[j]=0.9080;
				mod_tempoutq[j]=-1.7820;break;}
			case 51:{
				mod_tempouti[j]=-0.9080;
				mod_tempoutq[j]=-1.7820;break;}
			case 52:{
				mod_tempouti[j]=0.3129;
				mod_tempoutq[j]=1.9754;break;}
			case 53:{
				mod_tempouti[j]=-0.3129;
				mod_tempoutq[j]=1.9754;break;}
			case 54:{
				mod_tempouti[j]=0.3129;
				mod_tempoutq[j]=-1.9754;break;}
			case 55:{
				mod_tempouti[j]=-0.3129;
				mod_tempoutq[j]=-1.9754;break;}
			case 56:{
				mod_tempouti[j]=1.5219;
				mod_tempoutq[j]=0.9567;break;}
			case 57:{
				mod_tempouti[j]=-2.3097;
				mod_tempoutq[j]=0.9567;break;}
			case 58:{
				mod_tempouti[j]=2.3097;
				mod_tempoutq[j]=-0.9567;break;}
			case 59:{
				mod_tempouti[j]=-2.3097;
				mod_tempoutq[j]=-0.9567;break;}
			//row 61 to 63
			//2.4786 + 0.3263i  -2.4786 + 0.3263i   2.4786 - 0.3263i  -2.4786 - 0.3263i
			case 60:{
				mod_tempouti[j]=2.4786;
				mod_tempoutq[j]=0.3263;break;}
			case 61:{
				mod_tempouti[j]=-2.4786;
				mod_tempoutq[j]=0.3263;break;}
			case 62:{
				mod_tempouti[j]=2.4786;
				mod_tempoutq[j]=-0.3263;break;}
			case 63:{
				mod_tempouti[j]=-2.4786;
				mod_tempoutq[j]=-0.3263;break;}
		    default:{
				mod_tempouti[j]=0;
				mod_tempoutq[j]=0;break;}

		}
	};
	for( int k = 0; k <340 ; k = k + 1 ){
		modi[k]=mod_tempouti[k];
		modq[k]=mod_tempoutq[k];};
};
