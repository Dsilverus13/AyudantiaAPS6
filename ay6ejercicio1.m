N = 2048; n = [0 : N-1];
x = 0.08 * cos(2*pi * 49 * n/N) + cos(2*pi * 51.6 * n/N) + cos(2*pi * 52.36 * n/N) + 0.003 * cos(2*pi * 60 * n/N);
% FFT con ventana rectangular
Mr = (2/N) * abs(fft(x));
% FFT con ventana Hamming
xm = x .* hamming(N)';
M = mean(hamming(N)); % factor de atenuación de la ventana
Mm = (1/M) * (2/N) * abs(fft(xm));
% FFT con ventana Hanning
xn = x .* hanning(N)';
M = mean(hanning(N)); % factor de atenuación de la ventana
Mn = (1/M) * (2/N) * abs(fft(xn));
% FFT con ventana Blackman
xb = x .* blackman(N)';
M = mean(blackman(N)); % factor de atenuación de la ventana
Mb = (1/M) * (2/N) * abs(fft(xb));
subplot 241; k = [0 : N-1]; semilogy(k, Mr); axis([40 65 0.001 1]);
grid; title('Rectangular para N=2048'); xlabel('k'); ylabel('Mag')
subplot 242; semilogy(k, Mm); axis([40 65 0.001 1]);
grid; title('Hamming para N=2048'); xlabel('k'); ylabel('Mag')
subplot 243; semilogy(k, Mn); axis([40 65 0.001 1]);
grid; title('Hanning para N=2048'); xlabel('k'); ylabel('Mag')
subplot 244; semilogy(k, Mb); axis([40 65 0.001 1]);
grid; title('Blackman para N=2048'); xlabel('k'); ylabel('Mag')

clear all

N2 = 20480; n2 = [0 : N2-1];
x2 = 0.08 * cos(2*pi * 490 * n2/N2) + cos(2*pi * 516 * n2/N2) + cos(2*pi * 523.6 * n2/N2) + 0.003 * cos(2*pi * 600 * n2/N2);
% FFT con ventana rectangular
Mr2 = (2/N2) * abs(fft(x2));
% FFT con ventana Hamming
xm2 = x2 .* hamming(N2)';
M2 = mean(hamming(N2)); % factor de atenuación de la ventana
Mm2 = (1/M2) * (2/N2) * abs(fft(xm2));
% FFT con ventana Hanning
xn2 = x2 .* hanning(N2)';
M2 = mean(hanning(N2)); % factor de atenuación de la ventana
Mn2 = (1/M2) * (2/N2) * abs(fft(xn2));
% FFT con ventana Blackman
xb2 = x2 .* blackman(N2)';
M2 = mean(blackman(N2)); % factor de atenuación de la ventana
Mb2 = (1/M2) * (2/N2) * abs(fft(xb2));
subplot 245; k2 = [0 : N2-1]; semilogy(k2, Mr2); axis([400 650 0.001 1]);
grid; title('Rectangular para N2=20480');xlabel('k2') ;ylabel('Mag')
subplot 246; semilogy(k2, Mm2); axis([400 650 0.001 1]);
grid; title('Hamming para N2=20480');xlabel('k2'); ylabel('Mag')
subplot 247; semilogy(k2, Mn2); axis([400 650 0.001 1]);
grid; title('Hanning para N2=20480'); xlabel('k2'); ylabel('Mag')
subplot 248; semilogy(k2, Mb2); axis([400 650 0.001 1]);
grid; title('Blackman para N2=20480 '); xlabel('k2'); ylabel('Mag')
