*&---------------------------------------------------------------------*
*& Report ZBCC_EGT_0001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

"Bazı Değişken Türleri ve Veri Tanımlama

REPORT ZBCC_EGT_0001.


DATA gv_desg1 type p DECIMALS 2.
DATA gv_desg2 type int4.
DATA gv_desg3 type n.
DATA gv_desg4 type c.
DATA gv_desg5 type string.

gv_desg1 = '12.54'.
gv_desg1 = '12.51324'.

gv_desg2 = '12'.
gv_desg2 = '132'.

gv_desg3 = 654.

gv_desg4 = 'a'.

gv_desg5 = 'Herhangi Bir Cümle'.