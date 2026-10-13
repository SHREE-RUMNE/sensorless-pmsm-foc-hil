%% foc_params.m - PMSM Motor Parameters and Controller Tuning (Project 08)
clear; clc;

% --- Motor Electrical & Mechanical Parameters ---
m.p = 4;                 % Number of pole pairs
m.Rs = 0.35;             % Stator resistance (Ohms)[cite: 8]
m.Ld = 0.9e-3;           % d-axis inductance (Henrys)[cite: 8]
m.Lq = 1.1e-3;           % q-axis inductance (Henrys)[cite: 8]
m.lam = 0.07;            % Permanent magnet flux linkage (Wb)[cite: 8]

% --- Inverter & PWM Settings ---
Fpwm = 20e3;             % PWM switching frequency (20 kHz)[cite: 8]
Ts = 1 / Fpwm;           % Control/PWM period (50 microseconds)[cite: 8]
Vdc = 400;               % DC Bus voltage (Volts)

% --- Current Loop Tuning (Internal Model Control) ---
wc = 2 * pi * 1200;      % Target current-loop bandwidth (rad/s)[cite: 8]
Kp_i = m.Lq * wc;        % Proportional gain for q-axis current loop[cite: 8]
Ki_i = m.Rs * wc;        % Integral gain for q-axis current loop[cite: 8]
Kp_d = m.Ld * wc;        % Proportional gain for d-axis current loop
Ki_d = m.Rs * wc;        % Integral gain for d-axis current loop

% --- Outer Speed Loop Tuning ---
Kp_w = 0.5;              % Proportional gain for speed loop[cite: 8]
Ki_w = 20;               % Integral gain for speed loop[cite: 8]

disp('PMSM Parameters and FOC Gains Loaded Successfully!');