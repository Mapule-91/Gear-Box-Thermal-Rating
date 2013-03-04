Gear-Box-Thermal-Rating
=======================

Thermal rating for a simple steady state energy balance


%%This program gives the temperature of the gearbox as a function of the Temperature of the cooler at steady state operation
clc
clear all
close all

U = 20;
A = 22;
Ff = 5; %@(T) --Is a function of temperature
Uf = 3;
Fn = 4;
Tw = 25:60; 
T = zeros(length(Tw));
for i=1:length(Tw)
    Tf = @(T)[U*A*(T-Tw(i))+Ff(T)*Uf*Fn];
    T(i) = fsolve(Tf,(Tw(i)+10));
end
T;
plot(Tw,T);
