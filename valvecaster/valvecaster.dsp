// generated automatically
// DO NOT MODIFY!
declare id "valvecaster";
declare name "ValveCaster";
declare category "Extern";
declare shortname "ValveCaster";
declare description "ValveCaster";
declare volume_p "Volume";

import("stdfaust.lib");

p1 = pre : fi.iir((b0/a0,b1/a0,b2/a0,b3/a0,b4/a0),(a1/a0,a2/a0,a3/a0,a4/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;

    
        
        Tone = vslider("Tone[name:Tone]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);
            
        
        Gain = vslider("Gain[name:Gain]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);
            
    b0 = Gain*(2.46744442363404e-32*Tone*pow(fs,4) + 1.23372221181702e-29*pow(fs,3)) + 2.10223322186702e-18*Tone*pow(fs,4) + 1.05111661093351e-15*pow(fs,3);

    b1 = Gain*(-9.86977769453617e-32*Tone*pow(fs,4) - 2.46744442363404e-29*pow(fs,3)) - 8.40893288746809e-18*Tone*pow(fs,4) - 2.10223322186702e-15*pow(fs,3);

    b2 = 1.48046665418043e-31*Gain*Tone*pow(fs,4) + 1.26133993312021e-17*Tone*pow(fs,4);

    b3 = Gain*(-9.86977769453617e-32*Tone*pow(fs,4) + 2.46744442363404e-29*pow(fs,3)) - 8.40893288746809e-18*Tone*pow(fs,4) + 2.10223322186702e-15*pow(fs,3);

    b4 = Gain*(2.46744442363404e-32*Tone*pow(fs,4) - 1.23372221181702e-29*pow(fs,3)) + 2.10223322186702e-18*Tone*pow(fs,4) - 1.05111661093351e-15*pow(fs,3);

    a0 = Gain*(Tone*fs*(fs*(fs*(-3.23671585942339e-19*fs - 8.59293924139801e-18) - 5.72395031946121e-17) - 2.61304666096613e-17) + fs*(fs*(fs*(-5.0450378534428e-20*fs - 1.64743466872933e-16) - 4.3462553204519e-15) - 2.88810562634027e-14) - 1.30652333048307e-14) + Tone*fs*(fs*(fs*(4.44357420714026e-19*fs + 1.23246239484246e-17) + 8.44554340772754e-17) + 3.8636652125391e-17) + fs*(fs*(fs*(6.92615634280557e-20*fs + 2.26252802954969e-16) + 6.23413327247725e-15) + 4.26140835598916e-14) + 1.93183260626955e-14;

    a1 = Gain*(Tone*fs*(pow(fs,2)*(1.29468634376935e-18*fs + 1.7185878482796e-17) - 5.22609332193227e-17) + fs*(pow(fs,2)*(2.01801514137712e-19*fs + 3.29486933745867e-16) - 5.77621125268054e-14) - 5.22609332193227e-14) + Tone*fs*(pow(fs,2)*(-1.7774296828561e-18*fs - 2.46492478968493e-17) + 7.7273304250782e-17) + fs*(pow(fs,2)*(-2.77046253712223e-19*fs - 4.52505605909937e-16) + 8.52281671197832e-14) + 7.7273304250782e-14;

    a2 = Gain*(Tone*pow(fs,2)*(-1.94202951565403e-18*pow(fs,2) + 1.14479006389224e-16) + pow(fs,2)*(-3.02702271206568e-19*pow(fs,2) + 8.6925106409038e-15) - 7.8391399828984e-14) + Tone*pow(fs,2)*(2.66614452428415e-18*pow(fs,2) - 1.68910868154551e-16) + pow(fs,2)*(4.15569380568334e-19*pow(fs,2) - 1.24682665449545e-14) + 1.15909956376173e-13;

    a3 = Gain*(Tone*fs*(pow(fs,2)*(1.29468634376935e-18*fs - 1.7185878482796e-17) + 5.22609332193227e-17) + fs*(pow(fs,2)*(2.01801514137712e-19*fs - 3.29486933745867e-16) + 5.77621125268054e-14) - 5.22609332193227e-14) + Tone*fs*(pow(fs,2)*(-1.7774296828561e-18*fs + 2.46492478968493e-17) - 7.7273304250782e-17) + fs*(pow(fs,2)*(-2.77046253712223e-19*fs + 4.52505605909937e-16) - 8.52281671197832e-14) + 7.7273304250782e-14;

    a4 = Gain*(Tone*fs*(fs*(fs*(-3.23671585942339e-19*fs + 8.59293924139801e-18) - 5.72395031946121e-17) + 2.61304666096613e-17) + fs*(fs*(fs*(-5.0450378534428e-20*fs + 1.64743466872933e-16) - 4.3462553204519e-15) + 2.88810562634027e-14) - 1.30652333048307e-14) + Tone*fs*(fs*(fs*(4.44357420714026e-19*fs - 1.23246239484246e-17) + 8.44554340772754e-17) - 3.8636652125391e-17) + fs*(fs*(fs*(6.92615634280557e-20*fs - 2.26252802954969e-16) + 6.23413327247725e-15) - 4.26140835598916e-14) + 1.93183260626955e-14;
};

clip = ffunction(float tubeclip(float), "valvecaster_table.h", "");



process = p1 : clip ;
