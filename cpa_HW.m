keybyte = 1;

samples = size(datapoints,1);

T = datapoints(1:samples,:);

D = uint8(plaintexts_SCA(:,keybyte));

n = 256;
K = uint8([1:n]-1);

for i = 1:samples; 
    for j = 1:n
        S(i,j) = bitxor(D(i) , K(j));
    endfor
endfor

for rows = 1:samples
    for cols = 1:n
        V(rows , cols) = SubBytes(S(rows , cols) + 1);
    endfor
endfor

for rows = 1:samples
    for cols = 1:n
        H(rows , cols) = HW(V(rows,cols)+1);
    endfor
endfor

trace_length = size(T , 2);
R = zeros(trace_length , length(K));

R = double(R);
R = corr(T,H);

[M,I] = max(abs(R(:)));
[row, key , key_col] = ind2sub(size(R) , I);