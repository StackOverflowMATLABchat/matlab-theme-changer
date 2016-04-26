Color data is represented in the preferences as int32 consisting of 4 bytes
(or groups of 8 bits which are actually uint8), each representing one of
ALPHA R G B in the following manner: AAAAAAAA RRRRRRRR GGGGGGGG BBBBBBBB

To construct this representation from known (A,R,G,B) values one does:

ARGB = A<<24 + R<<16 + G<<8 + B

To convert this representation to a 6-digit hex, or a triplet of base10 
numbers one needs to "reverse" the process.

The alpha component is always implicitly 255 (or FF)

See helper conversion functions:
argb_to_c
c_to_argb
hex_to_argb
hex_to_c