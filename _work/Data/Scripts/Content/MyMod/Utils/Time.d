// Wld_GetTimeMin and Wld_GetTimeHour originally by orcwarrior

const int GAME_MINUTE_TO_REAL_MILISECONDS = 4000;

func int Wld_CheckMinutes(var int a, var int B, var int mm)  //0=false, 1=true
{
	if Wld_IsTime(23,59,0,mm+B)|| Wld_IsTime(0,60-a,1,mm+B)||Wld_IsTime(1,59,2,mm+B)||Wld_IsTime(2,60-a,3,mm+B)||Wld_IsTime(3,60-a,4,mm+B)||Wld_IsTime(4,60-a,5,mm+B)||Wld_IsTime(5,60-a,6,mm+B)||Wld_IsTime(6,60-a,7,mm+B)||Wld_IsTime(7,60-a,8,mm+B)||Wld_IsTime(8,60-a,9,mm+B)||Wld_IsTime(9,60-a,10,mm+B)||Wld_IsTime(10,60-a,11,mm+B)||Wld_IsTime(11,60-a,12,mm+B)||Wld_IsTime(12,60-a,13,mm+B)||Wld_IsTime(13,60-a,14,mm+B)||Wld_IsTime(14,60-a,15,mm+B)||Wld_IsTime(15,60-a,16,mm+B)||Wld_IsTime(16,60-a,17,mm+B)||Wld_IsTime(17,60-a,18,mm+B)||Wld_IsTime(18,60-a,19,mm+B)||Wld_IsTime(19,60-a,20,mm+B)||Wld_IsTime(20,60-a,21,mm+B)||Wld_IsTime(21,60-a,22,mm+B)||Wld_IsTime(22,60-a,23,mm+B)
	{
		return 1;
	}
	else
	{
		return 0;
	};
};

func int Wld_GetTimeMin()
{
      var int mm;
      var int a;
      var int b;
      a = 1;
      B = 1;
      mm = 0;
      if Wld_IsTime(23,59,0,mm+B)||Wld_IsTime(0,60-a,1,mm+B)||Wld_IsTime(1,59,2,mm+B)||Wld_IsTime(2,60-a,3,mm+B)||Wld_IsTime(3,60-a,4,mm+B)||Wld_IsTime(4,60-a,5,mm+B)||Wld_IsTime(5,60-a,6,mm+B)||Wld_IsTime(6,60-a,7,mm+B)||Wld_IsTime(7,60-a,8,mm+B)||Wld_IsTime(8,60-a,9,mm+B)||Wld_IsTime(9,60-a,10,mm+B)||Wld_IsTime(10,60-a,11,mm+B)||Wld_IsTime(11,60-a,12,mm+B)||Wld_IsTime(12,60-a,13,mm+B)||Wld_IsTime(13,60-a,14,mm+B)||Wld_IsTime(14,60-a,15,mm+B)||Wld_IsTime(15,60-a,16,mm+B)||Wld_IsTime(16,60-a,17,mm+B)||Wld_IsTime(17,60-a,18,mm+B)||Wld_IsTime(18,60-a,19,mm+B)||Wld_IsTime(19,60-a,20,mm+B)||Wld_IsTime(20,60-a,21,mm+B)||Wld_IsTime(21,60-a,22,mm+B)||Wld_IsTime(22,60-a,23,mm+B){return mm;};   
      mm = 1;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 2;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 3;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 4;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 5;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 6;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 7;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 8;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 9;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 10;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 11;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 12;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 13;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 14;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 15;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 16;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 17;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 18;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 19;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 20;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 21;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 22;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 23;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 24;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 25;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 26;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 27;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 28;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 29;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 30;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 31;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 32;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 33;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 34;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 35;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 36;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 37;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 38;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 39;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 40;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 41;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 42;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 43;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 44;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 45;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 46;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 47;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 48;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 49;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 50;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 51;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 52;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 53;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 54;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 55;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 56;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 57;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 58;
      if ( Wld_CheckMinutes(a, B, mm) == 1 ){return mm;};   
      mm = 59;
      if Wld_IsTime(0,mm-a,1,00)||Wld_IsTime(1,mm-a,2,0)||Wld_IsTime(2,mm-a,3,0)||Wld_IsTime(3,mm-a,3,0)||Wld_IsTime(4,mm-a,5,00)||Wld_IsTime(5,mm-a,6,00)||Wld_IsTime(6,mm-a,7,00)||Wld_IsTime(7,mm-a,8,00)||Wld_IsTime(8,mm-a,9,00)||Wld_IsTime(9,mm-a,10,00)||Wld_IsTime(10,mm-a,11,00)||Wld_IsTime(11,mm-a,12,00)||Wld_IsTime(12,mm-a,13,00)||Wld_IsTime(13,mm-a,14,00)||Wld_IsTime(14,mm-a,15,00)||Wld_IsTime(15,mm-a,16,00)||Wld_IsTime(16,mm-a,17,00)||Wld_IsTime(17,mm-a,18,00)||Wld_IsTime(18,mm-a,19,00)||Wld_IsTime(19,mm-a,20,00)||Wld_IsTime(20,mm-a,21,00)||Wld_IsTime(21,mm-a,22,00)||Wld_IsTime(22,mm-a,23,00)||Wld_IsTime(23,mm-a,0,00){return mm;};   
      
};

func int Wld_GetTimeHour()
{
      var int hh;
      hh = 0;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 1;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 2;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 3;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 4;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 5;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 6;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 7;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 8;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 9;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 10;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 11;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 12;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 13;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 14;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 15;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 16;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 17;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 18;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 19;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 20;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 21;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 22;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
      hh = 23;
      if Wld_IsTime(hh,0,hh,59)
      {return hh;};
};



func int Wld_CalcIntervalMinutes(var int h1, var int m1, var int h2, var int m2)
{
	var int h_diff;
	var int m_diff;
	h_diff = Math_Abs(h2-h1);  //Using absolute value handles the situation when h1 <= 23 and h2 > 0
	m_diff = Math_Abs(m2-m1);
	return h_diff*60 + m_diff;
	// Explanation:
	// let's say h_diff = 1
	// 14:50 vs 15:02 is (60-50=10 minutes) + 2m
	// 15:02 vs 16:50 is (60-2=58 minutes) + 50 minutes
	// so (60 - m1) + m2, but that = 60 + m2-m1 = 60 + m_diff = h_diff*60 + m_diff
	// the same is true with h_diff > 1, but now we add extra 60 min per each hour, which is also h_diff*60 + m_diff
	// if h_diff is 0, then we can just use m_diff; but that is the same as h_diff*60 + m_diff because h_diff=0
};

