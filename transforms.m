function [id, iq] = transforms(ia, ib, theta)
    %#codegen
    % -------------------------------------------------------------------------
    % Clarke & Park Transforms for PMSM Field-Oriented Control (Project 08)
    % -------------------------------------------------------------------------

    % Safety check: if run as a script without arguments, default to 0
    if nargin < 3
        ia = 0; 
        ib = 0; 
        theta = 0;
    end

    % Clarke Transform: (a, b) -> (alpha, beta)
    ialpha = ia;
    ibeta = (ia + 2 * ib) / sqrt(3);[cite: 8]
    
    % Park Transform: (alpha, beta) -> (d, q)
    c = cos(theta);
    s = sin(theta);
    
    id = ialpha * c + ibeta * s; [cite: 8]
    iq = -ialpha * s + ibeta * c;[cite: 8]

end