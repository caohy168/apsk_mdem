// Title:apsk demapping IP.
// Reason:I thought Communicate Demapping thought from the earth.So I write this code contribute to human.
// Matlab Simulate:M = [8 12 20 24];radii = [0.8 1.2 2 2.5];function x=(0:63); y = apskmod(x,M,radii);
// Author:CaoHuiyang at HTGD-THZ Research and Department.
// Web:https://www.htgd.com.cn/
// e-mail:caohy@htgd.com.cn;QQ:2685997598

#include "apskdemod.h"
#include<stdio.h>
#include<math.h>
#define pi 3.1415926
void apskdemod(int demod_datout[340],float demodi[340],float demodq[340]) {
	int demod_tempout[340],demod_del[340];
	float demod_tempouti[340];
	float demod_tempoutq[340];
	float demod_r[340],demod_r2[340],demod_angle_tan[340],demod_angle_tan2[340],demod_angle_cos[340],demod_angle_sin[340];
	//r--radius,tan2-follow the c lib.
	float demod_tan,demod_cos,demod_sin;
	int circle_number[340],circle1_sector,circle2_sector,circle3_sector,circle4_sector;
	for( int i = 0; i <340 ; i = i + 1 )demod_tempout[i]=0,demod_del[i]=0;
	for( int i = 0; i <340 ; i = i + 1 )demod_tempouti[i]=demodi[i];
	for( int i = 0; i <340 ; i = i + 1 )demod_tempoutq[i]=demodq[i];
	for( int i = 0; i <340 ; i = i + 1 ){
		demod_r2[i]=pow(demod_tempouti[i],2)+pow(demod_tempoutq[i],2);
		demod_r[i]=sqrt(demod_r2[i]);
		if (demod_r[i]<=1) {
		 demod_r[i]=0.8;
		 circle_number[i]=1;}
		else if (demod_r[i]>1 && demod_r[i]<=1.6) {
		 demod_r[i]=1.2;
		 circle_number[i]=2;}
		else if (demod_r[i]>1.6 && demod_r[i]<=2.25) {
		 demod_r[i]=2;
		 circle_number[i]=3;}
		else {
		 demod_r[i]=2.5;
		 circle_number[i]=4;}
		demod_tan=demod_tempoutq[i]/demod_tempouti[i];
		demod_cos=demod_tempouti[i]/demod_r[i];
		demod_sin=demod_tempoutq[i]/demod_r[i];
		demod_angle_tan2[i]=atan2(demod_tempoutq[i],demod_tempouti[i])*180/pi;
		demod_angle_tan[i]=atan(demod_tan)*180/pi;
		demod_angle_cos[i]=acos(demod_cos)*180/pi;
		demod_angle_sin[i]=asin(demod_sin)*180/pi;
		switch(circle_number[i]){
			case 1:
				if (demod_angle_tan2[i] >= 0   && demod_angle_tan2[i] < 45) {
					circle1_sector=1;
					demod_tempout[i]=0;}
				else if (demod_angle_tan2[i] >= 45  && demod_angle_tan2[i] < 90) {
					circle1_sector=2;
					demod_tempout[i]=4;}
				else if (demod_angle_tan2[i] >= 90  && demod_angle_tan2[i] < 135) {
					circle1_sector=3;
					demod_tempout[i]=5;}
				else if (demod_angle_tan2[i] >= 135 && demod_angle_tan2[i] < 180) {
					circle1_sector=4;
					demod_tempout[i]=1;}
				else if (demod_angle_tan2[i] >=-180 && demod_angle_tan2[i] <-135) {
					circle1_sector=5;
					demod_tempout[i]=3;}
				else if (demod_angle_tan2[i] >=-135 && demod_angle_tan2[i] < -90) {
					circle1_sector=6;
					demod_tempout[i]=7;}
				else if (demod_angle_tan2[i] >=-90  && demod_angle_tan2[i] < -45) {
					circle1_sector=7;
					demod_tempout[i]=6;}
				else if (demod_angle_tan2[i] >=-45  && demod_angle_tan2[i] <   0) {
					circle1_sector=8;
					demod_tempout[i]=2;}
				else {
					circle1_sector=1;
					demod_tempout[i]=0;}
			break;
			case 2:
				if (demod_angle_tan2[i] >= 0   && demod_angle_tan2[i] < 30) {
					circle2_sector=1;
					demod_tempout[i]=12;}
				else if (demod_angle_tan2[i] >= 30  && demod_angle_tan2[i] < 60) {
					circle2_sector=2;
					demod_tempout[i]=8;}
				else if (demod_angle_tan2[i] >= 60  && demod_angle_tan2[i] < 90) {
					circle2_sector=3;
					demod_tempout[i]=24;}
				else if (demod_angle_tan2[i] >= 90 && demod_angle_tan2[i] < 120) {
					circle2_sector=4;
					demod_tempout[i]=25;}
				else if (demod_angle_tan2[i] >= 120 && demod_angle_tan2[i]< 150) {
					circle2_sector=5;
					demod_tempout[i]=9;}
				else if (demod_angle_tan2[i] >= 150 && demod_angle_tan2[i]< 180) {
					circle2_sector=6;
					demod_tempout[i]=13;}
				else if (demod_angle_tan2[i] >=-180 && demod_angle_tan2[i]<-150) {
					circle2_sector=7;
					demod_tempout[i]=15;}
				else if (demod_angle_tan2[i] >=-150 && demod_angle_tan2[i]<-120) {
					circle2_sector=8;
					demod_tempout[i]=11;}
				else if (demod_angle_tan2[i] >=-120 && demod_angle_tan2[i] <-90) {
					circle2_sector=9;
					demod_tempout[i]=27;}
				else if (demod_angle_tan2[i] >= -90 && demod_angle_tan2[i] <-60) {
					circle2_sector=10;
					demod_tempout[i]=26;}
				else if (demod_angle_tan2[i] >= -60 && demod_angle_tan2[i] <-30) {
					circle2_sector=11;
					demod_tempout[i]=10;}
				else if (demod_angle_tan2[i] >= -30 && demod_angle_tan2[i] < 0 ) {
					circle2_sector=12;
					demod_tempout[i]=14;}
				else {
					circle2_sector=1;
					demod_tempout[i]=12;}
		 	break;
			case 3:
				if (demod_angle_tan2[i] >= 0   && demod_angle_tan2[i] < 18) {
					circle3_sector=1;
					demod_tempout[i]=28;}
				else if (demod_angle_tan2[i] >= 18  && demod_angle_tan2[i] < 36) {
					circle3_sector=2;
					demod_tempout[i]=20;}
				else if (demod_angle_tan2[i] >= 36  && demod_angle_tan2[i] < 54) {
					circle3_sector=3;
					demod_tempout[i]=16;}
				else if (demod_angle_tan2[i] >= 54 && demod_angle_tan2[i] < 72) {
					circle3_sector=4;
					demod_tempout[i]=48;}
				else if (demod_angle_tan2[i] >= 72 && demod_angle_tan2[i]< 90) {
					circle3_sector=5;
					demod_tempout[i]=52;}
				else if (demod_angle_tan2[i] >= 90 && demod_angle_tan2[i]< 108) {
					circle3_sector=6;
					demod_tempout[i]=53;}
				else if (demod_angle_tan2[i] >=108 && demod_angle_tan2[i]<126) {
					circle3_sector=7;
					demod_tempout[i]=49;}
				else if (demod_angle_tan2[i] >=126 && demod_angle_tan2[i]<144) {
					circle3_sector=8;
					demod_tempout[i]=17;}
				else if (demod_angle_tan2[i] >=144 && demod_angle_tan2[i] <162) {
					circle3_sector=9;
					demod_tempout[i]=21;}
				else if (demod_angle_tan2[i] >=162 && demod_angle_tan2[i] <180) {
					circle3_sector=10;
					demod_tempout[i]=29;}
				else if (demod_angle_tan2[i] >=-180 && demod_angle_tan2[i] <-162) {
					circle3_sector=11;
					demod_tempout[i]=31;}
				else if (demod_angle_tan2[i] >=-162  && demod_angle_tan2[i]<-144) {
					circle3_sector=12;
					demod_tempout[i]=23;}
				else if (demod_angle_tan2[i] >=-144  && demod_angle_tan2[i]<-126) {
					circle3_sector=13;
					demod_tempout[i]=19;}
				else if (demod_angle_tan2[i] >=-126 && demod_angle_tan2[i] <-108) {
					circle3_sector=14;
					demod_tempout[i]=51;}
				else if (demod_angle_tan2[i] >=-108 && demod_angle_tan2[i]<-90) {
					circle3_sector=15;
					demod_tempout[i]=55;}
				else if (demod_angle_tan2[i] >=-90 && demod_angle_tan2[i]<-72) {
					circle3_sector=16;
					demod_tempout[i]=54;}
				else if (demod_angle_tan2[i] >=-72 && demod_angle_tan2[i]<-54) {
					circle3_sector=17;
					demod_tempout[i]=50;}
				else if (demod_angle_tan2[i] >=-54 && demod_angle_tan2[i]<-36) {
					circle3_sector=18;
					demod_tempout[i]=18;}
				else if (demod_angle_tan2[i] >=-36 && demod_angle_tan2[i] <-18){
					circle3_sector=19;
					demod_tempout[i]=22;}
				else if (demod_angle_tan2[i] >= -18 && demod_angle_tan2[i] <0) {
					circle3_sector=20;
					demod_tempout[i]=30;}
				else {
					circle3_sector=1;
					demod_tempout[i]=28;}
			break;
			case 4:
				if (demod_angle_tan2[i] >= 0   && demod_angle_tan2[i] < 15) {
					circle4_sector=1;
					demod_tempout[i]=60;}
				else if (demod_angle_tan2[i] >= 15  && demod_angle_tan2[i] < 30) {
					circle4_sector=2;
					demod_tempout[i]=56;}
				else if (demod_angle_tan2[i] >= 30  && demod_angle_tan2[i] < 45) {
					circle4_sector=3;
					demod_tempout[i]=40;}
				else if (demod_angle_tan2[i] >= 45 && demod_angle_tan2[i] < 60) {
					circle4_sector=4;
					demod_tempout[i]=44;}
				else if (demod_angle_tan2[i] >= 60 && demod_angle_tan2[i]< 75) {
					circle4_sector=5;
					demod_tempout[i]=36;}
				else if (demod_angle_tan2[i] >= 75 && demod_angle_tan2[i]< 90) {
					circle4_sector=6;
					demod_tempout[i]=32;}
				else if (demod_angle_tan2[i] >= 90 && demod_angle_tan2[i]<105) {
					circle4_sector=7;
					demod_tempout[i]=33;}
				else if (demod_angle_tan2[i] >=105 && demod_angle_tan2[i]<120) {
					circle4_sector=8;
					demod_tempout[i]=37;}
				else if (demod_angle_tan2[i] >=120 && demod_angle_tan2[i] <135) {
					circle4_sector=9;
					demod_tempout[i]=46;}
				else if (demod_angle_tan2[i] >=135 && demod_angle_tan2[i] <150) {
					circle4_sector=10;
					demod_tempout[i]=41;}
				else if (demod_angle_tan2[i] >=150 && demod_angle_tan2[i] <165) {
					circle4_sector=11;
					demod_tempout[i]=57;}
				else if (demod_angle_tan2[i] >=165  && demod_angle_tan2[i]<180) {
					circle4_sector=12;
					demod_tempout[i]=61;}
				else if (demod_angle_tan2[i] >=-180  && demod_angle_tan2[i]<-165) {
					circle4_sector=13;
					demod_tempout[i]=63;}
				else if (demod_angle_tan2[i] >=-165 && demod_angle_tan2[i] <-150) {
					circle4_sector=14;
					demod_tempout[i]=59;}
				else if (demod_angle_tan2[i] >=-150 && demod_angle_tan2[i]<-135) {
					circle4_sector=15;
					demod_tempout[i]=43;}
				else if (demod_angle_tan2[i] >=-135 && demod_angle_tan2[i]<-120) {
					circle4_sector=16;
					demod_tempout[i]=47;}
				else if (demod_angle_tan2[i] >=-120 && demod_angle_tan2[i]<-105) {
					circle4_sector=17;
					demod_tempout[i]=39;}
				else if (demod_angle_tan2[i] >=-105 && demod_angle_tan2[i]<-90) {
					circle4_sector=18;
					//demod_tempout[i]=35;}
					demod_tempout[i]=35;}
				else if (demod_angle_tan2[i] >=-90 && demod_angle_tan2[i] <-75){
					circle4_sector=19;
					demod_tempout[i]=34;}
				else if (demod_angle_tan2[i] >=-75 && demod_angle_tan2[i] <-60) {
					circle4_sector=20;
					demod_tempout[i]=38;}
				else if (demod_angle_tan2[i] >=-60 && demod_angle_tan2[i]<-45) {
					circle4_sector=21;
					demod_tempout[i]=46;}
				else if (demod_angle_tan2[i] >=-45 && demod_angle_tan2[i]<-30) {
					circle4_sector=22;
					demod_tempout[i]=42;}
				else if (demod_angle_tan2[i] >=-30 && demod_angle_tan2[i] <-15){
					circle4_sector=23;
					demod_tempout[i]=58;}
				else if (demod_angle_tan2[i] >= -15 && demod_angle_tan2[i] <0) {
					circle4_sector=24;
					demod_tempout[i]=62;}
				else {
					circle4_sector=1;
					demod_tempout[i]=60;}
			break;
		 default:
		 break;
		}
	};
	/*//列 61 至 64
	//2.4786 + 0.3263i  -2.4786 + 0.3263i   2.4786 - 0.3263i  -2.4786 - 0.3263i
	for( int j = 0; j <340 ; j = j + 1 ){
		//列 1 至 10
		//0.7391 + 0.3061i  -0.7391 + 0.3061i   0.7391 - 0.3061i  -0.7391 - 0.3061i   0.3061 + 0.7391i  -0.3061 + 0.7391i   0.3061 - 0.7391i  -0.3061 - 0.7391i   0.8485 + 0.8485i  -0.8485 + 0.8485i
		if	   ((demod_tempouti[j] == 0.7391)&&(demod_tempoutq[j] ==+ 0.3061))demod_tempout[j]=0;
		else if((demod_tempouti[j] ==-0.7391)&&(demod_tempoutq[j] ==+ 0.3061))demod_tempout[j]=1;
		else if((demod_tempouti[j] == 0.7391)&&(demod_tempoutq[j] ==- 0.3061))demod_tempout[j]=2;
		else if((demod_tempouti[j] ==-0.7391)&&(demod_tempoutq[j] ==- 0.3061))demod_tempout[j]=3;
		else if((demod_tempouti[j] == 0.3061)&&(demod_tempoutq[j] ==+ 0.7391))demod_tempout[j]=4;
		else if((demod_tempouti[j] ==-0.3061)&&(demod_tempoutq[j] ==+ 0.7391))demod_tempout[j]=5;
		else if((demod_tempouti[j] == 0.3061)&&(demod_tempoutq[j] ==- 0.7391))demod_tempout[j]=6;
		else if((demod_tempouti[j] ==-0.3061)&&(demod_tempoutq[j] ==- 0.7391))demod_tempout[j]=7;
		else if((demod_tempouti[j] == 0.8485)&&(demod_tempoutq[j] ==+ 0.8485))demod_tempout[j]=8;
		else if((demod_tempouti[j] ==-0.8485)&&(demod_tempoutq[j] ==+ 0.8485))demod_tempout[j]=9;
		//列 11 至 20
		//0.8485 - 0.8485i  -0.8485 - 0.8485i   1.1591 + 0.3106i  -1.1591 + 0.3106i   1.1591 - 0.3106i  -1.1591 - 0.3106i   1.4142 + 1.4142i  -1.4142 + 1.4142i   1.4142 - 1.4142i  -1.4142 - 1.4142i
		else if((demod_tempouti[j] == 0.8485)&&(demod_tempoutq[j] ==- 0.8485))demod_tempout[j]=10;
		else if((demod_tempouti[j] ==-0.8485)&&(demod_tempoutq[j] ==- 0.8485))demod_tempout[j]=11;
		else if((demod_tempouti[j] == 1.1591)&&(demod_tempoutq[j] ==+ 0.3106))demod_tempout[j]=12;
		else if((demod_tempouti[j] ==-1.1591)&&(demod_tempoutq[j] ==+ 0.3106))demod_tempout[j]=13;
		else if((demod_tempouti[j] == 1.1591)&&(demod_tempoutq[j] ==- 0.3106))demod_tempout[j]=14;
		else if((demod_tempouti[j] ==-1.1591)&&(demod_tempoutq[j] ==- 0.3106))demod_tempout[j]=15;
		else if((demod_tempouti[j] == 1.4142)&&(demod_tempoutq[j] ==+ 1.4142))demod_tempout[j]=16;
		else if((demod_tempouti[j] ==-1.4142)&&(demod_tempoutq[j] ==+ 1.4142))demod_tempout[j]=17;
		else if((demod_tempouti[j] == 1.4142)&&(demod_tempoutq[j] ==- 1.4142))demod_tempout[j]=18;
		else if((demod_tempouti[j] ==-1.4142)&&(demod_tempoutq[j] ==- 1.4142))demod_tempout[j]=19;
		//列 21 至 30
		//1.7820 + 0.9080i  -1.7820 + 0.9080i   1.7820 - 0.9080i  -1.7820 - 0.9080i   0.3106 + 1.1591i  -0.3106 + 1.1591i   0.3106 - 1.1591i  -0.3106 - 1.1591i   1.9754 + 0.3129i  -1.9754 + 0.3129i
		else if((demod_tempouti[j] == 1.7820)&&(demod_tempoutq[j] ==+ 0.9080))demod_tempout[j]=20;
		else if((demod_tempouti[j] ==-1.7820)&&(demod_tempoutq[j] ==+ 0.9080))demod_tempout[j]=21;
		else if((demod_tempouti[j] == 1.7820)&&(demod_tempoutq[j] ==- 0.9080))demod_tempout[j]=22;
		else if((demod_tempouti[j] ==-1.7820)&&(demod_tempoutq[j] ==- 0.9080))demod_tempout[j]=23;
		else if((demod_tempouti[j] == 0.3106)&&(demod_tempoutq[j] ==+ 1.1591))demod_tempout[j]=24;
		else if((demod_tempouti[j] ==-0.3106)&&(demod_tempoutq[j] ==+ 1.1591))demod_tempout[j]=25;
		else if((demod_tempouti[j] == 0.3106)&&(demod_tempoutq[j] ==- 1.1591))demod_tempout[j]=26;
		else if((demod_tempouti[j] ==-0.3106)&&(demod_tempoutq[j] ==- 1.1591))demod_tempout[j]=27;
		else if((demod_tempouti[j] == 1.9754)&&(demod_tempoutq[j] ==+ 0.3129))demod_tempout[j]=28;
		else if((demod_tempouti[j] ==-1.9754)&&(demod_tempoutq[j] ==+ 0.3129))demod_tempout[j]=29;
		//列 31 至 40
		//1.9754 - 0.3129i  -1.9754 - 0.3129i   0.3263 + 2.4786i  -0.3263 + 2.4786i   0.3263 - 2.4786i  -0.3263 - 2.4786i   0.9567 + 2.3097i  -0.9567 + 2.3097i   0.9567 - 2.3097i  -0.9567 - 2.3097i
		else if((demod_tempouti[j] == 1.9754)&&(demod_tempoutq[j] ==- 0.3129))demod_tempout[j]=30;
		else if((demod_tempouti[j] ==-1.9754)&&(demod_tempoutq[j] ==- 0.3129))demod_tempout[j]=31;
		else if((demod_tempouti[j] == 0.3263)&&(demod_tempoutq[j] ==+ 2.4786))demod_tempout[j]=32;
		else if((demod_tempouti[j] ==-0.3263)&&(demod_tempoutq[j] ==+ 2.4786))demod_tempout[j]=33;
		else if((demod_tempouti[j] == 0.3263)&&(demod_tempoutq[j] ==- 2.4786))demod_tempout[j]=34;
		else if((demod_tempouti[j] ==-0.3263)&&(demod_tempoutq[j] ==- 2.4786))demod_tempout[j]=35;
		else if((demod_tempouti[j] == 0.9567)&&(demod_tempoutq[j] ==+ 2.3097))demod_tempout[j]=36;
		else if((demod_tempouti[j] ==-0.9567)&&(demod_tempoutq[j] ==+ 2.3097))demod_tempout[j]=37;
		else if((demod_tempouti[j] == 0.9567)&&(demod_tempoutq[j] ==- 2.3097))demod_tempout[j]=38;
		else if((demod_tempouti[j] ==-0.9567)&&(demod_tempoutq[j] ==- 2.3097))demod_tempout[j]=39;
		//列 41 至 50
		//1.9834 + 1.5219i  -1.9834 + 1.5219i   1.9834 - 1.5219i  -1.9834 - 1.5219i   1.5219 + 1.9834i  -1.5219 + 1.9834i   1.5219 - 1.9834i  -1.5219 - 1.9834i   0.9080 + 1.7820i  -0.9080 + 1.7820i
		else if((demod_tempouti[j] == 1.9834)&&(demod_tempoutq[j] ==+ 1.5219))demod_tempout[j]=40;
		else if((demod_tempouti[j] ==-1.9834)&&(demod_tempoutq[j] ==+ 1.5219))demod_tempout[j]=41;
		else if((demod_tempouti[j] == 1.9834)&&(demod_tempoutq[j] ==- 1.5219))demod_tempout[j]=42;
		else if((demod_tempouti[j] ==-1.9834)&&(demod_tempoutq[j] ==- 1.5219))demod_tempout[j]=43;
		else if((demod_tempouti[j] == 1.5219)&&(demod_tempoutq[j] ==+ 1.9834))demod_tempout[j]=44;
		else if((demod_tempouti[j] ==-1.5219)&&(demod_tempoutq[j] ==+ 1.9834))demod_tempout[j]=45;
		else if((demod_tempouti[j] == 1.5219)&&(demod_tempoutq[j] ==- 1.9834))demod_tempout[j]=46;
		else if((demod_tempouti[j] ==-1.5219)&&(demod_tempoutq[j] ==- 1.9834))demod_tempout[j]=47;
		else if((demod_tempouti[j] == 0.9080)&&(demod_tempoutq[j] ==+ 1.7820))demod_tempout[j]=48;
		else if((demod_tempouti[j] ==-0.9080)&&(demod_tempoutq[j] ==+ 1.7820))demod_tempout[j]=49;
		//列 51 至 60
		//0.9080 - 1.7820i  -0.9080 - 1.7820i   0.3129 + 1.9754i  -0.3129 + 1.9754i   0.3129 - 1.9754i  -0.3129 - 1.9754i   2.3097 + 0.9567i  -2.3097 + 0.9567i   2.3097 - 0.9567i  -2.3097 - 0.9567i
		else if((demod_tempouti[j] == 0.9080)&&(demod_tempoutq[j] ==- 1.7820))demod_tempout[j]=50;
		else if((demod_tempouti[j] ==-0.9080)&&(demod_tempoutq[j] ==- 1.7820))demod_tempout[j]=51;
		else if((demod_tempouti[j] == 0.3129)&&(demod_tempoutq[j] ==+ 1.9754))demod_tempout[j]=52;
		else if((demod_tempouti[j] ==-0.3129)&&(demod_tempoutq[j] ==+ 1.9754))demod_tempout[j]=53;
		else if((demod_tempouti[j] == 0.3129)&&(demod_tempoutq[j] ==- 1.9754))demod_tempout[j]=54;
		else if((demod_tempouti[j] ==-0.3129)&&(demod_tempoutq[j] ==- 1.9754))demod_tempout[j]=55;
		else if((demod_tempouti[j] == 2.3097)&&(demod_tempoutq[j] ==+ 0.9567))demod_tempout[j]=56;
		else if((demod_tempouti[j] ==-2.3097)&&(demod_tempoutq[j] ==+ 0.9567))demod_tempout[j]=57;
		else if((demod_tempouti[j] == 2.3097)&&(demod_tempoutq[j] ==- 0.9567))demod_tempout[j]=58;
		else if((demod_tempouti[j] ==-2.3097)&&(demod_tempoutq[j] ==- 0.9567))demod_tempout[j]=59;
		//列 61 至 64
		//2.4786 + 0.3263i  -2.4786 + 0.3263i   2.4786 - 0.3263i  -2.4786 - 0.3263i
		else if((demod_tempouti[j] == 2.4786)&&(demod_tempoutq[j] ==+ 0.3263))demod_tempout[j]=60;
		else if((demod_tempouti[j] ==-2.4786)&&(demod_tempoutq[j] ==+ 0.3263))demod_tempout[j]=61;
		else if((demod_tempouti[j] == 2.4786)&&(demod_tempoutq[j] ==- 0.3263))demod_tempout[j]=62;
		else if((demod_tempouti[j] ==-2.4786)&&(demod_tempoutq[j] ==- 0.3263))demod_tempout[j]=63;
		else  demod_tempout[j]=0;
	};*/
	for( int k = 0; k <340 ; k = k + 1 ){
//		demod_datout1[k]=demod_angle_tan[k];
//		demod_datout2[k]=demod_angle_cos[k];
//		demod_datout3[k]=demod_angle_sin[k];
//		demod_datout4[k]=demod_angle_tan2[k];
//		if(demod_tempout[k]==35){
//			if(demod_tempout[k+1]==46)demod_del[k]=45;
//			demod_tempout[k+1]=demod_del[k+1];
//			else demod_del[k]=demod_tempout[k];
		demod_datout[k]=demod_tempout[k];}
}
