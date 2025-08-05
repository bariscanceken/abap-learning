*&---------------------------------------------------------------------*
*& Report ZBCC_EGT_0002
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbcc_egt_0002.

*data gv_degs1 type i.
*data gv_degs2 type n LENGTH 10.

DATA gv_degs1 TYPE i.
*      gv_degs2 TYPE n LENGTH 10,
*      gv_sonuc TYPE i,
*      gv_metin TYPE string.

*gv_metin = 'toplamı'.
gv_degs1 = 5.
*gv_degs2 = 5.
*gv_sonuc = gv_degs1 + gv_degs2.
*WRITE : gv_metin , gv_sonuc.
*gv_sonuc = gv_degs1 - gv_degs2.
*WRITE : / 'farkı', gv_sonuc.
*gv_sonuc = gv_degs1 * gv_degs2.
*WRITE : / 'çarpımı', gv_sonuc.
*gv_sonuc = gv_degs1 / gv_degs2.
*WRITE : / 'bölümü', gv_sonuc.

*if gv_degs1 > gv_degs2.
*  WRITE: / 'Birinci Sayı Büyüktür!'.
*  endif.
*
*if gv_degs2 = gv_degs1.
*  WRITE: / 'Sayılar Eşit'.
*  endif.
*
*if gv_degs2 > gv_degs1.
*  WRITE: / 'İkinci Sayı Büyüktür!'.
*  endif.

*IF gv_degs1 > gv_degs2.
*  WRITE: 'Birinci Sayı Büyüktür'.
*ELSEIF gv_degs2 > gv_degs1.
*  WRITE: / 'İkinci Sayı Büyüktür!'.
*ELSEIF gv_degs2 = 5.
*  WRITE: / 'İkinci Sayı Beş!'.
*ELSE.
*  WRITE: 'Sayılar Eşit!'.
*ENDIF.
*
*CASE gv_degs1.
*  WHEN 1.
*    WRITE 'değişkenin değeri 1!'.
*  WHEN 2.
*    WRITE 'değişkenin değeri 2!'.
*  WHEN 3.
*    WRITE 'değişkenin değeri 3!'.
*  WHEN 4.
*    WRITE 'değişkenin değeri 4!'.
*  WHEN 5.
*    WRITE 'değişkenin değeri 5!'.
*  WHEN 6.
*    WRITE 'değişkenin değeri 6!'.
*  WHEN 7.
*    WRITE 'değişkenin değeri 7!'.
*  WHEN 8.
*    WRITE 'değişkenin değeri 8!'.
*ENDCASE.

*DO 10 TIMES.
*  WRITE / 'calis'.
*  ENDDO.

WHILE gv_degs1 < 300.
  gv_degs1 = gv_degs1 + 14 .
  WRITE / 'Merhaba'.
ENDWHILE.