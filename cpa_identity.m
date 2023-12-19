keybyte = 3;

# byte 1
#datapoints = datapoints(: , 432:434);

samples = size(datapoints,1);

T = datapoints(1:samples,:);

D = uint8(plaintexts_SCA(:,keybyte));

n = 256;
K = uint8([1:n]-1);

# Computing SBOX
s_box = s_box_gen;

for i = 1:size(D,1); 
    for j = 1:n
        S(i,j) = bitxor(D(i) , K(j));
    endfor
endfor

for rows = 1:samples
    for cols = 1:n
        V(rows , cols) = s_box(S(rows , cols) + 1);
    endfor
endfor


trace_length = size(T , 2);
R = zeros(trace_length , length(K));

% O V paremenei idios! opote corr (T , V)
R = double(R);
R = corr(T,V);

[M,I] = max(abs(R(:)));
[row, key , key_col] = ind2sub(size(R) , I);