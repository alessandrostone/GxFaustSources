// generated automatically
// DO NOT MODIFY!
declare id "boobtube";
declare name "BoobTube";
declare category "Extern";
declare shortname "BoobTube";
declare description "BoobTube";
declare volume_p "Volume";

import("stdfaust.lib");

p1 = pre : fi.iir((b0/a0,b1/a0,b2/a0,b3/a0,b4/a0,b5/a0,b6/a0,b7/a0),(a1/a0,a2/a0,a3/a0,a4/a0,a5/a0,a6/a0,a7/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;

    
        
        Tone = vslider("Tone[name:Tone]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);
            
        
        Gain = vslider("Gain[name:Gain]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);
            
    b0 = Gain*(Tone*pow(fs,5)*(fs*(3.73296470687429e-35*fs + 1.65909542527746e-28) + 1.84343936141939e-22) + pow(fs,4)*(fs*(3.97123904986627e-33*fs + 1.76499513327389e-26) + 1.96110570363765e-20));

    b1 = Gain*(Tone*pow(fs,5)*(fs*(-2.61307529481201e-34*fs - 8.29547712638728e-28) - 5.53031808425816e-22) + pow(fs,4)*(fs*(-1.98561952493313e-32*fs - 5.29498539982167e-26) - 1.96110570363765e-20));

    b2 = Gain*(Tone*pow(fs,5)*(fs*(7.83922588443602e-34*fs + 1.49318588274971e-27) + 1.84343936141939e-22) + pow(fs,4)*(fs*(3.57411514487964e-32*fs + 1.76499513327389e-26) - 5.88331711091294e-20));

    b3 = Gain*(Tone*pow(fs,5)*(fs*(-1.306537647406e-33*fs - 8.29547712638728e-28) + 9.21719680709693e-22) + pow(fs,4)*(fs*(-1.98561952493313e-32*fs + 8.82497566636945e-26) + 5.88331711091294e-20));

    b4 = Gain*(Tone*pow(fs,5)*(fs*(1.306537647406e-33*fs - 8.29547712638728e-28) - 9.21719680709693e-22) + pow(fs,4)*(fs*(-1.98561952493313e-32*fs - 8.82497566636945e-26) + 5.88331711091294e-20));

    b5 = Gain*(Tone*pow(fs,5)*(fs*(-7.83922588443602e-34*fs + 1.49318588274971e-27) - 1.84343936141939e-22) + pow(fs,4)*(fs*(3.57411514487964e-32*fs - 1.76499513327389e-26) - 5.88331711091294e-20));

    b6 = Gain*(Tone*pow(fs,5)*(fs*(2.61307529481201e-34*fs - 8.29547712638728e-28) + 5.53031808425816e-22) + pow(fs,4)*(fs*(-1.98561952493313e-32*fs + 5.29498539982167e-26) - 1.96110570363765e-20));

    b7 = Gain*(Tone*pow(fs,5)*(fs*(-3.73296470687429e-35*fs + 1.65909542527746e-28) - 1.84343936141939e-22) + pow(fs,4)*(fs*(3.97123904986627e-33*fs - 1.76499513327389e-26) + 1.96110570363765e-20));

    a0 = Gain*(Gain*(Tone*pow(fs,3)*(fs*(fs*(fs*(-4.21272337897928e-37*fs - 2.27634325982934e-30) - 3.06012930102304e-24) - 3.34112914661488e-22) - 1.24454632785108e-21) + pow(fs,2)*(fs*(fs*(fs*(fs*(-6.141721072108e-38*fs - 4.3166195936922e-31) - 6.97032597453284e-25) - 4.10749319412873e-22) - 3.67884734194988e-20) - 1.32398545516072e-19)) + Tone*pow(fs,2)*(fs*(fs*(fs*(fs*(4.95656594905859e-37*fs + 2.8035589953592e-30) + 3.96273178509438e-24) + 7.58182302045717e-22) + 3.7155467324332e-20) + 1.32398545516072e-19) + fs*(fs*(fs*(fs*(fs*(fs*(7.22616768205703e-38*fs + 5.26145368693843e-31) + 9.02601318693962e-25) + 6.06022438205464e-22) + 9.13334499281088e-20) + 4.08510783533862e-18) + 1.40849516506459e-17)) + Tone*fs*(fs*(fs*(fs*(fs*(fs*(4.95656594905859e-37*fs + 2.80361172478419e-30) + 3.96303003605133e-24) + 1.17974951322597e-21) + 1.17813159031323e-19) + 4.08510783533862e-18) + 1.40849516506459e-17) + fs*(fs*(fs*(fs*(fs*(fs*(7.22616768205703e-38*fs + 5.26153056106271e-31) + 9.02657291605525e-25) + 7.020438550878e-22) + 1.55803922077626e-19) + 1.38014322957757e-17) + 4.48670891580287e-16) + 1.49839911177084e-15;

    a1 = Gain*(Gain*(Tone*pow(fs,3)*(fs*(fs*(fs*(2.9489063652855e-36*fs + 1.13817162991467e-29) + 9.18038790306911e-24) + 3.34112914661488e-22) - 1.24454632785108e-21) + pow(fs,2)*(fs*(fs*(fs*(fs*(4.2992047504756e-37*fs + 2.1583097968461e-30) + 2.09109779235985e-24) + 4.10749319412873e-22) - 3.67884734194988e-20) - 3.97195636548215e-19)) + Tone*pow(fs,2)*(fs*(fs*(fs*(fs*(-3.46959616434101e-36*fs - 1.4017794976796e-29) - 1.18881953552831e-23) - 7.58182302045717e-22) + 3.7155467324332e-20) + 3.97195636548215e-19) + fs*(fs*(fs*(fs*(fs*(fs*(-5.05831737743992e-37*fs - 2.63072684346922e-30) - 2.70780395608189e-24) - 6.06022438205464e-22) + 9.13334499281088e-20) + 1.22553235060159e-17) + 7.04247582532297e-17)) + Tone*fs*(fs*(fs*(fs*(fs*(fs*(-3.46959616434101e-36*fs - 1.40180586239209e-29) - 1.1889090108154e-23) - 1.17974951322597e-21) + 1.17813159031323e-19) + 1.22553235060159e-17) + 7.04247582532297e-17) + fs*(fs*(fs*(fs*(fs*(fs*(-5.05831737743992e-37*fs - 2.63076528053136e-30) - 2.70797187481657e-24) - 7.020438550878e-22) + 1.55803922077626e-19) + 4.14042968873272e-17) + 2.24335445790143e-15) + 1.04887937823959e-14;

    a2 = Gain*(Gain*(Tone*pow(fs,3)*(fs*(fs*(fs*(-8.84671909585649e-36*fs - 2.04870893384641e-29) - 3.06012930102304e-24) + 1.00233874398447e-21) + 3.73363898355323e-21) + pow(fs,2)*(fs*(fs*(fs*(fs*(-1.28976142514268e-36*fs - 3.88495763432298e-30) - 6.97032597453284e-25) + 1.23224795823862e-21) + 1.10365420258496e-19) - 1.32398545516072e-19)) + Tone*pow(fs,2)*(fs*(fs*(fs*(fs*(1.0408788493023e-35*fs + 2.52320309582328e-29) + 3.96273178509438e-24) - 2.27454690613715e-21) - 1.11466401972996e-19) + 1.32398545516072e-19) + fs*(fs*(fs*(fs*(fs*(fs*(1.51749521323198e-36*fs + 4.73530831824459e-30) + 9.02601318693962e-25) - 1.81806731461639e-21) - 2.74000349784326e-19) + 4.08510783533862e-18) + 1.26764564855813e-16)) + Tone*fs*(fs*(fs*(fs*(fs*(fs*(1.0408788493023e-35*fs + 2.52325055230577e-29) + 3.96303003605133e-24) - 3.53924853967791e-21) - 3.53439477093969e-19) + 4.08510783533862e-18) + 1.26764564855813e-16) + fs*(fs*(fs*(fs*(fs*(fs*(1.51749521323198e-36*fs + 4.73537750495644e-30) + 9.02657291605525e-25) - 2.1061315652634e-21) - 4.67411766232879e-19) + 1.38014322957757e-17) + 4.03803802422258e-15) + 3.14663813471877e-14;

    a3 = Gain*(Gain*(Tone*pow(fs,3)*(fs*(fs*(fs*(1.47445318264275e-35*fs + 1.13817162991467e-29) - 1.53006465051152e-23) - 1.00233874398447e-21) + 3.73363898355323e-21) + pow(fs,2)*(fs*(fs*(fs*(fs*(2.1496023752378e-36*fs + 2.1583097968461e-30) - 3.48516298726642e-24) - 1.23224795823862e-21) + 1.10365420258496e-19) + 6.61992727580359e-19)) + Tone*pow(fs,2)*(fs*(fs*(fs*(fs*(-1.73479808217051e-35*fs - 1.4017794976796e-29) + 1.98136589254719e-23) + 2.27454690613715e-21) - 1.11466401972996e-19) - 6.61992727580359e-19) + fs*(fs*(fs*(fs*(fs*(fs*(-2.52915868871996e-36*fs - 2.63072684346922e-30) + 4.51300659346981e-24) + 1.81806731461639e-21) - 2.74000349784326e-19) - 2.04255391766931e-17) + 7.04247582532297e-17)) + Tone*fs*(fs*(fs*(fs*(fs*(fs*(-1.73479808217051e-35*fs - 1.40180586239209e-29) + 1.98151501802567e-23) + 3.53924853967791e-21) - 3.53439477093969e-19) - 2.04255391766931e-17) + 7.04247582532297e-17) + fs*(fs*(fs*(fs*(fs*(fs*(-2.52915868871996e-36*fs - 2.63076528053136e-30) + 4.51328645802762e-24) + 2.1061315652634e-21) - 4.67411766232879e-19) - 6.90071614788786e-17) + 2.24335445790143e-15) + 5.24439689119796e-14;

    a4 = Gain*(Gain*(Tone*pow(fs,3)*(fs*(fs*(fs*(-1.47445318264275e-35*fs + 1.13817162991467e-29) + 1.53006465051152e-23) - 1.00233874398447e-21) - 3.73363898355323e-21) + pow(fs,2)*(fs*(fs*(fs*(fs*(-2.1496023752378e-36*fs + 2.1583097968461e-30) + 3.48516298726642e-24) - 1.23224795823862e-21) - 1.10365420258496e-19) + 6.61992727580359e-19)) + Tone*pow(fs,2)*(fs*(fs*(fs*(fs*(1.73479808217051e-35*fs - 1.4017794976796e-29) - 1.98136589254719e-23) + 2.27454690613715e-21) + 1.11466401972996e-19) - 6.61992727580359e-19) + fs*(fs*(fs*(fs*(fs*(fs*(2.52915868871996e-36*fs - 2.63072684346922e-30) - 4.51300659346981e-24) + 1.81806731461639e-21) + 2.74000349784326e-19) - 2.04255391766931e-17) - 7.04247582532297e-17)) + Tone*fs*(fs*(fs*(fs*(fs*(fs*(1.73479808217051e-35*fs - 1.40180586239209e-29) - 1.98151501802567e-23) + 3.53924853967791e-21) + 3.53439477093969e-19) - 2.04255391766931e-17) - 7.04247582532297e-17) + fs*(fs*(fs*(fs*(fs*(fs*(2.52915868871996e-36*fs - 2.63076528053136e-30) - 4.51328645802762e-24) + 2.1061315652634e-21) + 4.67411766232879e-19) - 6.90071614788786e-17) - 2.24335445790143e-15) + 5.24439689119796e-14;

    a5 = Gain*(Gain*(Tone*pow(fs,3)*(fs*(fs*(fs*(8.84671909585649e-36*fs - 2.04870893384641e-29) + 3.06012930102304e-24) + 1.00233874398447e-21) - 3.73363898355323e-21) + pow(fs,2)*(fs*(fs*(fs*(fs*(1.28976142514268e-36*fs - 3.88495763432298e-30) + 6.97032597453284e-25) + 1.23224795823862e-21) - 1.10365420258496e-19) - 1.32398545516072e-19)) + Tone*pow(fs,2)*(fs*(fs*(fs*(fs*(-1.0408788493023e-35*fs + 2.52320309582328e-29) - 3.96273178509438e-24) - 2.27454690613715e-21) + 1.11466401972996e-19) + 1.32398545516072e-19) + fs*(fs*(fs*(fs*(fs*(fs*(-1.51749521323198e-36*fs + 4.73530831824459e-30) - 9.02601318693962e-25) - 1.81806731461639e-21) + 2.74000349784326e-19) + 4.08510783533862e-18) - 1.26764564855813e-16)) + Tone*fs*(fs*(fs*(fs*(fs*(fs*(-1.0408788493023e-35*fs + 2.52325055230577e-29) - 3.96303003605133e-24) - 3.53924853967791e-21) + 3.53439477093969e-19) + 4.08510783533862e-18) - 1.26764564855813e-16) + fs*(fs*(fs*(fs*(fs*(fs*(-1.51749521323198e-36*fs + 4.73537750495644e-30) - 9.02657291605525e-25) - 2.1061315652634e-21) + 4.67411766232879e-19) + 1.38014322957757e-17) - 4.03803802422258e-15) + 3.14663813471877e-14;

    a6 = Gain*(Gain*(Tone*pow(fs,3)*(fs*(fs*(fs*(-2.9489063652855e-36*fs + 1.13817162991467e-29) - 9.18038790306911e-24) + 3.34112914661488e-22) + 1.24454632785108e-21) + pow(fs,2)*(fs*(fs*(fs*(fs*(-4.2992047504756e-37*fs + 2.1583097968461e-30) - 2.09109779235985e-24) + 4.10749319412873e-22) + 3.67884734194988e-20) - 3.97195636548215e-19)) + Tone*pow(fs,2)*(fs*(fs*(fs*(fs*(3.46959616434101e-36*fs - 1.4017794976796e-29) + 1.18881953552831e-23) - 7.58182302045717e-22) - 3.7155467324332e-20) + 3.97195636548215e-19) + fs*(fs*(fs*(fs*(fs*(fs*(5.05831737743992e-37*fs - 2.63072684346922e-30) + 2.70780395608189e-24) - 6.06022438205464e-22) - 9.13334499281088e-20) + 1.22553235060159e-17) - 7.04247582532297e-17)) + Tone*fs*(fs*(fs*(fs*(fs*(fs*(3.46959616434101e-36*fs - 1.40180586239209e-29) + 1.1889090108154e-23) - 1.17974951322597e-21) - 1.17813159031323e-19) + 1.22553235060159e-17) - 7.04247582532297e-17) + fs*(fs*(fs*(fs*(fs*(fs*(5.05831737743992e-37*fs - 2.63076528053136e-30) + 2.70797187481657e-24) - 7.020438550878e-22) - 1.55803922077626e-19) + 4.14042968873272e-17) - 2.24335445790143e-15) + 1.04887937823959e-14;

    a7 = Gain*(Gain*(Tone*pow(fs,3)*(fs*(fs*(fs*(4.21272337897928e-37*fs - 2.27634325982934e-30) + 3.06012930102304e-24) - 3.34112914661488e-22) + 1.24454632785108e-21) + pow(fs,2)*(fs*(fs*(fs*(fs*(6.141721072108e-38*fs - 4.3166195936922e-31) + 6.97032597453284e-25) - 4.10749319412873e-22) + 3.67884734194988e-20) - 1.32398545516072e-19)) + Tone*pow(fs,2)*(fs*(fs*(fs*(fs*(-4.95656594905859e-37*fs + 2.8035589953592e-30) - 3.96273178509438e-24) + 7.58182302045717e-22) - 3.7155467324332e-20) + 1.32398545516072e-19) + fs*(fs*(fs*(fs*(fs*(fs*(-7.22616768205703e-38*fs + 5.26145368693843e-31) - 9.02601318693962e-25) + 6.06022438205464e-22) - 9.13334499281088e-20) + 4.08510783533862e-18) - 1.40849516506459e-17)) + Tone*fs*(fs*(fs*(fs*(fs*(fs*(-4.95656594905859e-37*fs + 2.80361172478419e-30) - 3.96303003605133e-24) + 1.17974951322597e-21) - 1.17813159031323e-19) + 4.08510783533862e-18) - 1.40849516506459e-17) + fs*(fs*(fs*(fs*(fs*(fs*(-7.22616768205703e-38*fs + 5.26153056106271e-31) - 9.02657291605525e-25) + 7.020438550878e-22) - 1.55803922077626e-19) + 1.38014322957757e-17) - 4.48670891580287e-16) + 1.49839911177084e-15;
};

clip = ffunction(float tubeclip(float), "boobtube_table.h", "");

process = p1 : clip ;