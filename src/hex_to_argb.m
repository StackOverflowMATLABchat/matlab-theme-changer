function ARGB = hex_to_argb(HEX)
% HEX is a string of length 2*n
  ARGB = uint8(hex2dec(reshape(HEX,2,[]).')).';
end