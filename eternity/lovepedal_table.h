
// lovepedal_table generated by DK/circ_table_gen.py -- do not modify manually

 // variables used
 // --sig_max  10.000000
 // --table_div  11.999114
 // --table_op  8.000000

struct tablelovepedal { // 1-dimensional function table
    float low;
    float high;
    float istep;
    int size;
    float data[];
};

template <int tab_size>
struct tablelovepedal_imp {
    float low;
    float high;
    float istep;
    int size;
    float data[tab_size];
    operator tablelovepedal&() const { return *(tablelovepedal*)this; }
};

 static tablelovepedal_imp<200> lovepedal_table __rt_data = {
	0,0.45831,159.2,200, {
	0.000000000000,0.000996831512,0.003291733624,0.005957534233,0.008807554579,
	0.011822878352,0.014965514201,0.018224010502,0.021579069365,0.025022527818,
	0.028542033137,0.032131364898,0.035781736478,0.039488243971,0.043244267885,
	0.047045865802,0.050887874939,0.054767087016,0.058679383886,0.062622133884,
	0.066592001282,0.070586815929,0.074603846133,0.078641295996,0.082696910375,
	0.086769199714,0.090856290891,0.094956946818,0.099069604305,0.103193235391,
	0.107326530653,0.111468636007,0.115618451302,0.119775267430,0.123938157793,
	0.128106534411,0.132279615266,0.136456913734,0.140637768680,0.144821778370,
	0.149008383037,0.153197252091,0.157387910974,0.161580088726,0.165773382572,
	0.169967571518,0.174162313345,0.178357428922,0.182552627189,0.186747764051,
	0.190942591721,0.195136995397,0.199330763925,0.203523806960,0.207715944383,
	0.211907106229,0.216097138692,0.220285988751,0.224473524916,0.228659708218,
	0.232844426103,0.237027651215,0.241209287071,0.245389315877,0.249567654792,
	0.253744293857,0.257919161814,0.262092255085,0.266263512244,0.270432934879,
	0.274600469910,0.278766123064,0.282929848344,0.287091654759,0.291251502323,
	0.295409402604,0.299565320710,0.303719270170,0.307871220401,0.312021186387,
	0.316169141185,0.320315100809,0.324459041373,0.328600979555,0.332740894025,
	0.336878801804,0.341014683657,0.345148556656,0.349280403234,0.353410240197,
	0.357538051180,0.361663852354,0.365787627973,0.369909392957,0.374029131195,
	0.378146855012,0.382262545535,0.386376208202,0.390487811667,0.394597326872,
	0.398704498655,0.402691220505,0.406428131835,0.409914243746,0.413166388415,
	0.416200268341,0.419030532164,0.421670845396,0.424133956397,0.426431757935,
	0.428575344604,0.430575066397,0.432440578673,0.434180888783,0.435804399557,
	0.437318949876,0.438731852523,0.440049929488,0.441279544913,0.442426635812,
	0.443496740745,0.444495026555,0.445426313317,0.446295097612,0.447105574236,
	0.447861656456,0.448566994903,0.449224995199,0.449838834401,0.450411476341,
	0.450945685937,0.451444042539,0.451908952390,0.452342660237,0.452747260175,
	0.453124705754,0.453476819416,0.453805301288,0.454111737397,0.454397607324,
	0.454664291350,0.454913077120,0.455145165857,0.455361678170,0.455563659455,
	0.455752084948,0.455927864436,0.456091846642,0.456244823332,0.456387533129,
	0.456520665088,0.456644862015,0.456760723579,0.456868809199,0.456969640750,
	0.457063705083,0.457151456373,0.457233318316,0.457309686168,0.457380928661,
	0.457447389778,0.457509390418,0.457567229941,0.457621187617,0.457671523972,
	0.457718482049,0.457762288577,0.457803155069,0.457841278844,0.457876843976,
	0.457910022186,0.457940973671,0.457969847875,0.457996784213,0.458021912744,
	0.458045354795,0.458067223555,0.458087624612,0.458106656471,0.458124411024,
	0.458140973997,0.458156425360,0.458170839719,0.458184286672,0.458196831144,
	0.458208533706,0.458219450861,0.458229635321,0.458239136260,0.458247999552,
	0.458256267992,0.458263981503,0.458271177330,0.458277890214,0.458284152570,
	0.458289994633,0.458295444612,0.458300528820,0.458305271806,0.458309696471
	}
};

double always_inline lovepedalclip(double x) {
    double f = fabs(x);
    f = f * lovepedal_table.istep;
    int i = static_cast<int>(f);
    if (i < 0) {
        f = lovepedal_table.data[0];
    } else if (i >= lovepedal_table.size-1) {
        f = lovepedal_table.data[lovepedal_table.size-1];
    } else {
    f -= i;
    f = lovepedal_table.data[i]*(1-f) + lovepedal_table.data[i+1]*f;
    }
    return copysign(f, x);
}
