// Title:apsk mapping IP.
// Reason:I thought Communicate Mapping born from the star in the sky.So I write this code remember for Mikołaj Kopernik.
// Matlab Simulate:M = [8 12 20 24];radii = [0.8 1.2 2 2.5];function x=(0:63); y = apskmod(x,M,radii);
// Author:CaoHuiyang at HTGD-THZ Research and Department.
// Web:https://www.htgd.com.cn/
// e-mail:caohy@htgd.com.cn;QQ:2685997598

#include"apskmod.h"
#include<stdio.h>
#include<math.h>

void apskmod(int mod_datin[340],float modi[340],float modq[340]) {
	int mod_tempin[340];
	float mod_tempouti[340];
	float mod_tempoutq[340];
	apskmod_label0:for( int i = 0; i <340 ; i = i + 1 )mod_tempin[i]=mod_datin[i];
	apskmod_label1:for( int j = 0; j <340 ; j = j + 1 ){
		switch (mod_tempin[j])
		{
/*		  from 0 to 11
		   0.7391 + 0.3061i  -0.7391 + 0.3061i   0.7391 - 0.3061i  -0.7391 - 0.3061i   0.3061 + 0.7391i  -0.3061 + 0.7391i   0.3061 - 0.7391i  -0.3061 - 0.7391i   0.8485 + 0.8485i  -0.8485 + 0.8485i   0.8485 - 0.8485i  -0.8485 - 0.8485i
		  from 12 to 23
		   1.1591 + 0.3106i  -1.1591 + 0.3106i   1.1591 - 0.3106i  -1.1591 - 0.3106i   1.4142 + 1.4142i  -1.4142 + 1.4142i   1.4142 - 1.4142i  -1.4142 - 1.4142i   1.7820 + 0.9080i  -1.7820 + 0.9080i   1.7820 - 0.9080i  -1.7820 - 0.9080i
		  from 24 to 35
		   0.3106 + 1.1591i  -0.3106 + 1.1591i   0.3106 - 1.1591i  -0.3106 - 1.1591i   1.9754 + 0.3129i  -1.9754 + 0.3129i   1.9754 - 0.3129i  -1.9754 - 0.3129i   0.3263 + 2.4786i  -0.3263 + 2.4786i   0.3263 - 2.4786i  -0.3263 - 2.4786i
		  from 36 to 47
		   0.9567 + 2.3097i  -0.9567 + 2.3097i   0.9567 - 2.3097i  -0.9567 - 2.3097i   1.9834 + 1.5219i  -1.9834 + 1.5219i   1.9834 - 1.5219i  -1.9834 - 1.5219i   1.5219 + 1.9834i  -1.5219 + 1.9834i   1.5219 - 1.9834i  -1.5219 - 1.9834i
		  from 48 to 59
		   0.9080 + 1.7820i  -0.9080 + 1.7820i   0.9080 - 1.7820i  -0.9080 - 1.7820i   0.3129 + 1.9754i  -0.3129 + 1.9754i   0.3129 - 1.9754i  -0.3129 - 1.9754i   2.3097 + 0.9567i  -2.3097 + 0.9567i   2.3097 - 0.9567i  -2.3097 - 0.9567i
		  from 60 to 63
		   2.4786 + 0.3263i  -2.4786 + 0.3263i   2.4786 - 0.3263i  -2.4786 - 0.3263i*/
			case 0:{//0.7391 + 0.3061i
		    	mod_tempouti[j]=0.7391;
				mod_tempoutq[j]=0.3061;break;}
		    case 1:{//-0.7391 + 0.3061i
		    	mod_tempouti[j]=-0.7391;
				mod_tempoutq[j]=0.3061;break;}
		    case 2:{//0.7391 - 0.3061i
				mod_tempouti[j]=0.7391;
				mod_tempoutq[j]=-0.3061;break;}
			case 3:{//-0.7391 - 0.3061i
				mod_tempouti[j]=-0.7391;
				mod_tempoutq[j]=-0.3061;break;}
			case 4:{// 0.3061 + 0.7391i
				mod_tempouti[j]=0.3061;
				mod_tempoutq[j]=0.7391;break;}
			case 5:{//-0.3061 + 0.7391i
				mod_tempouti[j]=-0.3061;
				mod_tempoutq[j]=0.7391;break;}
			case 6:{// 0.3061 - 0.7391i
				mod_tempouti[j]=0.3061;
				mod_tempoutq[j]=-0.7391;break;}
			case 7:{//-0.3061 - 0.7391i
				mod_tempouti[j]=-0.3061;
				mod_tempoutq[j]=-0.7391;break;}
			case 8:{//0.8485 + 0.8485i
				mod_tempouti[j]=0.8485;
				mod_tempoutq[j]=0.8485;break;}
			case 9:{//-0.8485 + 0.8485i
				mod_tempouti[j]=-0.8485;
				mod_tempoutq[j]=0.8485;break;}
			case 10:{//0.8485 - 0.8485i
				mod_tempouti[j]=0.8485;
				mod_tempoutq[j]=-0.8485;break;}
			case 11:{//-0.8485 - 0.8485i
				mod_tempouti[j]=-0.8485;
				mod_tempoutq[j]=-0.8485;break;}
			case 12:{//1.1591 + 0.3106i
				mod_tempouti[j]=1.1591;
				mod_tempoutq[j]=0.3106;break;}
			case 13:{//-1.1591 + 0.3106i
				mod_tempouti[j]=-1.1591;
				mod_tempoutq[j]=0.3106;break;}
			case 14:{//1.1591 - 0.3106i
				mod_tempouti[j]=1.1591;
				mod_tempoutq[j]=-0.3106;break;}
			case 15:{//-1.1591 - 0.3106i
				mod_tempouti[j]=-1.1591;
				mod_tempoutq[j]=-0.3106;break;}
			case 16:{//1.4142 + 1.4142i
				mod_tempouti[j]=1.4142;
				mod_tempoutq[j]=1.4142;break;}
			case 17:{//-1.4142 + 1.4142i
				mod_tempouti[j]=-1.4142;
				mod_tempoutq[j]=1.4142;break;}
			case 18:{//1.4142 - 1.4142i
				mod_tempouti[j]=1.4142;
				mod_tempoutq[j]=-1.4142;break;}
			case 19:{//-1.4142 - 1.4142i
				mod_tempouti[j]=-1.4142;
				mod_tempoutq[j]=-1.4142;break;}
			case 20:{//1.7820 + 0.9080i
				mod_tempouti[j]=1.7820;
				mod_tempoutq[j]=0.9080;break;}
			case 21:{//-1.7820 + 0.9080i
				mod_tempouti[j]=-1.7820;
				mod_tempoutq[j]=0.9080;break;}
			case 22:{//1.7820 - 0.9080i
				mod_tempouti[j]=1.7820;
				mod_tempoutq[j]=-0.9080;break;}
			case 23:{//-1.7820 - 0.9080i
				mod_tempouti[j]=-1.7820;
				mod_tempoutq[j]=-0.9080;break;}
			case 24:{//0.3106 + 1.1591i
				mod_tempouti[j]=0.3106;
				mod_tempoutq[j]=1.1591;break;}
			case 25:{//-0.3106 + 1.1591i
				mod_tempouti[j]=-0.3106;
				mod_tempoutq[j]=1.1591;break;}
			case 26:{//0.3106 - 1.1591i
				mod_tempouti[j]=0.3106;
				mod_tempoutq[j]=-1.1591;break;}
			case 27:{//-0.3106 - 1.1591i
				mod_tempouti[j]=-0.3106;
				mod_tempoutq[j]=-1.1591;break;}
			case 28:{//1.9754 + 0.3129i
				mod_tempouti[j]=1.9754;
				mod_tempoutq[j]=0.3129;break;}
			case 29:{//-1.9754 + 0.3129i
				mod_tempouti[j]=-1.9754;
				mod_tempoutq[j]=0.3129;break;}
			case 30:{//1.9754 - 0.3129i
				mod_tempouti[j]=1.9754;
				mod_tempoutq[j]=-0.3129;break;}
			case 31:{//-1.9754 - 0.3129i
				mod_tempouti[j]=-1.9754;
				mod_tempoutq[j]=-0.3129;break;}
			case 32:{//0.3263 + 2.4786i
				mod_tempouti[j]=0.3263;
				mod_tempoutq[j]=2.4786;break;}
			case 33:{//-0.3263 + 2.4786i
				mod_tempouti[j]=-0.3263;
				mod_tempoutq[j]=2.4786;break;}
			case 34:{//0.3263 - 2.4786i
				mod_tempouti[j]=0.3263;
				mod_tempoutq[j]=-2.4786;break;}
			case 35:{//-0.3263 - 2.4786i
				mod_tempouti[j]=-0.3263;
				mod_tempoutq[j]=-2.4786;break;}
			case 36:{//0.9567 + 2.3097i
				mod_tempouti[j]=0.9567;
				mod_tempoutq[j]=2.3097;break;}
			case 37:{//-0.9567 + 2.3097i
				mod_tempouti[j]=-0.9567;
				mod_tempoutq[j]=2.3097;break;}
			case 38:{//0.9567 - 2.3097i
				mod_tempouti[j]=0.9567;
				mod_tempoutq[j]=-2.3097;break;}
			case 39:{//-0.9567 - 2.3097i
				mod_tempouti[j]=-0.9567;
				mod_tempoutq[j]=-2.3097;break;}
			case 40:{//1.9834 + 1.5219i
				mod_tempouti[j]=1.9834;
				mod_tempoutq[j]=1.5219;break;}
			case 41:{//-1.9834 + 1.5219i
				mod_tempouti[j]=-1.9834;
				mod_tempoutq[j]=1.5219;break;}
			case 42:{//1.9834 - 1.5219i
				mod_tempouti[j]=1.9834;
				mod_tempoutq[j]=-1.5219;break;}
			case 43:{//-1.9834 - 1.5219i
				mod_tempouti[j]=-1.9834 ;
				mod_tempoutq[j]=-1.5219;break;}
			case 44:{//1.5219 + 1.9834i
				mod_tempouti[j]=1.5219;
				mod_tempoutq[j]=1.9834;break;}
			case 45:{//-1.5219 + 1.9834i
				mod_tempouti[j]=-1.5219;
				mod_tempoutq[j]=1.9834;break;}
			case 46:{//1.5219 - 1.9834i
				mod_tempouti[j]=1.5219;
				mod_tempoutq[j]=-1.9834;break;}
			case 47:{//-1.5219 - 1.9834i
				mod_tempouti[j]=-1.5219;
				mod_tempoutq[j]=-1.9834;break;}
			case 48:{//0.9080 + 1.7820i
				mod_tempouti[j]=0.9080;
				mod_tempoutq[j]=1.7820;break;}
			case 49:{//-0.9080 + 1.7820i
				mod_tempouti[j]=-0.9080;
				mod_tempoutq[j]=1.7820;break;}
			case 50:{//0.9080 - 1.7820i
				mod_tempouti[j]=0.9080;
				mod_tempoutq[j]=-1.7820;break;}
			case 51:{//-0.9080 - 1.7820i
				mod_tempouti[j]=-0.9080;
				mod_tempoutq[j]=-1.7820;break;}
			case 52:{//0.3129 + 1.9754i
				mod_tempouti[j]=0.3129;
				mod_tempoutq[j]=1.9754;break;}
			case 53:{//-0.3129 + 1.9754i
				mod_tempouti[j]=-0.3129;
				mod_tempoutq[j]=1.9754;break;}
			case 54:{//0.3129 - 1.9754i
				mod_tempouti[j]=0.3129;
				mod_tempoutq[j]=-1.9754;break;}
			case 55:{//-0.3129 - 1.9754i
				mod_tempouti[j]=-0.3129;
				mod_tempoutq[j]=-1.9754;break;}
			case 56:{//2.3097 + 0.9567i
				mod_tempouti[j]=2.3097;
				mod_tempoutq[j]=0.9567;break;}
			case 57:{//-2.3097 + 0.9567i
				mod_tempouti[j]=-2.3097;
				mod_tempoutq[j]=0.9567;break;}
			case 58:{//2.3097 - 0.9567i
				mod_tempouti[j]=2.3097;
				mod_tempoutq[j]=-0.9567;break;}
			case 59:{//-2.3097 - 0.9567i
				mod_tempouti[j]=-2.3097;
				mod_tempoutq[j]=-0.9567;break;}
			case 60:{//2.4786 + 0.3263i
				mod_tempouti[j]=2.4786;
				mod_tempoutq[j]=0.3263;break;}
			case 61:{//-2.4786 + 0.3263i
				mod_tempouti[j]=-2.4786;
				mod_tempoutq[j]=0.3263;break;}
			case 62:{//2.4786 - 0.3263i
				mod_tempouti[j]=2.4786;
				mod_tempoutq[j]=-0.3263;break;}
			case 63:{//-2.4786 - 0.3263i
				mod_tempouti[j]=-2.4786;
				mod_tempoutq[j]=-0.3263;break;}
		    default:{
				mod_tempouti[j]=0;
				mod_tempoutq[j]=0;break;}
		}
	};
	apskmod_label2:for( int k = 0; k <340 ; k = k + 1 ){
		modi[k]=mod_tempouti[k];
		modq[k]=mod_tempoutq[k];};
};
