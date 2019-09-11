// generated automatically
// DO NOT MODIFY!
declare id "sloopyblue";
declare name "SloopyBlue";
declare category "Extern";
declare shortname "SloopyBlue";
declare description "SloopyBlue";

import("stdfaust.lib");

p1 = pre : fi.iir((b0/a0,b1/a0,b2/a0,b3/a0,b4/a0),(a1/a0,a2/a0,a3/a0,a4/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;



    Gain = vslider("Gain[name:Gain]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);

    b0 = Gain*fs*(fs*(fs*(6.34722717589379e-20*fs + 1.66292441194355e-13) + 1.03331712566936e-9) - 2.52736496790542e-20) + fs*(fs*(3.17361358794689e-15*fs + 1.2993195540595e-10) + 5.11543131519487e-7);

    b1 = Gain*fs*(pow(fs,2)*(-2.53889087035751e-19*fs - 3.32584882388709e-13) - 5.05472993581083e-20) + fs*(-6.34722717589379e-15*pow(fs,2) + 1.02308626303897e-6);

    b2 = Gain*pow(fs,2)*(3.80833630553627e-19*pow(fs,2) - 2.06663425133872e-9) - 2.59863910811899e-10*pow(fs,2);

    b3 = Gain*fs*(pow(fs,2)*(-2.53889087035751e-19*fs + 3.32584882388709e-13) + 5.05472993581083e-20) + fs*(6.34722717589379e-15*pow(fs,2) - 1.02308626303897e-6);

    b4 = Gain*fs*(fs*(fs*(6.34722717589379e-20*fs - 1.66292441194355e-13) + 1.03331712566936e-9) + 2.52736496790542e-20) + fs*(fs*(-3.17361358794689e-15*fs + 1.2993195540595e-10) - 5.11543131519487e-7);

    a0 = Gain*(fs*(fs*(fs*(6.34730676451394e-20*fs + 2.6038250533261e-15) + 1.03708700401282e-11) + 5.00430850711826e-10) - 1.54816431025375e-23) + fs*(fs*(3.17365338225697e-15*fs + 1.30088623884671e-10) + 5.17897058502163e-7) + 2.49902074166263e-5;

    a1 = Gain*(fs*(pow(fs,2)*(-2.53892270580558e-19*fs - 5.2076501066522e-15) + 1.00086170142365e-9) - 6.19265724101498e-23) + fs*(-6.34730676451394e-15*pow(fs,2) + 1.03579411700433e-6) + 9.99608296665051e-5;

    a2 = Gain*(pow(fs,2)*(3.80838405870837e-19*pow(fs,2) - 2.07417400802565e-11) - 9.28898586152247e-23) - 2.60177247769342e-10*pow(fs,2) + 0.000149941244499758;

    a3 = Gain*(fs*(pow(fs,2)*(-2.53892270580558e-19*fs + 5.2076501066522e-15) - 1.00086170142365e-9) - 6.19265724101498e-23) + fs*(6.34730676451394e-15*pow(fs,2) - 1.03579411700433e-6) + 9.99608296665051e-5;

    a4 = Gain*(fs*(fs*(fs*(6.34730676451394e-20*fs - 2.6038250533261e-15) + 1.03708700401282e-11) - 5.00430850711826e-10) - 1.54816431025375e-23) + fs*(fs*(-3.17365338225697e-15*fs + 1.30088623884671e-10) - 5.17897058502163e-7) + 2.49902074166263e-5;
};

p2 = pre : fi.iir((b0/a0,b1/a0,b2/a0),(a1/a0,a2/a0)) : bluesbreaker_clip_clip with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;


    b0 = -4.26293887776618e-5*fs;

    b1 = 0;

    b2 = 4.26293887776618e-5*fs;

    a0 = fs*(4.10271246913054e-10*fs + 1.13091570440766e-6) + 0.000451093300755755;

    a1 = -8.20542493826108e-10*pow(fs,2) + 0.00090218660151151;

    a2 = fs*(4.10271246913054e-10*fs - 1.13091570440766e-6) + 0.000451093300755755;
};

    bluesbreaker_clip_clip = ffunction(float bluesbreaker_clipclip(float), "bluesbreaker_clip_table.h", "");

p3 = pre : fi.iir((b0/a0,b1/a0,b2/a0,b3/a0,b4/a0),(a1/a0,a2/a0,a3/a0,a4/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;



    Volume = vslider("Volume[name:Volume]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);


    Tone = vslider("Tone[name:Tone]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);

    b0 = Tone*(Volume*pow(fs,2)*(6.09014449399911e-16*fs + 1.29577542425513e-16) + pow(fs,2)*(6.09014449399911e-20*fs + 3.04507224699956e-17)) + Volume*fs*(1.21802889879982e-12*fs + 2.59155084851026e-13) + fs*(fs*(1.65651930236776e-20*fs + 2.51888376271803e-16) + 6.09014449399911e-14);

    b1 = Tone*(-1.21802889879982e-15*Volume*pow(fs,3) - 1.21802889879982e-19*pow(fs,3)) + 5.18310169702052e-13*Volume*fs + fs*(-3.31303860473552e-20*pow(fs,2) + 1.21802889879982e-13);

    b2 = Tone*(-2.59155084851026e-16*Volume*pow(fs,2) - 6.09014449399911e-17*pow(fs,2)) - 2.43605779759965e-12*Volume*pow(fs,2) - 5.03776752543607e-16*pow(fs,2);

    b3 = Tone*(1.21802889879982e-15*Volume*pow(fs,3) + 1.21802889879982e-19*pow(fs,3)) - 5.18310169702052e-13*Volume*fs + fs*(3.31303860473552e-20*pow(fs,2) - 1.21802889879982e-13);

    b4 = Tone*(Volume*pow(fs,2)*(-6.09014449399911e-16*fs + 1.29577542425513e-16) + pow(fs,2)*(-6.09014449399911e-20*fs + 3.04507224699956e-17)) + Volume*fs*(1.21802889879982e-12*fs - 2.59155084851026e-13) + fs*(fs*(-1.65651930236776e-20*fs + 2.51888376271803e-16) - 6.09014449399911e-14);

    a0 = Tone*(Tone*(Volume*(Volume*pow(fs,3)*(3.04507224699956e-20*fs + 6.47887712127565e-21) + pow(fs,2)*(fs*(-3.04507224699956e-20*fs - 1.52318401121191e-17) - 3.23943856063783e-18)) + fs*(fs*(fs*(-3.04507224699956e-19*fs - 1.53842459780814e-16) - 7.94747659274081e-16) - 1.61971928031891e-16)) + Volume*(Volume*pow(fs,2)*(fs*(-3.04507224699956e-20*fs + 6.08888759183759e-17) + 1.29577542425513e-17) + fs*(fs*(fs*(3.04507224699956e-20*fs - 4.56635146833781e-17) - 3.04634858579245e-14) - 6.47887712127565e-15)) + fs*(fs*(fs*(3.04507224699956e-19*fs - 4.55111088174157e-16) - 3.06859416672659e-13) - 1.58918109300778e-12) - 3.23943856063783e-13) + Volume*(Volume*fs*(fs*(fs*(-8.28259651183879e-21*fs - 1.38371501677539e-16) - 1.21856690475597e-13) - 2.59155084851026e-14) + fs*(fs*(fs*(8.28259651183879e-21*fs + 1.42512799933459e-16) + 1.60591718844371e-13) + 2.80664956893661e-14)) + fs*(fs*(fs*(8.28259651183879e-20*fs + 1.42554254329e-15) + 1.61304995390944e-12) + 8.4400805994353e-12) + 2.01233923386822e-12;

    a1 = Tone*(Tone*(Volume*(Volume*pow(fs,3)*(-1.21802889879982e-19*fs - 1.29577542425513e-20) + pow(fs,3)*(1.21802889879982e-19*fs + 3.04636802242381e-17)) + fs*(pow(fs,2)*(1.21802889879982e-18*fs + 3.07684919561628e-16) - 3.23943856063783e-16)) + Volume*(Volume*pow(fs,3)*(1.21802889879982e-19*fs - 1.21777751836752e-16) + fs*(pow(fs,2)*(-1.21802889879982e-19*fs + 9.13270293667562e-17) - 1.29577542425513e-14)) + fs*(pow(fs,2)*(-1.21802889879982e-18*fs + 9.10222176348315e-16) - 3.17836218601556e-12) - 1.29577542425513e-12) + Volume*(Volume*fs*(pow(fs,2)*(3.31303860473552e-20*fs + 2.76743003355078e-16) - 5.18310169702052e-14) + fs*(pow(fs,2)*(-3.31303860473552e-20*fs - 2.85025599866917e-16) + 5.61329913787323e-14)) + fs*(pow(fs,2)*(-3.31303860473552e-19*fs - 2.85108508658001e-15) + 1.68801611988706e-11) + 8.04935693547287e-12;

    a2 = Tone*(Tone*(Volume*(1.82704334819973e-19*Volume*pow(fs,4) + pow(fs,2)*(-1.82704334819973e-19*pow(fs,2) + 6.47887712127565e-18)) + pow(fs,2)*(-1.82704334819973e-18*pow(fs,2) + 1.58949531854816e-15)) + Volume*(Volume*pow(fs,2)*(-1.82704334819973e-19*pow(fs,2) - 2.59155084851026e-17) + pow(fs,2)*(1.82704334819973e-19*pow(fs,2) + 6.0926971715849e-14)) + pow(fs,2)*(1.82704334819973e-18*pow(fs,2) + 6.13718833345318e-13) - 1.9436631363827e-12) + Volume*(Volume*pow(fs,2)*(-4.96955790710328e-20*pow(fs,2) + 2.43713380951195e-13) + pow(fs,2)*(4.96955790710328e-20*pow(fs,2) - 3.21183437688743e-13)) + pow(fs,2)*(4.96955790710328e-19*pow(fs,2) - 3.22609990781889e-12) + 1.20740354032093e-11;

    a3 = Tone*(Tone*(Volume*(Volume*pow(fs,3)*(-1.21802889879982e-19*fs + 1.29577542425513e-20) + pow(fs,3)*(1.21802889879982e-19*fs - 3.04636802242381e-17)) + fs*(pow(fs,2)*(1.21802889879982e-18*fs - 3.07684919561628e-16) + 3.23943856063783e-16)) + Volume*(Volume*pow(fs,3)*(1.21802889879982e-19*fs + 1.21777751836752e-16) + fs*(pow(fs,2)*(-1.21802889879982e-19*fs - 9.13270293667562e-17) + 1.29577542425513e-14)) + fs*(pow(fs,2)*(-1.21802889879982e-18*fs - 9.10222176348315e-16) + 3.17836218601556e-12) - 1.29577542425513e-12) + Volume*(Volume*fs*(pow(fs,2)*(3.31303860473552e-20*fs - 2.76743003355078e-16) + 5.18310169702052e-14) + fs*(pow(fs,2)*(-3.31303860473552e-20*fs + 2.85025599866917e-16) - 5.61329913787323e-14)) + fs*(pow(fs,2)*(-3.31303860473552e-19*fs + 2.85108508658001e-15) - 1.68801611988706e-11) + 8.04935693547287e-12;

    a4 = Tone*(Tone*(Volume*(Volume*pow(fs,3)*(3.04507224699956e-20*fs - 6.47887712127565e-21) + pow(fs,2)*(fs*(-3.04507224699956e-20*fs + 1.52318401121191e-17) - 3.23943856063783e-18)) + fs*(fs*(fs*(-3.04507224699956e-19*fs + 1.53842459780814e-16) - 7.94747659274081e-16) + 1.61971928031891e-16)) + Volume*(Volume*pow(fs,2)*(fs*(-3.04507224699956e-20*fs - 6.08888759183759e-17) + 1.29577542425513e-17) + fs*(fs*(fs*(3.04507224699956e-20*fs + 4.56635146833781e-17) - 3.04634858579245e-14) + 6.47887712127565e-15)) + fs*(fs*(fs*(3.04507224699956e-19*fs + 4.55111088174157e-16) - 3.06859416672659e-13) + 1.58918109300778e-12) - 3.23943856063783e-13) + Volume*(Volume*fs*(fs*(fs*(-8.28259651183879e-21*fs + 1.38371501677539e-16) - 1.21856690475597e-13) + 2.59155084851026e-14) + fs*(fs*(fs*(8.28259651183879e-21*fs - 1.42512799933459e-16) + 1.60591718844371e-13) - 2.80664956893661e-14)) + fs*(fs*(fs*(8.28259651183879e-20*fs - 1.42554254329e-15) + 1.61304995390944e-12) - 8.4400805994353e-12) + 2.01233923386822e-12;
};

process =  p1 : p2 : p3 ;