// Secuencias

// Para cambiar el tempo
//

(// puede comentar esta línea depués de declarar las secuencias para declarar individualmente
(
~sec1 = Pdef(\sec, Pbind(\instrument, \sine,
	\dur, Pseq([0.5, 0.25, 0.25, Pn(0.125, 4), 1], inf),
	\amp, 0.12,
	\freq, Pseq([500, 300, 800, 900, Pn(250, 2), Pseq([300, 700, 400, 600], 8)], inf),
	\rel, 0.3,
	\out, 0
))
);

(
~sec2 = Pdef(\sec2, Pbind(\instrument, \saw,
	\dur, Pseq([0.5, 0.125, 0.125, 0.5, Pn(0.25, 2)], inf),
	\amp, 0.2,
	\freq, Pseq([800, 600, 200, 300, 850], inf),
	\rel, 0.5,
	\out, 0
))
);

(
~sec3 = Pdef(\sec3, Pbind(\instrument, \tri,
	\dur, 0.0525,
	\amp, Pseq([0.06, 0.10, 0.5, 0.5, 0.03, 0.02, 0.6, 0.01, Pseq([0.5, 0.025, 0.01, 0.10], 5)], inf),
	\at, 0.010, \rel, 0.2,
	\out, 0
))
);

(
~sec4 = Pdef(\sec4, Pbind(\instrument, \pulse,
	\dur, 0.5,
	\amp, 0.3,
	\freq, Pseq([600, 200, 300, 800], inf),
	\at, 0.01, \rel, 0.5,
	\out, 0
))
);

(
~son1 = Pdef(\son1, Pbind(\instrument, \audio,
	\dur, Pseq([0.25, 0.125, 0.125], inf),
	\sus, Pseq([0.04, 0.02], inf),
	\rel, Pseq([0.2, 0.1, 0.01, 0.02], inf),
	\rate, Pseq([1, 1.5, 1, 1, 1.8], inf),
	\sp, Pseq([0.1, 0.5, 0.75, 0.1, Pn(0.2, 4)], inf),
	\amp, 0.6,
	\out, 0
))
);
);

~sec1.play.quant(4);
~sec2.play.quant(4);
~sec3.play.quant(4);
~sec4.play.quant(4);
~son1.play.quant(4);

Pbindef(\sec, \freq, Pseq([300, 400, 800, 790, Pn(350, 4), Pseq([400, 500, 470, 750], 3)].pyramid, inf));
Pbindef(\sec4, \dur, Pseq([0.375, 0.125, 0.5, 0.5, 0.5], inf), \freq, Pseq([300, 375, Pn(300, 3)], inf));

// modificación de efectos
~rev.set(\mix, 0.5, \room, 0.5, \damp, 0.5);
~dly.set(\dt, 0.25, \dct, 1.1, \out, 0);

~sec1.stop;
~sec2.stop;
~sec3.stop;
~sec4.stop;
~son1.stop;

s.quit;