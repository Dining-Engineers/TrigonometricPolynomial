function [ x_tab, y_tab ] = genTrigonometricPol( nodi, f, n, a_tab, b_tab )
%GENTRIGONOMETRICPOL Summary of this function goes here
%   Detailed explanation goes here

% Authors:  - Andrea Rizzo, andrearizzo [at] outlook.com
%           - Matteo Bruni, matteo.bruni [at] gmail.com
%             
% Date: 14/06/2013
%
% You are free to use, change, or redistribute this code in any way you
% want for non-commercial purposes. However, it is appreciated if you 
% maintain the name of the original author.
%
% (C) A.Rizzo, M. Bruni

a = zeros( 1, n+1 );
b = zeros( 1, n+1 );

x_tab = a_tab:0.01:b_tab;

m = length(nodi);

a(1) = sum(f)/m;
b(1) = 0;

y_tab = ones(1, length(x_tab)) * a(1);
   
for k=2:n+1
    
   a(k) = (2/m)*(f*(cos((k-1)*nodi))');
   b(k) = (2/m)*(f*(sin((k-1)*nodi))');

   % nel caso in cui m = 2n il b(n) non si usa (è uguale a 0)
   if( m == 2*n && k == n+1)
        %{
        Polinomio interpolante caso m = 2n
        in questo caso si hanno 2n basi
        %}

       b(k) = 0;
       a(k) = a(k)/2;
   end

   y_tab = y_tab + a(k)*cos((k-1)*x_tab) + b(k)*sin((k-1)*x_tab);

end

end

