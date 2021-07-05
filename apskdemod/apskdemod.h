// Title:apsk mapping IP.
// Reason:I thought Communicate Mapping born from the star in the sky.So I write this code remember for Mikołaj Kopernik.
// Matlab Simulate:M = [8 12 20 24];radii = [0.8 1.2 2 2.5];function x=(0:63); y = apskmod(x,M,radii);
// Author:CaoHuiyang at HTGD-THZ Research and Department.
// Web:https://www.htgd.com.cn/
// e-mail:caohy@htgd.com.cn;QQ:2685997598


#ifndef _apskdemod_h_
#define _apskdemod_h_

void apskdemod(int demod_datout[340],
		//float demod_datout2[340],float demod_datout3[340],float demod_datout4[340],
		float demodi[340],float demodq[340]);

#endif
