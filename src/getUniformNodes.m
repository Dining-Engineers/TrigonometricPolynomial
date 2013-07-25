function [ nodi ] = getUniformNodes( a, b, n )
%GETUNIFORMNODES Summary of this function goes here
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

if a > b
    disp(' a è maggiore di b ')
    nodi = b:(a-b)/n:a;
else
    nodi = a:(b-a)/n:b;
end

end

