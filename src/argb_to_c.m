function C = argb_to_c(ARGB)
  C = typecast(uint8(fliplr(ARGB)),'int32');
end