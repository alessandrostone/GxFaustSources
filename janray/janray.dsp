// generated automatically
// DO NOT MODIFY!
declare id "janray";
declare name "janray";
declare category "Extern";
declare shortname "janray";
declare description "janray";

import("stdfaust.lib");

p1 = pre : fi.iir((b0/a0,b1/a0,b2/a0,b3/a0,b4/a0,b5/a0),(a1/a0,a2/a0,a3/a0,a4/a0,a5/a0)) : janrayclip with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;



    Trim = vslider("Trim[name:Trim]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);


    Bass = vslider("Bass[name:Bass]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);

    Gain = vslider("Gain[name:Gain]", 0.5, 0, 1, 0.01) : Inverted(0) : LogPot(3) : si.smooth(s);


    Treble = vslider("Treble[name:Treble]", 0.5, 0, 1, 0.01) : Inverted(0) : si.smooth(s);

    b0 = Bass*(Trim*pow(fs,2)*(fs*(-8.7086302031279e-23*fs - 2.98602609678267e-16) - 6.92749876611283e-14) + pow(fs,2)*(fs*(-4.51011180400903e-23*fs - 2.30115350547207e-16) - 3.3030314116826e-13)) + Gain*(Bass*(Trim*pow(fs,2)*(fs*(-1.31948942471635e-20*fs - 2.70608771023561e-15) - 3.83098989908991e-15) + pow(fs,2)*(fs*(-6.83350273334702e-21*fs - 1.2836617480244e-14) - 1.82661598388607e-14)) + Trim*fs*(fs*(fs*(1.31948942471635e-20*fs + 2.7096029653953e-15) + 7.23925962947242e-13) + 3.83098989908991e-14) + fs*(fs*(fs*(6.83350273334702e-21*fs + 1.28384379954594e-14) + 3.43409359073666e-12) + 1.82661598388607e-13)) + Trim*fs*(fs*(fs*(8.7086302031279e-23*fs + 2.98625810362321e-16) + 1.48820277455438e-13) + 6.92749876611283e-13) + fs*(fs*(fs*(4.51011180400903e-23*fs + 2.30127365947628e-16) + 3.91581968496678e-13) + 3.3030314116826e-12);

    b1 = Bass*(Trim*pow(fs,2)*(fs*(2.61258906093837e-22*fs + 2.98602609678267e-16) - 6.92749876611283e-14) + pow(fs,2)*(fs*(1.35303354120271e-22*fs + 2.30115350547207e-16) - 3.3030314116826e-13)) + Gain*(Bass*(Trim*pow(fs,2)*(fs*(3.95846827414905e-20*fs + 2.70608771023561e-15) - 3.83098989908991e-15) + pow(fs,2)*(fs*(2.05005082000411e-20*fs + 1.2836617480244e-14) - 1.82661598388607e-14)) + Trim*fs*(fs*(fs*(-3.95846827414905e-20*fs - 2.7096029653953e-15) + 7.23925962947242e-13) + 1.14929696972697e-13) + fs*(fs*(fs*(-2.05005082000411e-20*fs - 1.28384379954594e-14) + 3.43409359073666e-12) + 5.4798479516582e-13)) + Trim*fs*(fs*(fs*(-2.61258906093837e-22*fs - 2.98625810362321e-16) + 1.48820277455438e-13) + 2.07824962983385e-12) + fs*(fs*(fs*(-1.35303354120271e-22*fs - 2.30127365947628e-16) + 3.91581968496678e-13) + 9.90909423504778e-12);

    b2 = Bass*(Trim*pow(fs,2)*(fs*(-1.74172604062558e-22*fs + 5.97205219356535e-16) + 1.38549975322257e-13) + pow(fs,2)*(fs*(-9.02022360801807e-23*fs + 4.60230701094414e-16) + 6.60606282336519e-13)) + Gain*(Bass*(Trim*pow(fs,2)*(fs*(-2.6389788494327e-20*fs + 5.41217542047122e-15) + 7.66197979817981e-15) + pow(fs,2)*(fs*(-1.3667005466694e-20*fs + 2.56732349604881e-14) + 3.65323196777213e-14)) + Trim*fs*(fs*(fs*(2.6389788494327e-20*fs - 5.41920593079061e-15) - 1.44785192589448e-12) + 7.66197979817981e-14) + fs*(fs*(fs*(1.3667005466694e-20*fs - 2.56768759909188e-14) - 6.86818718147332e-12) + 3.65323196777214e-13)) + Trim*fs*(fs*(fs*(1.74172604062558e-22*fs - 5.97251620724643e-16) - 2.97640554910877e-13) + 1.38549975322257e-12) + fs*(fs*(fs*(9.02022360801807e-23*fs - 4.60254731895257e-16) - 7.83163936993356e-13) + 6.60606282336519e-12);

    b3 = Bass*(Trim*pow(fs,2)*(fs*(-1.74172604062558e-22*fs - 5.97205219356535e-16) + 1.38549975322257e-13) + pow(fs,2)*(fs*(-9.02022360801807e-23*fs - 4.60230701094414e-16) + 6.60606282336519e-13)) + Gain*(Bass*(Trim*pow(fs,2)*(fs*(-2.6389788494327e-20*fs - 5.41217542047122e-15) + 7.66197979817981e-15) + pow(fs,2)*(fs*(-1.3667005466694e-20*fs - 2.56732349604881e-14) + 3.65323196777213e-14)) + Trim*fs*(fs*(fs*(2.6389788494327e-20*fs + 5.41920593079061e-15) - 1.44785192589448e-12) - 7.66197979817981e-14) + fs*(fs*(fs*(1.3667005466694e-20*fs + 2.56768759909188e-14) - 6.86818718147332e-12) - 3.65323196777214e-13)) + Trim*fs*(fs*(fs*(1.74172604062558e-22*fs + 5.97251620724643e-16) - 2.97640554910877e-13) - 1.38549975322257e-12) + fs*(fs*(fs*(9.02022360801807e-23*fs + 4.60254731895257e-16) - 7.83163936993356e-13) - 6.60606282336519e-12);

    b4 = Bass*(Trim*pow(fs,2)*(fs*(2.61258906093837e-22*fs - 2.98602609678267e-16) - 6.92749876611283e-14) + pow(fs,2)*(fs*(1.35303354120271e-22*fs - 2.30115350547207e-16) - 3.3030314116826e-13)) + Gain*(Bass*(Trim*pow(fs,2)*(fs*(3.95846827414905e-20*fs - 2.70608771023561e-15) - 3.83098989908991e-15) + pow(fs,2)*(fs*(2.05005082000411e-20*fs - 1.2836617480244e-14) - 1.82661598388607e-14)) + Trim*fs*(fs*(fs*(-3.95846827414905e-20*fs + 2.7096029653953e-15) + 7.23925962947242e-13) - 1.14929696972697e-13) + fs*(fs*(fs*(-2.05005082000411e-20*fs + 1.28384379954594e-14) + 3.43409359073666e-12) - 5.4798479516582e-13)) + Trim*fs*(fs*(fs*(-2.61258906093837e-22*fs + 2.98625810362321e-16) + 1.48820277455438e-13) - 2.07824962983385e-12) + fs*(fs*(fs*(-1.35303354120271e-22*fs + 2.30127365947628e-16) + 3.91581968496678e-13) - 9.90909423504778e-12);

    b5 = Bass*(Trim*pow(fs,2)*(fs*(-8.7086302031279e-23*fs + 2.98602609678267e-16) - 6.92749876611283e-14) + pow(fs,2)*(fs*(-4.51011180400903e-23*fs + 2.30115350547207e-16) - 3.3030314116826e-13)) + Gain*(Bass*(Trim*pow(fs,2)*(fs*(-1.31948942471635e-20*fs + 2.70608771023561e-15) - 3.83098989908991e-15) + pow(fs,2)*(fs*(-6.83350273334702e-21*fs + 1.2836617480244e-14) - 1.82661598388607e-14)) + Trim*fs*(fs*(fs*(1.31948942471635e-20*fs - 2.7096029653953e-15) + 7.23925962947242e-13) - 3.83098989908991e-14) + fs*(fs*(fs*(6.83350273334702e-21*fs - 1.28384379954594e-14) + 3.43409359073666e-12) - 1.82661598388607e-13)) + Trim*fs*(fs*(fs*(8.7086302031279e-23*fs - 2.98625810362321e-16) + 1.48820277455438e-13) - 6.92749876611283e-13) + fs*(fs*(fs*(4.51011180400903e-23*fs - 2.30127365947628e-16) + 3.91581968496678e-13) - 3.3030314116826e-12);

    a0 = Bass*(Treble*(Trim*pow(fs,2)*(fs*(fs*(8.1900260876715e-26*fs + 2.64141605862444e-19) + 6.76768504805577e-17) + 6.89310252845818e-16) + pow(fs,2)*(fs*(fs*(4.24153195985771e-26*fs + 1.36882496080625e-19) + 3.10806269572715e-16) + 3.28663128556886e-15)) + Trim*fs*(fs*(fs*(fs*(-9.00902869643865e-26*fs - 2.90642894385791e-19) - 3.55446243892915e-16) - 7.27548907255322e-14) - 7.3330877962321e-13) + fs*(fs*(fs*(fs*(-4.66568515584348e-26*fs - 1.50615868369112e-19) - 4.87506573211503e-16) - 3.34260262044674e-13) - 3.49641626124347e-12)) + Gain*(Bass*(Treble*(Trim*pow(fs,2)*(fs*(fs*(1.24091304358659e-23*fs + 1.78112175014536e-20) + 3.77525356518785e-18) + 3.81196836712471e-17) + pow(fs,2)*(fs*(fs*(6.42656357554199e-24*fs + 2.2288008534494e-20) + 1.73435992252234e-17) + 1.81754651744506e-16)) + Trim*fs*(fs*(fs*(fs*(-1.36500434794525e-23*fs - 3.27935418429456e-20) - 2.31008826466573e-17) - 4.05815884904672e-15) - 4.05528549694118e-14) + fs*(fs*(fs*(fs*(-7.06921993309618e-24*fs - 3.13535791491583e-20) - 4.2788606524867e-17) - 1.86505675905608e-14) - 1.93356012494155e-13)) + Treble*(Trim*fs*(fs*(fs*(fs*(-1.24091304358659e-23*fs - 2.11171371227009e-20) - 7.73549469521963e-18) - 1.11773665270642e-16) - 3.81196836712471e-16) + fs*(fs*(fs*(fs*(-6.42656357554199e-24*fs - 2.4000110984491e-20) - 1.95391890110555e-17) - 3.57955975814928e-16) - 1.81754651744506e-15)) + Trim*(fs*(fs*(fs*(fs*(1.36500434794525e-23*fs + 3.64300534263177e-20) + 3.09740836569766e-17) + 8.35220070756327e-15) + 1.1932747106362e-13) + 4.05528549694118e-13) + fs*(fs*(fs*(fs*(7.06921993309618e-24*fs + 3.3236891844155e-20) + 4.70251408743855e-17) + 2.11801228617533e-14) + 3.82803530759538e-13) + 1.93356012494155e-12) + Treble*(Trim*fs*(fs*(fs*(fs*(-8.1900260876715e-26*fs - 2.64163424931944e-19) - 1.38041703417704e-16) - 2.01403153940399e-15) - 6.89310252845818e-15) + fs*(fs*(fs*(fs*(-4.24153195985771e-26*fs - 1.36893795956795e-19) - 3.47248472167364e-16) - 6.43876014761958e-15) - 3.28663128556886e-14)) + Trim*(fs*(fs*(fs*(fs*(9.00902869643865e-26*fs + 2.90666895362241e-19) + 4.32870793899841e-16) + 1.49068310669626e-13) + 2.15016915682811e-12) + 7.3330877962321e-12) + fs*(fs*(fs*(fs*(4.66568515584348e-26*fs + 1.50628298232899e-19) + 5.27605017210479e-16) + 3.76495904425535e-13) + 6.88589778203442e-12) + 3.49641626124347e-11;

    a1 = Bass*(Treble*(Trim*pow(fs,2)*(fs*(fs*(-4.09501304383575e-25*fs - 7.92424817587331e-19) - 6.76768504805577e-17) + 6.89310252845818e-16) + pow(fs,2)*(fs*(fs*(-2.12076597992886e-25*fs - 4.10647488241876e-19) - 3.10806269572715e-16) + 3.28663128556886e-15)) + Trim*fs*(fs*(fs*(fs*(4.50451434821932e-25*fs + 8.71928683157373e-19) + 3.55446243892915e-16) - 7.27548907255322e-14) - 2.19992633886963e-12) + fs*(fs*(fs*(fs*(2.33284257792174e-25*fs + 4.51847605107335e-19) + 4.87506573211503e-16) - 3.34260262044674e-13) - 1.04892487837304e-11)) + Gain*(Bass*(Treble*(Trim*pow(fs,2)*(fs*(fs*(-6.20456521793295e-23*fs - 5.34336525043607e-20) - 3.77525356518785e-18) + 3.81196836712471e-17) + pow(fs,2)*(fs*(fs*(-3.21328178777099e-23*fs - 6.68640256034821e-20) - 1.73435992252234e-17) + 1.81754651744506e-16)) + Trim*fs*(fs*(fs*(fs*(6.82502173972625e-23*fs + 9.83806255288369e-20) + 2.31008826466573e-17) - 4.05815884904672e-15) - 1.21658564908235e-13) + fs*(fs*(fs*(fs*(3.53460996654809e-23*fs + 9.40607374474749e-20) + 4.2788606524867e-17) - 1.86505675905608e-14) - 5.80068037482466e-13)) + Treble*(Trim*fs*(fs*(fs*(fs*(6.20456521793295e-23*fs + 6.33514113681028e-20) + 7.73549469521963e-18) - 1.11773665270642e-16) - 1.14359051013741e-15) + fs*(fs*(fs*(fs*(3.21328178777099e-23*fs + 7.20003329534729e-20) + 1.95391890110555e-17) - 3.57955975814928e-16) - 5.45263955233518e-15)) + Trim*(fs*(fs*(fs*(fs*(-6.82502173972625e-23*fs - 1.09290160278953e-19) - 3.09740836569766e-17) + 8.35220070756327e-15) + 3.57982413190859e-13) + 2.02764274847059e-12) + fs*(fs*(fs*(fs*(-3.53460996654809e-23*fs - 9.97106755324649e-20) - 4.70251408743855e-17) + 2.11801228617533e-14) + 1.14841059227862e-12) + 9.66780062470777e-12) + Treble*(Trim*fs*(fs*(fs*(fs*(4.09501304383575e-25*fs + 7.92490274795832e-19) + 1.38041703417704e-16) - 2.01403153940399e-15) - 2.06793075853745e-14) + fs*(fs*(fs*(fs*(2.12076597992886e-25*fs + 4.10681387870386e-19) + 3.47248472167364e-16) - 6.43876014761958e-15) - 9.85989385670658e-14)) + Trim*(fs*(fs*(fs*(fs*(-4.50451434821932e-25*fs - 8.72000686086724e-19) - 4.32870793899841e-16) + 1.49068310669626e-13) + 6.45050747048432e-12) + 3.66654389811605e-11) + fs*(fs*(fs*(fs*(-2.33284257792174e-25*fs - 4.51884894698696e-19) - 5.27605017210479e-16) + 3.76495904425535e-13) + 2.06576933461033e-11) + 1.74820813062173e-10;

    a2 = Bass*(Treble*(Trim*pow(fs,2)*(fs*(fs*(8.1900260876715e-25*fs + 5.28283211724887e-19) - 1.35353700961115e-16) - 1.37862050569164e-15) + pow(fs,2)*(fs*(fs*(4.24153195985771e-25*fs + 2.73764992161251e-19) - 6.2161253914543e-16) - 6.57326257113772e-15)) + Trim*fs*(fs*(fs*(fs*(-9.00902869643864e-25*fs - 5.81285788771582e-19) + 7.1089248778583e-16) + 1.45509781451064e-13) - 1.46661755924642e-12) + fs*(fs*(fs*(fs*(-4.66568515584348e-25*fs - 3.01231736738224e-19) + 9.75013146423006e-16) + 6.68520524089348e-13) - 6.99283252248693e-12)) + Gain*(Bass*(Treble*(Trim*pow(fs,2)*(fs*(fs*(1.24091304358659e-22*fs + 3.56224350029072e-20) - 7.5505071303757e-18) - 7.62393673424942e-17) + pow(fs,2)*(fs*(fs*(6.42656357554199e-23*fs + 4.45760170689881e-20) - 3.46871984504467e-17) - 3.63509303489012e-16)) + Trim*fs*(fs*(fs*(fs*(-1.36500434794525e-22*fs - 6.55870836858913e-20) + 4.62017652933145e-17) + 8.11631769809345e-15) - 8.11057099388236e-14) + fs*(fs*(fs*(fs*(-7.06921993309619e-23*fs - 6.27071582983166e-20) + 8.5577213049734e-17) + 3.73011351811216e-14) - 3.86712024988311e-13)) + Treble*(Trim*fs*(fs*(fs*(fs*(-1.24091304358659e-22*fs - 4.22342742454019e-20) + 1.54709893904393e-17) + 2.23547330541284e-16) - 7.62393673424942e-16) + fs*(fs*(fs*(fs*(-6.42656357554199e-23*fs - 4.8000221968982e-20) + 3.9078378022111e-17) + 7.15911951629856e-16) - 3.63509303489012e-15)) + Trim*(fs*(fs*(fs*(fs*(1.36500434794525e-22*fs + 7.28601068526355e-20) - 6.19481673139533e-17) - 1.67044014151265e-14) + 2.3865494212724e-13) + 4.05528549694118e-12) + fs*(fs*(fs*(fs*(7.06921993309619e-23*fs + 6.64737836883099e-20) - 9.4050281748771e-17) - 4.23602457235067e-14) + 7.65607061519077e-13) + 1.93356012494155e-11) + Treble*(Trim*fs*(fs*(fs*(fs*(-8.1900260876715e-25*fs - 5.28326849863888e-19) + 2.76083406835409e-16) + 4.02806307880799e-15) - 1.37862050569164e-14) + fs*(fs*(fs*(fs*(-4.24153195985771e-25*fs - 2.7378759191359e-19) + 6.94496944334729e-16) + 1.28775202952392e-14) - 6.57326257113772e-14)) + Trim*(fs*(fs*(fs*(fs*(9.00902869643864e-25*fs + 5.81333790724482e-19) - 8.65741587799681e-16) - 2.98136621339251e-13) + 4.30033831365621e-12) + 7.3330877962321e-11) + fs*(fs*(fs*(fs*(4.66568515584348e-25*fs + 3.01256596465798e-19) - 1.05521003442096e-15) - 7.5299180885107e-13) + 1.37717955640688e-11) + 3.49641626124347e-10;

    a3 = Bass*(Treble*(Trim*pow(fs,2)*(fs*(fs*(-8.1900260876715e-25*fs + 5.28283211724887e-19) + 1.35353700961115e-16) - 1.37862050569164e-15) + pow(fs,2)*(fs*(fs*(-4.24153195985771e-25*fs + 2.73764992161251e-19) + 6.2161253914543e-16) - 6.57326257113772e-15)) + Trim*fs*(fs*(fs*(fs*(9.00902869643864e-25*fs - 5.81285788771582e-19) - 7.1089248778583e-16) + 1.45509781451064e-13) + 1.46661755924642e-12) + fs*(fs*(fs*(fs*(4.66568515584348e-25*fs - 3.01231736738224e-19) - 9.75013146423006e-16) + 6.68520524089348e-13) + 6.99283252248693e-12)) + Gain*(Bass*(Treble*(Trim*pow(fs,2)*(fs*(fs*(-1.24091304358659e-22*fs + 3.56224350029072e-20) + 7.5505071303757e-18) - 7.62393673424942e-17) + pow(fs,2)*(fs*(fs*(-6.42656357554199e-23*fs + 4.45760170689881e-20) + 3.46871984504467e-17) - 3.63509303489012e-16)) + Trim*fs*(fs*(fs*(fs*(1.36500434794525e-22*fs - 6.55870836858913e-20) - 4.62017652933145e-17) + 8.11631769809345e-15) + 8.11057099388236e-14) + fs*(fs*(fs*(fs*(7.06921993309619e-23*fs - 6.27071582983166e-20) - 8.5577213049734e-17) + 3.73011351811216e-14) + 3.86712024988311e-13)) + Treble*(Trim*fs*(fs*(fs*(fs*(1.24091304358659e-22*fs - 4.22342742454019e-20) - 1.54709893904393e-17) + 2.23547330541284e-16) + 7.62393673424942e-16) + fs*(fs*(fs*(fs*(6.42656357554199e-23*fs - 4.8000221968982e-20) - 3.9078378022111e-17) + 7.15911951629856e-16) + 3.63509303489012e-15)) + Trim*(fs*(fs*(fs*(fs*(-1.36500434794525e-22*fs + 7.28601068526355e-20) + 6.19481673139533e-17) - 1.67044014151265e-14) - 2.3865494212724e-13) + 4.05528549694118e-12) + fs*(fs*(fs*(fs*(-7.06921993309619e-23*fs + 6.64737836883099e-20) + 9.4050281748771e-17) - 4.23602457235067e-14) - 7.65607061519077e-13) + 1.93356012494155e-11) + Treble*(Trim*fs*(fs*(fs*(fs*(8.1900260876715e-25*fs - 5.28326849863888e-19) - 2.76083406835409e-16) + 4.02806307880799e-15) + 1.37862050569164e-14) + fs*(fs*(fs*(fs*(4.24153195985771e-25*fs - 2.7378759191359e-19) - 6.94496944334729e-16) + 1.28775202952392e-14) + 6.57326257113772e-14)) + Trim*(fs*(fs*(fs*(fs*(-9.00902869643864e-25*fs + 5.81333790724482e-19) + 8.65741587799681e-16) - 2.98136621339251e-13) - 4.30033831365621e-12) + 7.3330877962321e-11) + fs*(fs*(fs*(fs*(-4.66568515584348e-25*fs + 3.01256596465798e-19) + 1.05521003442096e-15) - 7.5299180885107e-13) - 1.37717955640688e-11) + 3.49641626124347e-10;

    a4 = Bass*(Treble*(Trim*pow(fs,2)*(fs*(fs*(4.09501304383575e-25*fs - 7.92424817587331e-19) + 6.76768504805577e-17) + 6.89310252845818e-16) + pow(fs,2)*(fs*(fs*(2.12076597992886e-25*fs - 4.10647488241876e-19) + 3.10806269572715e-16) + 3.28663128556886e-15)) + Trim*fs*(fs*(fs*(fs*(-4.50451434821932e-25*fs + 8.71928683157373e-19) - 3.55446243892915e-16) - 7.27548907255322e-14) + 2.19992633886963e-12) + fs*(fs*(fs*(fs*(-2.33284257792174e-25*fs + 4.51847605107335e-19) - 4.87506573211503e-16) - 3.34260262044674e-13) + 1.04892487837304e-11)) + Gain*(Bass*(Treble*(Trim*pow(fs,2)*(fs*(fs*(6.20456521793295e-23*fs - 5.34336525043607e-20) + 3.77525356518785e-18) + 3.81196836712471e-17) + pow(fs,2)*(fs*(fs*(3.21328178777099e-23*fs - 6.68640256034821e-20) + 1.73435992252234e-17) + 1.81754651744506e-16)) + Trim*fs*(fs*(fs*(fs*(-6.82502173972625e-23*fs + 9.83806255288369e-20) - 2.31008826466573e-17) - 4.05815884904672e-15) + 1.21658564908235e-13) + fs*(fs*(fs*(fs*(-3.53460996654809e-23*fs + 9.40607374474749e-20) - 4.2788606524867e-17) - 1.86505675905608e-14) + 5.80068037482466e-13)) + Treble*(Trim*fs*(fs*(fs*(fs*(-6.20456521793295e-23*fs + 6.33514113681028e-20) - 7.73549469521963e-18) - 1.11773665270642e-16) + 1.14359051013741e-15) + fs*(fs*(fs*(fs*(-3.21328178777099e-23*fs + 7.20003329534729e-20) - 1.95391890110555e-17) - 3.57955975814928e-16) + 5.45263955233518e-15)) + Trim*(fs*(fs*(fs*(fs*(6.82502173972625e-23*fs - 1.09290160278953e-19) + 3.09740836569766e-17) + 8.35220070756327e-15) - 3.57982413190859e-13) + 2.02764274847059e-12) + fs*(fs*(fs*(fs*(3.53460996654809e-23*fs - 9.97106755324649e-20) + 4.70251408743855e-17) + 2.11801228617533e-14) - 1.14841059227862e-12) + 9.66780062470777e-12) + Treble*(Trim*fs*(fs*(fs*(fs*(-4.09501304383575e-25*fs + 7.92490274795832e-19) - 1.38041703417704e-16) - 2.01403153940399e-15) + 2.06793075853745e-14) + fs*(fs*(fs*(fs*(-2.12076597992886e-25*fs + 4.10681387870386e-19) - 3.47248472167364e-16) - 6.43876014761958e-15) + 9.85989385670658e-14)) + Trim*(fs*(fs*(fs*(fs*(4.50451434821932e-25*fs - 8.72000686086724e-19) + 4.32870793899841e-16) + 1.49068310669626e-13) - 6.45050747048432e-12) + 3.66654389811605e-11) + fs*(fs*(fs*(fs*(2.33284257792174e-25*fs - 4.51884894698696e-19) + 5.27605017210479e-16) + 3.76495904425535e-13) - 2.06576933461033e-11) + 1.74820813062173e-10;

    a5 = Bass*(Treble*(Trim*pow(fs,2)*(fs*(fs*(-8.1900260876715e-26*fs + 2.64141605862444e-19) - 6.76768504805577e-17) + 6.89310252845818e-16) + pow(fs,2)*(fs*(fs*(-4.24153195985771e-26*fs + 1.36882496080625e-19) - 3.10806269572715e-16) + 3.28663128556886e-15)) + Trim*fs*(fs*(fs*(fs*(9.00902869643865e-26*fs - 2.90642894385791e-19) + 3.55446243892915e-16) - 7.27548907255322e-14) + 7.3330877962321e-13) + fs*(fs*(fs*(fs*(4.66568515584348e-26*fs - 1.50615868369112e-19) + 4.87506573211503e-16) - 3.34260262044674e-13) + 3.49641626124347e-12)) + Gain*(Bass*(Treble*(Trim*pow(fs,2)*(fs*(fs*(-1.24091304358659e-23*fs + 1.78112175014536e-20) - 3.77525356518785e-18) + 3.81196836712471e-17) + pow(fs,2)*(fs*(fs*(-6.42656357554199e-24*fs + 2.2288008534494e-20) - 1.73435992252234e-17) + 1.81754651744506e-16)) + Trim*fs*(fs*(fs*(fs*(1.36500434794525e-23*fs - 3.27935418429456e-20) + 2.31008826466573e-17) - 4.05815884904672e-15) + 4.05528549694118e-14) + fs*(fs*(fs*(fs*(7.06921993309618e-24*fs - 3.13535791491583e-20) + 4.2788606524867e-17) - 1.86505675905608e-14) + 1.93356012494155e-13)) + Treble*(Trim*fs*(fs*(fs*(fs*(1.24091304358659e-23*fs - 2.11171371227009e-20) + 7.73549469521963e-18) - 1.11773665270642e-16) + 3.81196836712471e-16) + fs*(fs*(fs*(fs*(6.42656357554199e-24*fs - 2.4000110984491e-20) + 1.95391890110555e-17) - 3.57955975814928e-16) + 1.81754651744506e-15)) + Trim*(fs*(fs*(fs*(fs*(-1.36500434794525e-23*fs + 3.64300534263177e-20) - 3.09740836569766e-17) + 8.35220070756327e-15) - 1.1932747106362e-13) + 4.05528549694118e-13) + fs*(fs*(fs*(fs*(-7.06921993309618e-24*fs + 3.3236891844155e-20) - 4.70251408743855e-17) + 2.11801228617533e-14) - 3.82803530759538e-13) + 1.93356012494155e-12) + Treble*(Trim*fs*(fs*(fs*(fs*(8.1900260876715e-26*fs - 2.64163424931944e-19) + 1.38041703417704e-16) - 2.01403153940399e-15) + 6.89310252845818e-15) + fs*(fs*(fs*(fs*(4.24153195985771e-26*fs - 1.36893795956795e-19) + 3.47248472167364e-16) - 6.43876014761958e-15) + 3.28663128556886e-14)) + Trim*(fs*(fs*(fs*(fs*(-9.00902869643865e-26*fs + 2.90666895362241e-19) - 4.32870793899841e-16) + 1.49068310669626e-13) - 2.15016915682811e-12) + 7.3330877962321e-12) + fs*(fs*(fs*(fs*(-4.66568515584348e-26*fs + 1.50628298232899e-19) - 5.27605017210479e-16) + 3.76495904425535e-13) - 6.88589778203442e-12) + 3.49641626124347e-11;
};

janrayclip = _<: ba.if(signbit(_), janray_neg_clip, janray_clip) :>_ with {

    signbit = ffunction(int signbit(float), "math.h", "");

    janray_clip = ffunction(float janrayclip(float), "janray_table.h", "");

    janray_neg_clip = ffunction(float janray_negclip(float), "janray_neg_table.h", "");

};

p2 = pre : fi.iir((b0/a0,b1/a0,b2/a0),(a1/a0,a2/a0)) with {
    LogPot(a, x) = ba.if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = ba.if(b, 1 - x, x);
    s = 0.993;
    fs = float(ma.SR);
    pre = _;


    Volume = vslider("Volume[name:Volume]", 0.5, 0, 1, 0.01) : Inverted(0) : LogPot(3) : si.smooth(s);

    b0 = Volume*fs*(1.96686017911516e-11*fs + 2.7766311400433e-5);

    b1 = -3.93372035823031e-11*Volume*pow(fs,2);

    b2 = Volume*fs*(1.96686017911516e-11*fs - 2.7766311400433e-5);

    a0 = fs*(1.96687984771695e-11*fs + 1.98685356395546e-5) + 0.000993377609981536;

    a1 = -3.93375969543389e-11*pow(fs,2) + 0.00198675521996307;

    a2 = fs*(1.96687984771695e-11*fs - 1.98685356395546e-5) + 0.000993377609981536;
};

process =  p1 : p2 ;