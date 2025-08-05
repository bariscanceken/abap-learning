*&---------------------------------------------------------------------*
*& Report ZBCC_EGT_0003
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbcc_egt_0003.

DATA : gv_persid    TYPE zbcc_persid_de,
       gv_persad    TYPE zbcc_persad_de,
       gv_perssoyad TYPE zbcc_perssoyad_de,
       gv_perscins  TYPE zbcc_perscins_de,
       gs_pers_t    TYPE zbcc_pers_t,
       gt_pers_t    TYPE TABLE OF zbcc_pers_t.


*select * from ZBCC_PERS_T
*  into TABLE gt_pers_t.
*
*  select SINGLE * from gt_pers_t
*    INTO gs_pers_t.
*
*  select SINGLE PERS_ID from gt_pers_t
*    INTO gv_persid WHERE pers_id eq 1.

*    update ZBCC_PERS_T set PERS_AD = 'Barışcanoo'
*    Where pers_id eq 1.
*    WRITE 'degisti'.

*gs_pers_t-pers_ad = 'Nazlıcan'.
*gs_pers_t-pers_cins = 'K'.
*gs_pers_t-pers_id = 3.
*gs_pers_t-pers_soyad = 'Severli'.
*
*INSERT ZBCC_PERS_T FROM gs_pers_t.
*write 'Çalıştırıldı'.

DELETE FROM ZBCC_PERS_T where pers_id eq 2.
write 'calıştırıldı'.