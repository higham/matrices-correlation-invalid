function A = mmb13
%MMB13    Invalid correlation matrix from foreign exchange trading.
%   mmb13 is a 6-by-6 invalid correlation matrix from foreign exchange
%   trading data supplied by the Royal Bank of Scotland.

%   Source: page 36 of
%   Aleksei Minabutdinov, Ilia Manaev, and Maxim Bouev.
%   Finding the Nearest Valid Covariance Matrix:
%   A FX Market Case. Working paper  Ec-07/13, Department of Economics,
%   European University at St. Petersburg,
%   St. Petersburg, Russia, 2013. Revised June 2014.

A = [0.010712 0.000654  0.002391  0.010059 -0.008321  0.001738
     0.000654 0.000004  0.002917  0.000650  0.002263  0.002913
     0.002391 0.002917  0.013225 -0.000525  0.010834  0.010309
     0.010059 0.000650 -0.000525  0.009409 -0.010584 -0.001175
    -0.008321 0.002263  0.010834 -0.010584  0.019155  0.008571
     0.001738 0.002913  0.010309 -0.001175  0.008571  0.007396];

d = sqrt(diag(A));
A = A ./ (d*d'); % Diagonal is now 1 to within roundoff.
A(1:7:end) = 1;  % Force exactly unit diagonal.