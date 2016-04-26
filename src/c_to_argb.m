function ARGB = c_to_argb(C)
  ARGB = fliplr(typecast(int32(C),'uint8'));
end