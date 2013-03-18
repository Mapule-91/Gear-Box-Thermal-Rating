clc
clear all
close all

%% Temperature of the gearbox
%U = 20;
%A = 22;
%Ff = @(T) 2*T; %friction = @(T) 1.19*((0.048*(Ft/((B*1000)*2*Vp*(R*1000)))^0.2)*(mio(T)*1000)^(-0.05)*(roughness*10^6)^0.25*((B*1000)/Ft)^0.1055)*(cos(hangle))^(-1.3);
%Uf = 3;
%Fn = 4;
%Tw = 25:60;
%T = zeros(length(Tw));
%for i=1:length(Tw)
    %Tf = @(T)[U*A*(T-Tw(i))+Ff(T)*Uf*Fn];
    %T(i) = fsolve(Tf,(Tw(i)+10));
%end

%% Heat removed by cooler as a function of angular frequency and Torque of shaft
x =10:60; 
y =10:60;
[Tor omega] =meshgrid(x,y);
Qcw = Tor/omega; %Not real relationship
mesh(Tor, omega, Qcw);
