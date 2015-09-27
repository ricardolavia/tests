create table TABLE_01 (
 FIELD_1 int null ,
 FIELD_2 int null
)
TABLESPACE IB1_00_MY_TABLESPACE
STORAGE
(
 INITIAL 100K
 NEXT    100K
 MINEXTENTS 1
 MAXEXTENTS 10000
)
PCTFREE 10
INITRANS 10
MAXTRANS 100
LOGGING
PARTITION BY RANGE (FIELD_1)
(
 PARTITION p001 VALUES LESS THAN (1),
 PARTITION p002 VALUES LESS THAN (2),
 PARTITION p003 VALUES LESS THAN (3),
 PARTITION pmax VALUES LESS THAN (MAXVALUE)
)


