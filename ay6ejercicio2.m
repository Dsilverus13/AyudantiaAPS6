clear all
x = audioread('avioneta.wav');
Fs = 22050; % frecuencia de muestreo
M = 4096; % tamaño del segmento
T = M/2; % traslapo
x = x - mean(x);
[P, f] = pwelch(x, hamming(M), T, M, Fs);
semilogy (f, P,'c'); axis([10 200 1e-6 1]); grid;
hold on
M = 22050; % tamaño del segmento
T = M/2; % traslapo
x = x - mean(x);
[P, f] = pwelch(x, hamming(M), T, M, Fs);
semilogy (f, P,'m'); axis([10 200 1e-6 1]); grid;
M = 65536; % tamaño del segmento
T = M/2; % traslapo
x = x - mean(x);
[P, f] = pwelch(x, hamming(M), T, M, Fs);
semilogy (f, P,'g'); axis([10 200 1e-6 1]); grid; title('PSD del Archivo');
legend('N=4096','N=22050','N=65536')
whitebg('black')
hold off

%Agregar axis a todo