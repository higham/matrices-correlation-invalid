function A = bhwi01
%bhwi01   Invalid correlation matrix relating to portfolio risk.
%   bhwi01 is a 5-by-5 invalid correlation matrix relating to portfolio risk.

%   Source: second matrix in Section 2 of
%   Vineer Bhansali and Mark B. Wise.
%   Forecasting portfolio risk in normal and stressed markets.
%   Journal of Risk, 4(1):91-106, 2001.

A = [1 -0.50 -0.30 -0.25 -0.70;
    -0.50 1 0.90 0.30 0.70;
    -0.30 0.90 1 0.25 0.20;
    -0.25 0.30 0.25 1 0.75;
    -0.70 0.70 0.20 0.75 1];
