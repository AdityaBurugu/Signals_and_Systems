% Define the analog signal
t = 0:0.001:1; % Time vector from 0 to 1 second
Analog_Signal = sin(2*pi*5*t); % Example analog signal (sine wave)
% PCM parameters
bit_depth = 8; % Number of bits for quantization
quantization_levels = 2^bit_depth; % Total quantization levels
% Quantization
Quantized_Signal = round((Analog_Signal + 1) * (quantization_levels - 1) / 2);
% Demodulation
Demodulated_Signal = (2 * Quantized_Signal) / (quantization_levels - 1) - 1;
% Encoding PCM
Encoded_PCM = de2bi(Quantized_Signal, bit_depth, 'left-msb');
% Plotting
subplot(4,1,1);
plot(t, Analog_Signal);
title('Analog Signal');
xlabel('Time');
ylabel('Amplitude');
subplot(4,1,2);
stairs(t, Quantized_Signal);
title('Quantized Signal');
xlabel('Time');
ylabel('Amplitude');
subplot(4,1,3);
plot(t, Demodulated_Signal);
title('Demodulated Signal');
xlabel('Time');
ylabel('Amplitude');
subplot(4,1,4);
plot(t, Encoded_PCM);
title('Encoded PCM');
xlabel('Time');
ylabel('Bit');