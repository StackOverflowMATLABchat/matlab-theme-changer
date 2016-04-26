function C = hex_to_c(HEX)
% HEX is a string of length 2*n
  C = argb_to_c(uint8(hex2dec(reshape(HEX,2,[]).')).');
end