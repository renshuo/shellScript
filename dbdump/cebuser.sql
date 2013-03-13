--------------------------------------------
-- Export file for user CEBUSER           --
-- Created by admin on 2013-2-1, 12:51:55 --
--------------------------------------------

spool cebuser.log

prompt
prompt Creating sequence ATTACHMENT_SEQUENCE
prompt =====================================
prompt
create sequence ATTACHMENT_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence BACKUP_SEQUENCE
prompt =================================
prompt
create sequence BACKUP_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 341
increment by 1
cache 20;

prompt
prompt Creating sequence CEB_M3O_ID
prompt ============================
prompt
create sequence CEB_M3O_ID
minvalue 1
maxvalue 9999999999999999999
start with 219621
increment by 1
cache 20
cycle
order;

prompt
prompt Creating sequence CEB_TRANSACTION_ID
prompt ====================================
prompt
create sequence CEB_TRANSACTION_ID
minvalue 1
maxvalue 9999999999999999999
start with 187461
increment by 1
cache 20
cycle
order;

prompt
prompt Creating sequence HIBERNATE_SEQUENCE
prompt ====================================
prompt
create sequence HIBERNATE_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 1469564014361
increment by 1
cache 20;

prompt
prompt Creating sequence JOURNO
prompt ========================
prompt
create sequence JOURNO
minvalue 1
maxvalue 999999
start with 2410
increment by 1
cache 20
cycle
order;

prompt
prompt Creating sequence NOTE_SEQUENCE
prompt ===============================
prompt
create sequence NOTE_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 18614600
increment by 1
cache 20;

prompt
prompt Creating sequence ORDER_SEQUENCE
prompt ================================
prompt
create sequence ORDER_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 1776301680
increment by 1
cache 20;

prompt
prompt Creating sequence QUEST_SOO_AT_SEQUENCE
prompt =======================================
prompt
create sequence QUEST_SOO_AT_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEPARATION_SEQUENCE
prompt =====================================
prompt
create sequence SEPARATION_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 7081
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EBANK
prompt ===========================
prompt
create sequence SEQ_EBANK
minvalue 1
maxvalue 10000
start with 7501
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SEQ_MIS_BOARD
prompt ===============================
prompt
create sequence SEQ_MIS_BOARD
minvalue 1
maxvalue 99999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_MIS_FORUM
prompt ===============================
prompt
create sequence SEQ_MIS_FORUM
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_RELATE_ORDER
prompt ==================================
prompt
create sequence SEQ_RELATE_ORDER
minvalue 1
maxvalue 9999999999999
start with 1
increment by 1
cache 10;

prompt
prompt Creating sequence SEQ_TXN
prompt =========================
prompt
create sequence SEQ_TXN
minvalue 100000
maxvalue 999999
start with 229960
increment by 1
cache 20
cycle
order;

prompt
prompt Creating sequence SEQ_VBS_ORDER_ID
prompt ==================================
prompt
create sequence SEQ_VBS_ORDER_ID
minvalue 1
maxvalue 9999999999999999999
start with 2568084282
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_VBS_SERVICE_FORM_INSTANCE
prompt ===============================================
prompt
create sequence SEQ_VBS_SERVICE_FORM_INSTANCE
minvalue 1
maxvalue 9999999999999999999
start with 1
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SEQ_VPE_INSTANCE
prompt ==================================
prompt
create sequence SEQ_VPE_INSTANCE
minvalue 1
maxvalue 99999999999999999999
start with 9140992746
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SEQ_VSM_LOG_BEHAVIOR_ID
prompt =========================================
prompt
create sequence SEQ_VSM_LOG_BEHAVIOR_ID
minvalue 1
maxvalue 9999999999
start with 169631400
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SEQ_VSM_LOG_LOGIN_ID
prompt ======================================
prompt
create sequence SEQ_VSM_LOG_LOGIN_ID
minvalue 1
maxvalue 9999999999
start with 4425021575
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SEQ_VTM_ACTIVITY
prompt ==================================
prompt
create sequence SEQ_VTM_ACTIVITY
minvalue 1
maxvalue 199999999999
start with 100
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SEQ_VTM_ACTIVITY_INSTANCE
prompt ===========================================
prompt
create sequence SEQ_VTM_ACTIVITY_INSTANCE
minvalue 1
maxvalue 199999999999
start with 12339241
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SEQ_VTM_FORM_INS
prompt ==================================
prompt
create sequence SEQ_VTM_FORM_INS
minvalue 1
maxvalue 1999999999999999999
start with 12655725182
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence SEQ_VTM_TASK
prompt ==============================
prompt
create sequence SEQ_VTM_TASK
minvalue 1
maxvalue 199999999999
start with 1228513661
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence VITRIA$SEQID_SEQ
prompt ==================================
prompt
create sequence VITRIA$SEQID_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 20001
increment by 1000
cache 20;

prompt
prompt Creating sequence VITRIA$TABLEID_SEQ
prompt ====================================
prompt
create sequence VITRIA$TABLEID_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 1680001
increment by 1000
cache 20;

prompt
prompt Creating view DEPARTTASKBO
prompt ==========================
prompt
create or replace view departtaskbo as
select vt."TASKID", --vtm_task
       vt."PTASKID", --vtm_task
       vt."AINSID", --vtm_task
       vt."PRIORITY", --vtm_task
       vt."STATUS", --vtm_task
       vt."STATUSTIME", --vtm_task
       vt."CREATEDTIME", --vtm_task
       vt."OWNER", --vtm_task
       vt."RESOURCEID", --vtm_task
       vt."TIMEOUTSTATUS", --vtm_task
       vt.score, --vtm_task
       vt.scoredetail, --vtm_task
       vt.performance, --vtm_task
       vt.firsttimeoutdate, --vtm_task
       vt.departmentid, --vtm_task
       vt.groupid,
       '' as ACTIVITYNAME,
       '' as ACTIVITYPRIORITY,
       '' as ACTIVITYWORKLOAD,
       '' as ASSIGNMENTID,
       vt.formid as ACTIVITYFORMID,
       '' as ACTIVITYLABEL,
       vh.businesstype as ACTIVITYBOMID,
       /*va."ACTIVITYNAME", --vmr_activity
       va."ACTIVITYPRIORITY", --vmr_activity
       va."ACTIVITYWORKLOAD", --vmr_activity
       va."ASSIGNMENTID", --vmr_activity
       va."ACTIVITYFORMID", --vmr_activity
       va."ACTIVITYLABEL", --vmr_activity
       va."ACTIVITYBOMID" , --vmr_activity
       */
       vt."BOMINSID", --vtm_activity_inst
       vt."ACTIVITYID", --vtm_activity_inst
       /*vr1.username as ownername, --Vum_Staff
       vr2."CODE", --vum_staff
       vr2."USERNAME", --vum_staff*/
       vt.ownerlabel as ownername,
       vt.resourcename as code,
       vt.resourcelabel as USERNAME,
       --vos.org_id as deptid, --vum_org_staff
       vt.departmentlabel as deptid,
    --   vt.cooperatestatus as cooperatestatus,
       --vte.errorstatus, --vtm_task_error
       --(select count(*) from vtm_task_error a where a.bominsid = vt.bominsid)  as errorstatus,
       '' as bomname,
       '' as bomlabel,
       --vb.name as bomname, --vmr_bom
       --vb.label as bomlabel, --vmr_bom
       vh.orderid as ORDERSEQUENCE, --vtm_activity_inst
       vh.status as orderstatus, --vega_boheader
       vh.orderabstract, --vega_boheader
       vh.orderduedate, --vega_boheader
       vh.orderlt, --vega_boheader
       vh.currentstepcode, --vega_boheader
       vh.currentstepname, --vega_boheader
       vh.currentsteplabel, --vega_boheader
       vh.currentstepduedate, --vega_boheader
       vh.stepstarttime, --vega_boheader
       vh.currentsteplt, --vega_boheader
       vh.biztypecode, --vega_boheader
       vh.biztypename, --vega_boheader
       vh.bizinfo1, --vega_boheader
       vh.bizinfo2, --vega_boheader
       vh.bizinfo3, --vega_boheader
       vh.bizinfo4, --vega_boheader
       vh.bizinfo5, --vega_boheader
       vh.orderid , --vega_boheader
       vh.bizinfo6, --vega_boheader
       vh.bizinfo7, --vega_boheader
       vh.bizinfo8, --vega_boheader
       vh.bizinfo9, --vega_boheader
       vh.bizinfo10, --vega_boheader
       vh.bizinfo11, --vega_boheader
       vh.bizinfo12, --vega_boheader
       vh.bizinfo13, --vega_boheader
       vh.bizinfo14, --vega_boheader
       vh.bizinfo15, --vega_boheader
       cast(vh.requesttime as date) as requesttime, --vega_boheader
       /*vte.errorstatus,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,*/
       '' as errorstatus,
     --  (select 6002 as errorstatus from vtm_task_error a where a.bominsid = vt.bominsid and rownum = 1) as errorstatus,
       (select a.type from vtm_urgent a  where type = '11002' and a.bominstid = vt.bominsid and rownum = 1) as urgency,
       (select a.type from vtm_urgent a  where type = '11003' and a.bominstid = vt.bominsid and rownum = 1) as supplement,
       (select a.type from vtm_urgent a  where type = '11001' and a.bominstid = vt.bominsid and rownum = 1) as remarks,
       vt.cooperatestatus as stepcount,
       --bpi.step_count as stepcount, --bw_process_instance
       bpia.time_out_state as ordertimeoutstatus, --bw_process_instance
       bpia.step_out_state as orderstepoutstatus, --bw_process_instance
       '' as suggestion,
       --(select 6002 from vtm_task a where vt.taskid = a.ptaskid and  a.status in (3132, 3134)  and rownum = 1 ) as bizinfo14, -- 待协作
       --vfi.process_suggestion as suggestion , --vtm_form_ins*/
       vt.retroversioncount as RetrovesionNum
  from vtm_task vt,
      -- vtm_activity_ins vai,
     --  vmr_activity va ,
       --Vum_Staff vr1,
       --Vum_Staff vr2,
       --vum_org_staff vos,
     --  vmr_bom vb,
       vega_boheader vh,
       /*(select distinct a.bominsid, 6002 as errorstatus from vtm_task_error a) vte,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11002') vn1,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11003') vn2,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11001') vn3,*/
       /*(select * from vtm_form_ins m where m.form_def_id is not null and m.remark != 'R'
           --and rownum = 1
           --order by m.operate_time desc
         ) vfi*/
         --vtm_form_ins
       bw_process_instance_data bpia
 where
   -- vt.ainsid = vai.instanceid
   --and vt.owner = vr1.id
   --and vt.resourceid = vr2.id
   --and vt.resourceid = vos.staff_id
   --and
 --  vt.activityid = va.activityid
 --  and va.ACTIVITYBOMID = vb.id
    vt.BOMINSID = vh.e_id(+)
/*
   and vt.BOMINSID = vte.bominsid(+)
   and vt.BOMINSID = vn1.bominstid(+)
   and vt.BOMINSID = vn2.bominstid(+)
   and vt.BOMINSID = vn3.bominstid(+)
   */
   and vt.BOMINSID = bpia.bom_inst_id(+)
   --and vt.taskid = vfi.task_id(+)
  -- )
  order by vt.statustime desc
/

prompt
prompt Creating view DEPARTTASKBO_ALL
prompt ==============================
prompt
create or replace view departtaskbo_all as
select "TASKID","PTASKID","AINSID","PRIORITY","STATUS","STATUSTIME","CREATEDTIME","OWNER","RESOURCEID","TIMEOUTSTATUS","SCORE","SCOREDETAIL","PERFORMANCE","FIRSTTIMEOUTDATE","DEPARTMENTID","GROUPID","ACTIVITYNAME","ACTIVITYPRIORITY","ACTIVITYWORKLOAD","ASSIGNMENTID","ACTIVITYFORMID","ACTIVITYLABEL","ACTIVITYBOMID","BOMINSID","ACTIVITYID","OWNERNAME","CODE","USERNAME","DEPTID","BOMNAME","BOMLABEL","ORDERSEQUENCE","ORDERSTATUS","ORDERABSTRACT","ORDERDUEDATE","ORDERLT","CURRENTSTEPCODE","CURRENTSTEPNAME","CURRENTSTEPLABEL","CURRENTSTEPDUEDATE","STEPSTARTTIME","CURRENTSTEPLT","BIZTYPECODE","BIZTYPENAME","BIZINFO1","BIZINFO2","BIZINFO3","BIZINFO4","BIZINFO5","ORDERID","BIZINFO6","BIZINFO7","BIZINFO8","BIZINFO9","BIZINFO10","BIZINFO11","BIZINFO12","BIZINFO13","BIZINFO14","BIZINFO15","REQUESTTIME","ERRORSTATUS","URGENCY","SUPPLEMENT","REMARKS","STEPCOUNT","ORDERTIMEOUTSTATUS","ORDERSTEPOUTSTATUS","SUGGESTION","RETROVESIONNUM" from (select vt."TASKID", --vtm_task
       vt."PTASKID", --vtm_task
       vt."AINSID", --vtm_task
       vt."PRIORITY", --vtm_task
       vt."STATUS", --vtm_task
       vt."STATUSTIME", --vtm_task
       vt."CREATEDTIME", --vtm_task
       vt."OWNER", --vtm_task
       vt."RESOURCEID", --vtm_task
       vt."TIMEOUTSTATUS", --vtm_task
       vt.score, --vtm_task
       vt.scoredetail, --vtm_task
       vt.performance, --vtm_task
       vt.firsttimeoutdate, --vtm_task
       vt.departmentid, --vtm_task
       vt.groupid,
       '' as ACTIVITYNAME,
       '' as ACTIVITYPRIORITY,
       '' as ACTIVITYWORKLOAD,
       '' as ASSIGNMENTID,
       vt.formid as ACTIVITYFORMID,
       '' as ACTIVITYLABEL,
       vh.businesstype as ACTIVITYBOMID,
       vt."BOMINSID", --vtm_activity_inst
       vt."ACTIVITYID", --vtm_activity_inst
       vt.ownerlabel as ownername,
       vt.resourcename as code,
       vt.resourcelabel as USERNAME,
       vt.departmentlabel as deptid,
       '' as bomname,
       '' as bomlabel,
       vh.orderid as ORDERSEQUENCE, --vtm_activity_inst
       vh.status as orderstatus, --vega_boheader
       vh.orderabstract, --vega_boheader
       vh.orderduedate, --vega_boheader
       vh.orderlt, --vega_boheader
       vh.currentstepcode, --vega_boheader
       vh.currentstepname, --vega_boheader
       vh.currentsteplabel, --vega_boheader
       vh.currentstepduedate, --vega_boheader
       vh.stepstarttime, --vega_boheader
       vh.currentsteplt, --vega_boheader
       vh.biztypecode, --vega_boheader
       vh.biztypename, --vega_boheader
       vh.bizinfo1, --vega_boheader
       vh.bizinfo2, --vega_boheader
       vh.bizinfo3, --vega_boheader
       vh.bizinfo4, --vega_boheader
       vh.bizinfo5, --vega_boheader
       vh.orderid , --vega_boheader
       vh.bizinfo6, --vega_boheader
       vh.bizinfo7, --vega_boheader
       vh.bizinfo8, --vega_boheader
       vh.bizinfo9, --vega_boheader
       vh.bizinfo10, --vega_boheader
       vh.bizinfo11, --vega_boheader
       vh.bizinfo12, --vega_boheader
       vh.bizinfo13, --vega_boheader
       vh.bizinfo14, --vega_boheader
       vh.bizinfo15, --vega_boheader
       cast(vh.requesttime as date) as requesttime, --vega_boheader
       '' as errorstatus,
       (select a.type from vtm_urgent a  where type = '11002' and a.bominstid = vt.bominsid and rownum = 1) as urgency,
       (select a.type from vtm_urgent a  where type = '11003' and a.bominstid = vt.bominsid and rownum = 1) as supplement,
       (select a.type from vtm_urgent a  where type = '11001' and a.bominstid = vt.bominsid and rownum = 1) as remarks,
       vt.cooperatestatus as stepcount,
       bpia.time_out_state as ordertimeoutstatus, --bw_process_instance
       bpia.step_out_state as orderstepoutstatus, --bw_process_instance
       '' as suggestion,
       vt.retroversioncount as RetrovesionNum
  from vtm_task_f vt,
       vega_boheader_f vh,
       bw_process_instance_data_f bpia
 where
    vt.BOMINSID = vh.e_id(+)
   and vt.BOMINSID = bpia.bom_inst_id(+)
  order by vt.statustime desc)
  union all
  select "TASKID","PTASKID","AINSID","PRIORITY","STATUS","STATUSTIME","CREATEDTIME","OWNER","RESOURCEID","TIMEOUTSTATUS","SCORE","SCOREDETAIL","PERFORMANCE","FIRSTTIMEOUTDATE","DEPARTMENTID","GROUPID","ACTIVITYNAME","ACTIVITYPRIORITY","ACTIVITYWORKLOAD","ASSIGNMENTID","ACTIVITYFORMID","ACTIVITYLABEL","ACTIVITYBOMID","BOMINSID","ACTIVITYID","OWNERNAME","CODE","USERNAME","DEPTID","BOMNAME","BOMLABEL","ORDERSEQUENCE","ORDERSTATUS","ORDERABSTRACT","ORDERDUEDATE","ORDERLT","CURRENTSTEPCODE","CURRENTSTEPNAME","CURRENTSTEPLABEL","CURRENTSTEPDUEDATE","STEPSTARTTIME","CURRENTSTEPLT","BIZTYPECODE","BIZTYPENAME","BIZINFO1","BIZINFO2","BIZINFO3","BIZINFO4","BIZINFO5","ORDERID","BIZINFO6","BIZINFO7","BIZINFO8","BIZINFO9","BIZINFO10","BIZINFO11","BIZINFO12","BIZINFO13","BIZINFO14","BIZINFO15","REQUESTTIME","ERRORSTATUS","URGENCY","SUPPLEMENT","REMARKS","STEPCOUNT","ORDERTIMEOUTSTATUS","ORDERSTEPOUTSTATUS","SUGGESTION","RETROVESIONNUM" from (select vt."TASKID", --vtm_task
       vt."PTASKID", --vtm_task
       vt."AINSID", --vtm_task
       vt."PRIORITY", --vtm_task
       vt."STATUS", --vtm_task
       vt."STATUSTIME", --vtm_task
       vt."CREATEDTIME", --vtm_task
       vt."OWNER", --vtm_task
       vt."RESOURCEID", --vtm_task
       vt."TIMEOUTSTATUS", --vtm_task
       vt.score, --vtm_task
       vt.scoredetail, --vtm_task
       vt.performance, --vtm_task
       vt.firsttimeoutdate, --vtm_task
       vt.departmentid, --vtm_task
       vt.groupid,
       '' as ACTIVITYNAME,
       '' as ACTIVITYPRIORITY,
       '' as ACTIVITYWORKLOAD,
       '' as ASSIGNMENTID,
       vt.formid as ACTIVITYFORMID,
       '' as ACTIVITYLABEL,
       vh.businesstype as ACTIVITYBOMID,
       vt."BOMINSID", --vtm_activity_inst
       vt."ACTIVITYID", --vtm_activity_inst
       vt.ownerlabel as ownername,
       vt.resourcename as code,
       vt.resourcelabel as USERNAME,
       vt.departmentlabel as deptid,
       '' as bomname,
       '' as bomlabel,
       vh.orderid as ORDERSEQUENCE, --vtm_activity_inst
       vh.status as orderstatus, --vega_boheader
       vh.orderabstract, --vega_boheader
       vh.orderduedate, --vega_boheader
       vh.orderlt, --vega_boheader
       vh.currentstepcode, --vega_boheader
       vh.currentstepname, --vega_boheader
       vh.currentsteplabel, --vega_boheader
       vh.currentstepduedate, --vega_boheader
       vh.stepstarttime, --vega_boheader
       vh.currentsteplt, --vega_boheader
       vh.biztypecode, --vega_boheader
       vh.biztypename, --vega_boheader
       vh.bizinfo1, --vega_boheader
       vh.bizinfo2, --vega_boheader
       vh.bizinfo3, --vega_boheader
       vh.bizinfo4, --vega_boheader
       vh.bizinfo5, --vega_boheader
       vh.orderid , --vega_boheader
       vh.bizinfo6, --vega_boheader
       vh.bizinfo7, --vega_boheader
       vh.bizinfo8, --vega_boheader
       vh.bizinfo9, --vega_boheader
       vh.bizinfo10, --vega_boheader
       vh.bizinfo11, --vega_boheader
       vh.bizinfo12, --vega_boheader
       vh.bizinfo13, --vega_boheader
       vh.bizinfo14, --vega_boheader
       vh.bizinfo15, --vega_boheader
       cast(vh.requesttime as date) as requesttime, --vega_boheader
       '' as errorstatus,
       (select a.type from vtm_urgent a  where type = '11002' and a.bominstid = vt.bominsid and rownum = 1) as urgency,
       (select a.type from vtm_urgent a  where type = '11003' and a.bominstid = vt.bominsid and rownum = 1) as supplement,
       (select a.type from vtm_urgent a  where type = '11001' and a.bominstid = vt.bominsid and rownum = 1) as remarks,
       vt.cooperatestatus as stepcount,
       bpia.time_out_state as ordertimeoutstatus, --bw_process_instance
       bpia.step_out_state as orderstepoutstatus, --bw_process_instance
       '' as suggestion,
       vt.retroversioncount as RetrovesionNum
  from vtm_task vt,
       vega_boheader vh,
       bw_process_instance_data bpia
 where
    vt.BOMINSID = vh.e_id(+)
   and vt.BOMINSID = bpia.bom_inst_id(+)
  order by vt.statustime desc )
/

prompt
prompt Creating view DEPARTTASKBO_F
prompt ============================
prompt
create or replace view departtaskbo_f as
select vt."TASKID", --vtm_task
       vt."PTASKID", --vtm_task
       vt."AINSID", --vtm_task
       vt."PRIORITY", --vtm_task
       vt."STATUS", --vtm_task
       vt."STATUSTIME", --vtm_task
       vt."CREATEDTIME", --vtm_task
       vt."OWNER", --vtm_task
       vt."RESOURCEID", --vtm_task
       vt."TIMEOUTSTATUS", --vtm_task
       vt.score, --vtm_task
       vt.scoredetail, --vtm_task
       vt.performance, --vtm_task
       vt.firsttimeoutdate, --vtm_task
       vt.departmentid, --vtm_task
       vt.groupid,
       '' as ACTIVITYNAME,
       '' as ACTIVITYPRIORITY,
       '' as ACTIVITYWORKLOAD,
       '' as ASSIGNMENTID,
       vt.formid as ACTIVITYFORMID,
       '' as ACTIVITYLABEL,
       vh.businesstype as ACTIVITYBOMID,
       /*va."ACTIVITYNAME", --vmr_activity
       va."ACTIVITYPRIORITY", --vmr_activity
       va."ACTIVITYWORKLOAD", --vmr_activity
       va."ASSIGNMENTID", --vmr_activity
       va."ACTIVITYFORMID", --vmr_activity
       va."ACTIVITYLABEL", --vmr_activity
       va."ACTIVITYBOMID" , --vmr_activity
       */
       vt."BOMINSID", --vtm_activity_inst
       vt."ACTIVITYID", --vtm_activity_inst
       /*vr1.username as ownername, --Vum_Staff
       vr2."CODE", --vum_staff
       vr2."USERNAME", --vum_staff*/
       vt.ownerlabel as ownername,
       vt.resourcename as code,
       vt.resourcelabel as USERNAME,
       --vos.org_id as deptid, --vum_org_staff
       vt.departmentlabel as deptid,
    --   vt.cooperatestatus as cooperatestatus,
       --vte.errorstatus, --vtm_task_error
       --(select count(*) from vtm_task_error a where a.bominsid = vt.bominsid)  as errorstatus,
       '' as bomname,
       '' as bomlabel,
       --vb.name as bomname, --vmr_bom
       --vb.label as bomlabel, --vmr_bom
       vh.orderid as ORDERSEQUENCE, --vtm_activity_inst
       vh.status as orderstatus, --vega_boheader
       vh.orderabstract, --vega_boheader
       vh.orderduedate, --vega_boheader
       vh.orderlt, --vega_boheader
       vh.currentstepcode, --vega_boheader
       vh.currentstepname, --vega_boheader
       vh.currentsteplabel, --vega_boheader
       vh.currentstepduedate, --vega_boheader
       vh.stepstarttime, --vega_boheader
       vh.currentsteplt, --vega_boheader
       vh.biztypecode, --vega_boheader
       vh.biztypename, --vega_boheader
       vh.bizinfo1, --vega_boheader
       vh.bizinfo2, --vega_boheader
       vh.bizinfo3, --vega_boheader
       vh.bizinfo4, --vega_boheader
       vh.bizinfo5, --vega_boheader
       vh.orderid , --vega_boheader
       vh.bizinfo6, --vega_boheader
       vh.bizinfo7, --vega_boheader
       vh.bizinfo8, --vega_boheader
       vh.bizinfo9, --vega_boheader
       vh.bizinfo10, --vega_boheader
       vh.bizinfo11, --vega_boheader
       vh.bizinfo12, --vega_boheader
       vh.bizinfo13, --vega_boheader
       vh.bizinfo14, --vega_boheader
       vh.bizinfo15, --vega_boheader
       cast(vh.requesttime as date) as requesttime, --vega_boheader
       /*vte.errorstatus,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,*/
       '' as errorstatus,
     --  (select 6002 as errorstatus from vtm_task_error a where a.bominsid = vt.bominsid and rownum = 1) as errorstatus,
       (select a.type from vtm_urgent a  where type = '11002' and a.bominstid = vt.bominsid and rownum = 1) as urgency,
       (select a.type from vtm_urgent a  where type = '11003' and a.bominstid = vt.bominsid and rownum = 1) as supplement,
       (select a.type from vtm_urgent a  where type = '11001' and a.bominstid = vt.bominsid and rownum = 1) as remarks,
       vt.cooperatestatus as stepcount,
       --bpi.step_count as stepcount, --bw_process_instance
       bpia.time_out_state as ordertimeoutstatus, --bw_process_instance
       bpia.step_out_state as orderstepoutstatus, --bw_process_instance
       '' as suggestion,
       --(select 6002 from vtm_task a where vt.taskid = a.ptaskid and  a.status in (3132, 3134)  and rownum = 1 ) as bizinfo14, -- 待协作
       --vfi.process_suggestion as suggestion , --vtm_form_ins*/
       vt.retroversioncount as RetrovesionNum
  from vtm_task_f vt,
      -- vtm_activity_ins vai,
     --  vmr_activity va ,
       --Vum_Staff vr1,
       --Vum_Staff vr2,
       --vum_org_staff vos,
     --  vmr_bom vb,
       vega_boheader_f vh,
       /*(select distinct a.bominsid, 6002 as errorstatus from vtm_task_error a) vte,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11002') vn1,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11003') vn2,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11001') vn3,*/
       /*(select * from vtm_form_ins m where m.form_def_id is not null and m.remark != 'R'
           --and rownum = 1
           --order by m.operate_time desc
         ) vfi*/
         --vtm_form_ins
       bw_process_instance_data_f bpia
 where
   -- vt.ainsid = vai.instanceid
   --and vt.owner = vr1.id
   --and vt.resourceid = vr2.id
   --and vt.resourceid = vos.staff_id
   --and
 --  vt.activityid = va.activityid
 --  and va.ACTIVITYBOMID = vb.id
    vt.BOMINSID = vh.e_id(+)
/*
   and vt.BOMINSID = vte.bominsid(+)
   and vt.BOMINSID = vn1.bominstid(+)
   and vt.BOMINSID = vn2.bominstid(+)
   and vt.BOMINSID = vn3.bominstid(+)
   */
   and vt.BOMINSID = bpia.bom_inst_id(+)
   --and vt.taskid = vfi.task_id(+)
  -- )
  order by vt.statustime desc
/

prompt
prompt Creating view HISORDERBO
prompt ========================
prompt
create or replace view hisorderbo as
select t.e_id as id,
       t.orderid as orderid,
       t.priority,
       t.status,
       t.statustime as statustime,
       t.requesttime as createtime,
       t.requestclient as creator,
       t.requestdept as department,
       t.businesstype as bom_id,
      -- vo.label as deptlabel,
       t.requestclientlabel as username,
       vasc.name as statusname,
       vasc.label as statuslabel,
       vb.name as bomname,
       vb.label as bomlabel,
       t.orderabstract,
       t.orderduedate,
       t.orderlt,
       t.currentstepcode,
       t.currentstepname,
       t.currentsteplabel,
       t.stepstarttime,
       t.currentstepduedate,
       t.currentsteplt,
       t.biztypecode,
       t.biztypename,
       t.bizinfo1,
       t.bizinfo2,
       t.bizinfo3,
       t.bizinfo4,
       t.bizinfo5,
       t.bizinfo6,
       t.bizinfo7,
       t.bizinfo8,
       t.bizinfo9,
       t.bizinfo10,
       t.bizinfo11,
       t.bizinfo12,
       t.bizinfo13,
       t.bizinfo14,
       t.bizinfo15,
       '' as orderstepoutstatus,--bpi.step_out_state as orderstepoutstatus,
       '' as ordertimeoutstatus,--bpi.time_out_state as ordertimeoutstatus,
       --( select vo.label from vtm_task vt,vtm_activity_ins vai,vum_org_staff vos,vum_org vo
        -- where   vt.ainsid = vai.instanceid  and vt.resourceid = vos.staff_id   and vos.org_id = vo.id   and vt.status in ( 3001, 3002 ) and vai.bominsid = t.e_id and rownum = 1) as  deptlabel,
       t.requestdeptlabel as deptlabel,
       --( select vt.departmentlabel from vtm_task vt where  vt.status in ( 3001, 3002 ) and vt.bominsid = t.e_id and rownum = 1) as  deptlabel,
      '' as errorstatus, --(select 6002 as errorstatus from vtm_task_error a where a.bominsid = t.e_id and rownum = 1) as errorstatus,
      -- vn1.type as urgency,
      '' as urgency, --(select a.type from vtm_urgent a  where type = '11002' and a.bominstid = t.e_id and rownum = 1) as urgency,
       --vn2.type as supplement,
      '' as supplement,--(select a.type from vtm_urgent a  where type = '11003' and a.bominstid = t.e_id and rownum = 1) as supplement,
      -- vn3.type as remarks,
      '' as remarks,-- (select a.type from vtm_urgent a  where type = '11001' and a.bominstid = t.e_id and rownum = 1) as remarks,
      '' as RetrovesionNum
      --vt.status vtstatus
  from his_vega_boheader_ t,vcm_app_status_code vasc,vmr_bom vb
  --from vega_boheader t,bw_process_instance bpi, vum_staff vs, vcm_app_status_code vasc, vmr_bom vb
  -- (select distinct a.bominstid, a.type
  --         from vtm_urgent a
  --        where type = '11002') vn1,
  --     (select distinct a.bominstid, a.type
  --        from vtm_urgent a
  --      where type = '11003') vn2,
  --     (select distinct a.bominstid, a.type
  --        from vtm_urgent a
  --       where type = '11001') vn3,
  --     (select distinct a.bominsid, 6002 as errorstatus
  --        from vtm_task_error a) vte
       -- vtm_task vt,
       -- vtm_activity_ins vai,
      --  vum_org_staff vos,
       -- vum_org vo
 --  ( select vai.bominsid, vos.org_id, vo.label, row_number() over ( partition by vai.bominsid order by vai.bominsid) rn from vtm_task vt,vtm_activity_ins vai,Vum_Staff vr2,vum_org_staff vos,vum_org vo
  --      where   vt.ainsid = vai.instanceid   and vt.resourceid = vr2.id   and vt.resourceid = vos.staff_id   and vos.org_id = vo.id   and vt.status in ( 3001, 3002 )) vorg
         --vum_org vo,
   where
   -- t.e_id=vn1.bominstid(+)
   -- and t.e_id=vn2.bominstid(+)
   --and t.e_id=vn3.bominstid(+)
   --and t.e_id=vte.bominsid(+)
   --and vt.ainsid = vai.instanceid
   --and vt.resourceid = vos.staff_id
   --and vo.id=vos.org_id
   -- and vt.status in ( 3001, 3002 )
   --and t.e_id = vai.bominsid
   --and t.e_id=vorg.bominsid(+)
   -- and
   --t.requestclient = vs.id and
   t.status = vasc.code
   and t.businesstype = vb.id
   --and t.e_id = bpi.bom_inst_id(+)
   --and ( vorg.rn < 2 or vorg.rn is null )
   order by t.requesttime desc,t.orderid desc
/

prompt
prompt Creating view HISTASKHISTORYFORVIEWER_VIEW
prompt ==========================================
prompt
create or replace view histaskhistoryforviewer_view as
select distinct va.label AS ACTIVITYLABEL,
                va.label AS rowno,
                --'1' as rowno,
                t2.USERNAME as username,
                t3.label as orglabel,
                to_char(t1.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
                to_char(t1.process_suggestion) as suggestion,
                to_char(t1.id) as forminstid,
                t1.document as document,
                t1.bom_inst_snbr,
                vt.taskid as taskid
  from his_vtm_form_ins_     t1,
       pmr_process_node va,
       his_vtm_task_         vt,
       his_vtm_activity_ins_ vai,
       vum_org          t3,
       vum_org_staff    vos,
       vum_staff        t2
 where t1.task_id != 'InitialForm'
   and vai.nodeid = va.id(+)
   and t1.task_id = vt.taskid
   and vt.ainsid = vai.instanceid
   and vt.resourceid = vos.staff_id
   and vos.org_id = t3.id
   and vt.resourceid = t2.id
union
select ppn.label AS ACTIVITYLABEL,
       --'1' as rowno,
       ppn.label AS rowno,
       '' as username,
       vog.label as orglabel,
       '' as ttime,
       '' as suggestion,
       '' as forminstid,
       '' as document,
       vta.bom_inst_snbr,
       'qilinsoft' as taskid
  from pmr_process_node ppn,
       (select distinct (vt.departmentid),
                        vt.taskid,
                        vai.nodeid,
                        vai.bominsid as bom_inst_snbr
          from his_vtm_task_ vt, his_vtm_activity_ins_ vai
         where vt.ainsid = vai.instanceid
           and (vt.status = 3001 or vt.status = 3002 or vt.status = 3003)) vta,
       vum_org vog
 where vta.nodeid = ppn.id(+)
   and vta.departmentid = vog.id
union
select t5.step AS ACTIVITYLABEL,
       '' as rowno,
       t5.Operatorlabel,
       t5.Deptlabel,
       to_char(t5.opertime, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t5.content),
       null as forminstid,
       null as document,
       t5.bominstid as bom_inst_snbr,
       '' as taskid
  from his_vtm_urgent_ t5
union
select '挂起' as ACTIVITYLABEL,
       '' as rowno,
       t8.username,
       t7.label,
       to_char(t6.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t6.process_suggestion),
       null as forminstid,
       null as document,
       t6.bom_inst_snbr,
       t6.task_id as taskid
  from his_vtm_form_ins_ t6, vum_org t7, vum_staff t8, vum_org_staff t9
 where t6.task_id like 'Suspend%'
   and t8.id = t6.operator
   and t7.id = t9.org_id
   and t8.id = t9.staff_id
union
select '任务撤回' as ACTIVITYLABEL,
       '' as rowno,
       t81.username,
       t71.label,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion),
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from his_vtm_form_ins_ t61, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Withdraw%'
   and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id
union
select '任务回退' as ACTIVITYLABEL,
       '' as rowno,
       t81.username,
       t71.label,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion),
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from his_vtm_form_ins_ t61, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Retrovesion%'
   and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id
/

prompt
prompt Creating view MY_TABLES
prompt =======================
prompt
create or replace view my_tables as
select distinct t.TABLE_NAME
from all_tab_cols t where t.owner='CEBTESTUSER'
/

prompt
prompt Creating view NOTIFICATIONBO
prompt ============================
prompt
create or replace view notificationbo as
(select vth.eventid,t.username as ResourceName,t.id as resourceid,vte.eventtypename as EventType,vt.taskid,va.activityname,vth.eventtime,vth.eventbody,vre.isread from vum_staff t,vtm_resource_event vre,vtm_taskevent_history vth, vtm_task vt, vtm_activity_ins vai,vmr_activity va,vmr_task_event vte where t.id=vre.resourceid and vre.eventid = vth.eventid and vth.taskid = vt.taskid and vt.ainsid= vai.instanceid and vai.activityid = va.activityid and vte.eventtypeid = vth.eventtypeid)
/

prompt
prompt Creating view ORDERBO
prompt =====================
prompt
create or replace view orderbo as
select t.e_id as id,
       t.orderid as orderid,
       t.priority,
       t.status,
       t.statustime as statustime,
       t.requesttime as createtime,
       t.requestclient as creator,
       t.requestdept as department,
       t.businesstype as bom_id,
      -- vo.label as deptlabel,
       t.requestclientname as username,
       vasc.name as statusname,
       vasc.label as statuslabel,
       vb.name as bomname,
       vb.label as bomlabel,
       t.orderabstract,
       t.orderduedate,
       t.orderlt,
       t.currentstepcode,
       t.currentstepname,
       t.currentsteplabel,
       t.stepstarttime,
       t.currentstepduedate,
       t.currentsteplt,
       t.biztypecode,
       t.biztypename,
       t.bizinfo1,
       t.bizinfo2,
       t.bizinfo3,
       t.bizinfo4,
       t.bizinfo5,
       t.bizinfo6,
       t.bizinfo7,
       t.bizinfo8,
       t.bizinfo9,
       t.bizinfo10,
       t.bizinfo11,
       t.bizinfo12,
       t.bizinfo13,
       t.bizinfo14,
       t.bizinfo15,
       bpid.step_out_state as orderstepoutstatus,
       bpid.time_out_state as ordertimeoutstatus,
       --( select vo.label from vtm_task vt,vtm_activity_ins vai,vum_org_staff vos,vum_org vo
       --'' as deptlabel,
        -- where   vt.ainsid = vai.instanceid  and vt.resourceid = vos.staff_id   and vos.org_id = vo.id   and vt.status in ( 3001, 3002 ) and vai.bominsid = t.e_id and rownum = 1) as  deptlabel,
     ( select vt.departmentlabel from vtm_task vt where  vt.status in ( 3001, 3002 ) and vt.bominsid = t.e_id and rownum = 1) as  deptlabel,
      -- vte.errorstatus,
       (select 6002 as errorstatus from vtm_task_error a where a.bominsid = t.e_id and rownum = 1) as errorstatus,
      -- vn1.type as urgency,
       (select a.type from vtm_urgent a  where type = '11002' and a.bominstid = t.e_id and rownum = 1) as urgency,
       --vn2.type as supplement,
       (select a.type from vtm_urgent a  where type = '11003' and a.bominstid = t.e_id and rownum = 1) as supplement,
      -- vn3.type as remarks,
       (select a.type from vtm_urgent a  where type = '11001' and a.bominstid = t.e_id and rownum = 1) as remarks,
      '' as RetrovesionNum
    --(select count(*) from vtm_form_ins tt where tt.task_id like 'Retrovesion%' and tt.bom_inst_snbr=t.e_id) as RetrovesionNum
      --vt.status vtstatus
  from vega_boheader t,bw_process_instance_data bpid,/* vum_staff vs,*/ vcm_app_status_code vasc, vmr_bom vb
 -- (select distinct a.bominstid, a.type
 --         from vtm_urgent a
 --        where type = '11002') vn1,
  --     (select distinct a.bominstid, a.type
  --        from vtm_urgent a
   --      where type = '11003') vn2,
  --     (select distinct a.bominstid, a.type
  --        from vtm_urgent a
  --       where type = '11001') vn3,
  --     (select distinct a.bominsid, 6002 as errorstatus
  --        from vtm_task_error a) vte
       -- vtm_task vt,
       -- vtm_activity_ins vai,
      --  vum_org_staff vos,
       -- vum_org vo
 --  ( select vai.bominsid, vos.org_id, vo.label, row_number() over ( partition by vai.bominsid order by vai.bominsid) rn from vtm_task vt,vtm_activity_ins vai,Vum_Staff vr2,vum_org_staff vos,vum_org vo
  --      where   vt.ainsid = vai.instanceid   and vt.resourceid = vr2.id   and vt.resourceid = vos.staff_id   and vos.org_id = vo.id   and vt.status in ( 3001, 3002 )) vorg
         --vum_org vo,
   where
  -- t.e_id=vn1.bominstid(+)
  -- and t.e_id=vn2.bominstid(+)
   --and t.e_id=vn3.bominstid(+)
   --and t.e_id=vte.bominsid(+)
   --and vt.ainsid = vai.instanceid
   --and vt.resourceid = vos.staff_id
   --and vo.id=vos.org_id
  -- and vt.status in ( 3001, 3002 )
   --and t.e_id = vai.bominsid
   --and t.e_id=vorg.bominsid(+)
  -- and
 --  t.requestclient = vs.id
   t.status = vasc.code
   and t.businesstype = vb.id
   and t.e_id = bpid.bom_inst_id(+)
   --and ( vorg.rn < 2 or vorg.rn is null )
   order by t.requesttime desc ,t.orderid desc
   --order by t.e_id desc
/

prompt
prompt Creating view ORDERBO_ALL
prompt =========================
prompt
create or replace view orderbo_all as
select t.e_id as id,
       t.orderid as orderid,
       t.priority,
       t.status,
       t.statustime as statustime,
       t.requesttime as createtime,
       t.requestclient as creator,
       t.requestdept as department,
       t.businesstype as bom_id,
       t.requestclientname as username,
       vasc.name as statusname,
       vasc.label as statuslabel,
       vb.name as bomname,
       vb.label as bomlabel,
       t.orderabstract,
       t.orderduedate,
       t.orderlt,
       t.currentstepcode,
       t.currentstepname,
       t.currentsteplabel,
       t.stepstarttime,
       t.currentstepduedate,
       t.currentsteplt,
       t.biztypecode,
       t.biztypename,
       t.bizinfo1,
       t.bizinfo2,
       t.bizinfo3,
       t.bizinfo4,
       t.bizinfo5,
       t.bizinfo6,
       t.bizinfo7,
       t.bizinfo8,
       t.bizinfo9,
       t.bizinfo10,
       t.bizinfo11,
       t.bizinfo12,
       t.bizinfo13,
       t.bizinfo14,
       t.bizinfo15,
       bpid.step_out_state as orderstepoutstatus,
       bpid.time_out_state as ordertimeoutstatus,
       (select vt.departmentlabel from (select * from vtm_task union all select    TASKID             ,
   PTASKID            ,
   AINSID             ,
   PRIORITY           ,
   STATUS             ,
   STATUSTIME         ,
   CREATEDTIME        ,
   OWNER              ,
   RESOURCEID         ,
   PARENTRESOURCEID   ,
   TIMEOUTSTATUS      ,
   SUSPENDPRESTATUS   ,
   SCORE              ,
   SCOREDETAIL        ,
   OVERTIME           ,
   FIRSTTIMEOUTDATE   ,
   SECONDTIMEOUTDATE  ,
   THIRDTIMEOUTDATE   ,
   FOURTHTIMEOUTDATE  ,
   FIFTHTIMEOUTDATE   ,
   PERFORMANCE        ,
   ERRORSTATUS        ,
   DEPARTMENTID       ,
   INTODEPTTIMES      ,
   OWNERNAME          ,
   OWNERLABEL         ,
   RESOURCENAME       ,
   RESOURCELABEL      ,
   PARENTRESOURCENAME ,
   PARENTRESOURCELABEL,
   DEPARTMENTNAME     ,
   DEPARTMENTLABEL    ,
   ACTIVITYID         ,
   NODEINSTANCEID     ,
   BOMINSID           ,
   FORMID             ,
   GROUPID            ,
   GROUPNAME          ,
   GROUPLABEL         ,
   RECEIVETIME        ,
   FINISHTIME         ,
   COOPERATESTATUS    ,
   RETROVERSIONCOUNT  ,
   ROOTBOMINSID       ,
   TYPE                from vtm_task_f) vt where  vt.status in ( 3001, 3002 ) and vt.bominsid = t.e_id and rownum = 1) as  deptlabel,
       (select 6002 as errorstatus from (select * from vtm_task_error union all select ID                ,
BOMINSID          ,
TASKID            ,
ORDERID           ,
TYPE              ,
REMARKS           ,
SUBMITTIME        ,
SUBMITPERSON      ,
CHECKTIME         ,
CHECKPERSON       ,
SUBMITPERSONNAME  ,
CHECKPERSONNAME   ,
OWNER             ,
OWNERNAME         ,
IFCHECK           ,
BOMID             ,
ORDEROWNER        ,
ORDEROWNERNAME    ,
STEPCOUNT         ,
ACTIVITYID        ,
ACTIVITYNAME      ,
ACTIVITYLABEL
 from vtm_task_error_f ) a where a.bominsid = t.e_id and rownum = 1) as errorstatus,
       (select a.type from (select * from vtm_urgent union all select       ID              ,
      ORDERID         ,
      TELPHONE        ,
      RECEIVEID       ,
      BIZTYPE         ,
      NODELABEL       ,
      CHARGER         ,
      ORDERCREATETIME ,
      OPERATOR        ,
      OPERTIME        ,
      TYPE            ,
      CONTENT         ,
      HTMLCONTENT     ,
      OPERATORNAME    ,
      OPERATORLABEL   ,
      DEPTLABEL       ,
      STEP            ,
      BOMID           ,
      CHARGERLABEL    ,
      BOMINSTID       ,
      REMARKTYPE      ,
      REMARKTYPELABEL ,
      CHARGERNAME     ,
      DEPTNAME        ,
      TASKID           from vtm_urgent_f) a  where type = '11002' and a.bominstid = t.e_id and rownum = 1) as urgency,
       (select a.type from (select * from vtm_urgent union all select       ID              ,
      ORDERID         ,
      TELPHONE        ,
      RECEIVEID       ,
      BIZTYPE         ,
      NODELABEL       ,
      CHARGER         ,
      ORDERCREATETIME ,
      OPERATOR        ,
      OPERTIME        ,
      TYPE            ,
      CONTENT         ,
      HTMLCONTENT     ,
      OPERATORNAME    ,
      OPERATORLABEL   ,
      DEPTLABEL       ,
      STEP            ,
      BOMID           ,
      CHARGERLABEL    ,
      BOMINSTID       ,
      REMARKTYPE      ,
      REMARKTYPELABEL ,
      CHARGERNAME     ,
      DEPTNAME        ,
      TASKID           from vtm_urgent_f) a  where type = '11003' and a.bominstid = t.e_id and rownum = 1) as supplement,
       (select a.type from (select * from vtm_urgent union all select       ID              ,
      ORDERID         ,
      TELPHONE        ,
      RECEIVEID       ,
      BIZTYPE         ,
      NODELABEL       ,
      CHARGER         ,
      ORDERCREATETIME ,
      OPERATOR        ,
      OPERTIME        ,
      TYPE            ,
      CONTENT         ,
      HTMLCONTENT     ,
      OPERATORNAME    ,
      OPERATORLABEL   ,
      DEPTLABEL       ,
      STEP            ,
      BOMID           ,
      CHARGERLABEL    ,
      BOMINSTID       ,
      REMARKTYPE      ,
      REMARKTYPELABEL ,
      CHARGERNAME     ,
      DEPTNAME        ,
      TASKID           from vtm_urgent_f) a  where type = '11001' and a.bominstid = t.e_id and rownum = 1) as remarks,
    --(select count(*) from vtm_form_ins tt where tt.task_id like 'Retrovesion%' and tt.bom_inst_snbr=t.e_id) as RetrovesionNum
    '' as RetrovesionNum
  from (select * from vega_boheader union all
             select E_ID  ,DTYPE    ,REQUESTCLIENT ,REQUESTDEPT ,REQUESTTIME ,PRIORITY  ,STATUS  ,
                    STATUSTIME ,BUSINESSTYPE      ,ORDERID           ,ORDERABSTRACT     ,ORDERDUEDATE      ,
                    ORDERLT           ,CURRENTSTEPCODE   ,CURRENTSTEPNAME   ,CURRENTSTEPLABEL  ,
                    STEPSTARTTIME     ,CURRENTSTEPDUEDATE,CURRENTSTEPLT ,BIZTYPECODE ,BIZTYPENAME ,
                    BIZINFO1  ,BIZINFO2 ,BIZINFO3 ,BIZINFO4  ,BIZINFO5  ,BIZINFO6 ,BIZINFO7 ,BIZINFO8,
                    BIZINFO9  ,BIZINFO10 ,BIZINFO11  ,BIZINFO12  ,BIZINFO13  ,BIZINFO14,BIZINFO15 ,
                    REQUESTCLIENTNAME ,REQUESTCLIENTLABEL,REQUESTDEPTNAME ,REQUESTDEPTLABEL   from vega_boheader_f) t,
       (select * from bw_process_instance_data union all select  VTOID,  BOM_INST_ID ,   TIME_OUT_STATE ,   STEP_OUT_STATE from bw_process_instance_data_f) bpid,vcm_app_status_code vasc, vmr_bom vb
   where
   t.status = vasc.code
   and t.businesstype = vb.id
   and t.e_id = bpid.bom_inst_id(+)
   --order by t.requesttime desc
/

prompt
prompt Creating view ORDERBO_CDC
prompt =========================
prompt
create or replace view orderbo_cdc as
select t.e_id as id,
       t.orderid as orderid,
       t.priority,
       t.status,
       t.statustime as statustime,
       t.requesttime as createtime,
       t.requestclient as creator,
       t.requestdept as department,
       t.businesstype as bom_id,
       t.requestclientname as username,
       t.orderabstract,
       t.orderduedate,
       t.orderlt,
       t.currentstepcode,
       t.currentstepname,
       t.currentsteplabel,
       t.stepstarttime,
       t.currentstepduedate,
       t.currentsteplt,
       t.biztypecode,
       t.biztypename,
       t.bizinfo1,
       t.bizinfo2,
       t.bizinfo3,
       t.bizinfo4,
       t.bizinfo5,
       t.bizinfo6,
       t.bizinfo7,
       t.bizinfo8,
       t.bizinfo9,
       t.bizinfo10,
       t.bizinfo11,
       t.bizinfo12,
       t.bizinfo13,
       t.bizinfo14,
       t.bizinfo15,
       ( select bpi.step_out_state from bw_process_instance bpi where bpi.bom_inst_id = t.e_id ) as orderstepoutstatus,
       ( select bpi.time_out_state from bw_process_instance bpi where bpi.bom_inst_id = t.e_id ) as ordertimeoutstatus,
       ( select vt.departmentlabel from vtm_task vt where  vt.status in ( 3001, 3002 ) and vt.bominsid = t.e_id and rownum = 1) as deptlabel,
       ( select 6002 as errorstatus from vtm_task_error a where a.bominsid = t.e_id and rownum = 1) as errorstatus,
       ( select a.type from vtm_urgent a  where type = '11002' and a.bominstid = t.e_id and rownum = 1) as urgency,
       ( select a.type from vtm_urgent a  where type = '11003' and a.bominstid = t.e_id and rownum = 1) as supplement,
       ( select a.type from vtm_urgent a  where type = '11001' and a.bominstid = t.e_id and rownum = 1) as remarks,
       ( select count(*) from vtm_form_ins tt where tt.task_id like 'Retrovesion%' and tt.bom_inst_snbr=t.e_id) as RetrovesionNum,
       --vasc.name as statusname,
       --vasc.label as statuslabel,
       --vb.name as bomname,
       --vb.label as bomlabel,
       ( select vasc.name from vcm_app_status_code vasc where t.status = vasc.code ) as statusname,
       ( select vasc.label from vcm_app_status_code vasc where t.status = vasc.code ) as statuslabel,
       ( select vb.name from vmr_bom vb where t.businesstype = vb.id ) as bomname,
       ( select vb.label from vmr_bom vb where t.businesstype = vb.id ) as bomlabel
  from vega_boheader t
  order by t.requesttime desc, t.orderid desc
/

prompt
prompt Creating view ORDERBO_F
prompt =======================
prompt
create or replace view orderbo_f as
select t.e_id as id,
       t.orderid as orderid,
       t.priority,
       t.status,
       t.statustime as statustime,
       t.requesttime as createtime,
       t.requestclient as creator,
       t.requestdept as department,
       t.businesstype as bom_id,
      -- vo.label as deptlabel,
       t.requestclientname as username,
       vasc.name as statusname,
       vasc.label as statuslabel,
       vb.name as bomname,
       vb.label as bomlabel,
       t.orderabstract,
       t.orderduedate,
       t.orderlt,
       t.currentstepcode,
       t.currentstepname,
       t.currentsteplabel,
       t.stepstarttime,
       t.currentstepduedate,
       t.currentsteplt,
       t.biztypecode,
       t.biztypename,
       t.bizinfo1,
       t.bizinfo2,
       t.bizinfo3,
       t.bizinfo4,
       t.bizinfo5,
       t.bizinfo6,
       t.bizinfo7,
       t.bizinfo8,
       t.bizinfo9,
       t.bizinfo10,
       t.bizinfo11,
       t.bizinfo12,
       t.bizinfo13,
       t.bizinfo14,
       t.bizinfo15,
       bpid.step_out_state as orderstepoutstatus,
       bpid.time_out_state as ordertimeoutstatus,
       --( select vo.label from vtm_task vt,vtm_activity_ins vai,vum_org_staff vos,vum_org vo
        -- where   vt.ainsid = vai.instanceid  and vt.resourceid = vos.staff_id   and vos.org_id = vo.id   and vt.status in ( 3001, 3002 ) and vai.bominsid = t.e_id and rownum = 1) as  deptlabel,
     ( select vt.departmentlabel from vtm_task_F vt
         where  vt.status in ( 3001, 3002 ) and vt.bominsid = t.e_id and rownum = 1) as  deptlabel,
      -- vte.errorstatus,
       (select 6002 as errorstatus from vtm_task_error_F a where a.bominsid = t.e_id and rownum = 1) as errorstatus,
      -- vn1.type as urgency,
       (select a.type from vtm_urgent_F a  where type = '11002' and a.bominstid = t.e_id and rownum = 1) as urgency,
       --vn2.type as supplement,
       (select a.type from vtm_urgent_F a  where type = '11003' and a.bominstid = t.e_id and rownum = 1) as supplement,
      -- vn3.type as remarks,
       (select a.type from vtm_urgent_F a  where type = '11001' and a.bominstid = t.e_id and rownum = 1) as remarks,
      '' as RetrovesionNum
    --(select count(*) from vtm_form_ins_F tt where tt.task_id like 'Retrovesion%' and tt.bom_inst_snbr=t.e_id) as RetrovesionNum
      --vt.status vtstatus
  from vega_boheader_f t,bw_process_instance_data_F bpid,/* vum_staff vs,*/ vcm_app_status_code vasc, vmr_bom vb
 -- (select distinct a.bominstid, a.type
 --         from vtm_urgent a
 --        where type = '11002') vn1,
  --     (select distinct a.bominstid, a.type
  --        from vtm_urgent a
   --      where type = '11003') vn2,
  --     (select distinct a.bominstid, a.type
  --        from vtm_urgent a
  --       where type = '11001') vn3,
  --     (select distinct a.bominsid, 6002 as errorstatus
  --        from vtm_task_error a) vte
       -- vtm_task vt,
       -- vtm_activity_ins vai,
      --  vum_org_staff vos,
       -- vum_org vo
 --  ( select vai.bominsid, vos.org_id, vo.label, row_number() over ( partition by vai.bominsid order by vai.bominsid) rn from vtm_task vt,vtm_activity_ins vai,Vum_Staff vr2,vum_org_staff vos,vum_org vo
  --      where   vt.ainsid = vai.instanceid   and vt.resourceid = vr2.id   and vt.resourceid = vos.staff_id   and vos.org_id = vo.id   and vt.status in ( 3001, 3002 )) vorg
         --vum_org vo,
   where
  -- t.e_id=vn1.bominstid(+)
  -- and t.e_id=vn2.bominstid(+)
   --and t.e_id=vn3.bominstid(+)
   --and t.e_id=vte.bominsid(+)
   --and vt.ainsid = vai.instanceid
   --and vt.resourceid = vos.staff_id
   --and vo.id=vos.org_id
  -- and vt.status in ( 3001, 3002 )
   --and t.e_id = vai.bominsid
   --and t.e_id=vorg.bominsid(+)
  -- and
 --  t.requestclient = vs.id
   t.status = vasc.code
   and t.businesstype = vb.id
   and t.e_id = bpid.bom_inst_id(+)
   --and ( vorg.rn < 2 or vorg.rn is null )
   --order by t.requesttime desc,t.orderid desc
   --order by t.e_id desc
/

prompt
prompt Creating view REPORT_CUSTOMER_ORDER_VIEW
prompt ========================================
prompt
create or replace view report_customer_order_view as
select t.e_id,  --bomid
       t.orderid, --工单编号
       t.status,  --工单状态编号
       vasc.label as statuslabel,  --工单状态
       cast(t.statustime as date)statustime,  --工单状态时间
       t.requesttime,  --工单发起时间
       cast(t.orderduedate as date)orderduedate,  --工单截止时间
       decode(ROUND(t.orderlt/(3600*24),2),0,1,ROUND(t.orderlt/(3600*24),2)) timelimit,
       cast(substr(case t.status when 9003
            then (t.statustime - t.requesttime)
            else (sysdate - t.requesttime)
            end,2,10) as int)
            ||' Day'||substr(case t.status when 9003
            then (t.statustime - t.requesttime)
            else (sysdate - t.requesttime)
            end,11,9)
            processlen,--工单时长
       t.requestclientname as creator,--工单发起者
       t.requestdeptname as departmentlabel, --工单发起者部门
       t.requestdept as depid,
       t.biztypecode||t.biztypename as ordertype,     --工单类型编号 --工单类型
       t.biztypecode,
       t.bizinfo1,    --工单小类
       t.bizinfo3,    --标记类型
       t.bizinfo5,    --重填次数
       t.bizinfo6,    --姓名
       t.bizinfo7,     --卡号
       t.bizinfo10,   --手机号
       t.bizinfo11,    --回复结果编码
       crt.label feedback,  --回复结果
       t.bizinfo13,         --回复方式
       (select '差错' as errorstatus from vtm_task_error a where a.bominsid = t.e_id and rownum = 1) as errorstatus,
       (select '催办' from vtm_urgent a  where type = '11002' and a.bominstid = t.e_id and rownum = 1) as urgency,
       (select '补充' from vtm_urgent a  where type = '11003' and a.bominstid = t.e_id and rownum = 1) as supplement,
       (select '备注' from vtm_urgent a  where type = '11001' and a.bominstid = t.e_id and rownum = 1) as remarks,
       (select sum(tt.retroversioncount) from vtm_task tt where tt.bominsid=t.e_id) as RetrovesionNum, --回退次数
   /*    decode(vte.errorstatus,'6002','差错','') as errorstatus,     --差催状态（不为空则记差错）
       decode(vn1.type,'11002','催办','') as urgency,  --催办状态（不为空则催办）*/
       decode(bpid.time_out_state,4001,'未超时','超时') as ordertimeoutstatus,   --超时状态
       bpid.time_out_state
  from vega_boheader t,
       vcm_app_status_code vasc,
       ceb_result_type crt,
       bw_process_instance_data bpid
/*       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11002') vn1,
       (select distinct a.bominsid, 6002 as errorstatus
          from vtm_task_error a) vte*/
   where /*t.e_id=vn1.bominstid(+)
   and t.e_id=vte.bominsid(+)
   and*/ t.status = vasc.code
   and t.e_id = bpid.bom_inst_id(+)
   and t.bizinfo11= crt.code(+)
  --order by t.requesttime desc
/

prompt
prompt Creating view REPORT_CUSTOMER_ORDER_VIEW_BAK
prompt ============================================
prompt
create or replace view report_customer_order_view_bak as
select t.e_id,  --bomid
       t.orderid, --工单编号
       t.status,  --工单状态编号
       vasc.label as statuslabel,  --工单状态
       cast(t.statustime as date)statustime,  --工单状态时间
       cast(t.requesttime as date)requesttime,  --工单发起时间
       cast(t.orderduedate as date)orderduedate,  --工单截止时间
       --ROUND(t.orderlt/(3600*24),2) timelimit,   --工单时限
       decode(ROUND(t.orderlt/(3600*24),2),0,1,ROUND(t.orderlt/(3600*24),2)) timelimit,
       cast(substr(case t.status when 9003
            then (t.statustime - t.requesttime)
            else (sysdate - t.requesttime)
            end,2,10) as int)
            ||substr(case t.status when 9003
            then (t.statustime - t.requesttime)
            else (sysdate - t.requesttime)
            end,11,9)
            processlen,--工单时长
      -- cast(substr(decode(t.status,9003,t.statustime - t.requesttime,''),2,10) as int)
      --      ||substr(decode(t.status,9003,t.statustime - t.requesttime,''),11,9)
      --      processlen, --工单时长
     --t.requestclient,
       vs.username as creator,  --工单发起者
     --t.requestdept as department,
       vo.label as departmentlabel,   --工单发起者部门
       t.biztypecode,     --工单类型编号
       t.biztypename,   --工单类型
       t.bizinfo1,    --工单小类
       t.bizinfo3,    --标记类型
       t.bizinfo5,    --重填次数
       t.bizinfo6,    --姓名
       t.bizinfo7,     --卡号
       t.bizinfo10,   --手机号
       t.bizinfo11,    --回复结果编码
       crt.label feedback,  --回复结果
       t.bizinfo13,         --回复方式
       decode(vte.errorstatus,'6002','差错','') as errorstatus,     --差催状态（不为空则记差错）
       decode(vn1.type,'11002','催办','') as urgency,  --催办状态（不为空则催办）
       bpi.time_out_state as ordertimeoutstatus,   --超时状态（4001正常，4004和4014为超时）
       (select distinct(decode(vt.status,'3132','协作中','')) from vtm_task vt where vt.bominsid=t.e_id and vt.status='3132') as xiezuo,
       (select count(*) from vtm_form_ins tt where tt.task_id like 'Retrovesion%' and tt.bom_inst_snbr=t.e_id) as RetrovesionNum  --回退次数
  from vega_boheader t,
       vum_staff vs,
       vum_org vo,
       vcm_app_status_code vasc,
       ceb_result_type crt,
       --vtm_task vt
       bw_process_instance bpi,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11002') vn1,
       (select distinct a.bominsid, 6002 as errorstatus
          from vtm_task_error a) vte
   where t.e_id=vn1.bominstid(+)
   and t.e_id=vte.bominsid(+)
   and t.requestclient = vs.id
   and t.requestdept = vo.id
   and t.status = vasc.code
   and t.e_id = bpi.bom_inst_id(+)
   and t.bizinfo11= crt.code(+)
   order by t.requesttime desc
/

prompt
prompt Creating view REPORT_ORDER_DESC
prompt ===============================
prompt
create or replace view report_order_desc as
select vb."E_ID",
       vb."DTYPE",
       vb."REQUESTCLIENT",
       vb."REQUESTDEPT",
       vb."REQUESTTIME",
       vb."PRIORITY",
       vb."STATUS",
       vb."STATUSTIME",
       vb."BUSINESSTYPE",
       vb."ORDERID",
       vb."ORDERABSTRACT",
       vb."ORDERDUEDATE",
       vb."ORDERLT",
       vb."CURRENTSTEPCODE",
       vb."CURRENTSTEPNAME",
       vb."CURRENTSTEPLABEL",
       vb."STEPSTARTTIME",
       vb."CURRENTSTEPDUEDATE",
       vb."CURRENTSTEPLT",
       vb."BIZTYPECODE",
       vb."BIZTYPENAME",
       vb."BIZINFO1",
       vb."BIZINFO2",
       vb."BIZINFO3",
       vb."BIZINFO4",
       vb."BIZINFO5",
       vb."BIZINFO6",
       vb."BIZINFO7",
       vb."BIZINFO8",
       vb."BIZINFO9",
       vb."BIZINFO10",
       vb."BIZINFO11",
       vb."BIZINFO12",
       vb."BIZINFO13",
       vb."BIZINFO14",
       vb."BIZINFO15",
       vb."REQUESTCLIENTNAME",
       vb."REQUESTCLIENTLABEL",
       vb."REQUESTDEPTNAME",
       vb."REQUESTDEPTLABEL",
       voc001."DESC" descs,
       voc001.remark remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom001   bom001,
       fswfs_cs_cc_bom001_2 bom001_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom001.vegaboheader_head_e_id
   and bom001.fswfscsccbom0011_body_e_id = bom001_2.e_id
   and bom001_2.fswfscscmvoc001_custinfo_id=voc001.e_id
union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom003   bom003,
       fswfs_cs_cc_bom003_2 bom003_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom003.vegaboheader_head_e_id
   and bom003.fswfscsccbom0031_body_e_id = bom003_2.e_id
   and bom003_2.fswfscscmvoc001_custinfo_id=voc001.e_id
union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom005   bom005,
       fswfs_cs_cc_bom005_2 bom005_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom005.vegaboheader_head_e_id
   and bom005.fswfscsccbom0051_body_e_id = bom005_2.e_id
   and bom005_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
        (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom006   bom006,
       fswfs_cs_cc_bom006_2 bom006_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom006.vegaboheader_head_e_id
   and bom006.fswfscsccbom0061_body_e_id = bom006_2.e_id
   and bom006_2.fswfscscmvoc001_custinfo_id=voc001.e_id
union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom007   bom007,
       fswfs_cs_cc_bom007_2 bom007_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom007.vegaboheader_head_e_id
   and bom007.fswfscsccbom0071_body_e_id = bom007_2.e_id
   and bom007_2.fswfscscmvoc001_custinfo_id=voc001.e_id
union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom008   bom008,
       fswfs_cs_cc_bom008_2 bom008_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom008.vegaboheader_head_e_id
   and bom008.fswfscsccbom0081_body_e_id = bom008_2.e_id
   and bom008_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom009   bom009,
       fswfs_cs_cc_bom009_2 bom009_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom009.vegaboheader_head_e_id
   and bom009.fswfscsccbom0091_body_e_id = bom009_2.e_id
   and bom009_2.fswfscscmvoc001_custinfo_id=voc001.e_id
union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom010   bom010,
       fswfs_cs_cc_bom010_2 bom010_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom010.vegaboheader_head_e_id
   and bom010.fswfscsccbom0101_body_e_id = bom010_2.e_id
   and bom010_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom011   bom011,
       fswfs_cs_cc_bom011_2 bom011_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom011.vegaboheader_head_e_id
   and bom011.fswfscsccbom0111_body_e_id = bom011_2.e_id
   and bom011_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom012   bom012,
       fswfs_cs_cc_bom012_2 bom012_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom012.vegaboheader_head_e_id
   and bom012.fswfscsccbom0121_body_e_id = bom012_2.e_id
   and bom012_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom013   bom,
       fswfs_cs_cc_bom013_2 bom_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom.vegaboheader_head_e_id
   and bom.fswfscsccbom0131_body_e_id = bom_2.e_id
   and bom_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom014   bom,
       fswfs_cs_cc_bom014_2 bom_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom.vegaboheader_head_e_id
   and bom.fswfscsccbom0141_body_e_id = bom_2.e_id
   and bom_2.fswfscscmvoc001_custinfo_id=voc001.e_id
union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom016   bom,
       fswfs_cs_cc_bom016_2 bom_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom.vegaboheader_head_e_id
   and bom.fswfscsccbom0161_body_e_id = bom_2.e_id
   and bom_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
   select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
        (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom017   bom,
       fswfs_cs_cc_bom017_2 bom_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom.vegaboheader_head_e_id
   and bom.fswfscsccbom0171_body_e_id = bom_2.e_id
   and bom_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
   select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
        (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom018   bom,
       fswfs_cs_cc_bom018_2 bom_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom.vegaboheader_head_e_id
   and bom.fswfscsccbom0181_body_e_id = bom_2.e_id
   and bom_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
      select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_cc_bom019   bom,
       fswfs_cs_cc_bom019_2 bom_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = bom.vegaboheader_head_e_id
   and bom.fswfscsccbom0191_body_e_id = bom_2.e_id
   and bom_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_ot_bom001   otbom,
       fswfs_cs_ot_bom001_2 otbom_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = otbom.vegaboheader_head_e_id
   and otbom.fswfscsotbom0011_body_e_id = otbom_2.e_id
   and otbom_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
   select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
        (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
 from vega_boheader        vb,
       fswfs_cs_ot_bom003   otbom,
       fswfs_cs_ot_bom003_2 otbom_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = otbom.vegaboheader_head_e_id
   and otbom.fswfscsotbom0031_body_e_id = otbom_2.e_id
   and otbom_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
    select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_ot_bom004   otbom,
       fswfs_cs_ot_bom004_2 otbom_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = otbom.vegaboheader_head_e_id
   and otbom.fswfscsotbom0041_body_e_id = otbom_2.e_id
   and otbom_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
    select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_ot_bom005   otbom,
       fswfs_cs_ot_bom005_2 otbom_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = otbom.vegaboheader_head_e_id
   and otbom.fswfscsotbom0051_body_e_id = otbom_2.e_id
   and otbom_2.fswfscscmvoc001_custinfo_id=voc001.e_id
 union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", '', '',
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_ot_bom007   otbom
       --fswfs_cs_ot_bom007_2 otbom_2,
       --fswfs_cs_cm_voc001   voc001
 where vb.e_id = otbom.vegaboheader_head_e_id
   --and otbom.fswfscsotbom0071_body_e_id = otbom_2.e_id
   --and otbom_2.fswfscscmvoc001_custinfo_id=voc001.e_id
  union all
select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", voc001."DESC", voc001.remark,
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_cs_ot_bom008   otbom,
       fswfs_cs_ot_bom008_2 otbom_2,
       fswfs_cs_cm_voc001   voc001
 where vb.e_id = otbom.vegaboheader_head_e_id
   and otbom.fswfscsotbom0081_body_e_id = otbom_2.e_id
   and otbom_2.fswfscscmvoc001_custinfo_id=voc001.e_id
union all
 select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", '', '',
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_ot_bank_bom001   otbom
       --fswfs_cs_ot_bom007_2 otbom_2,
       --fswfs_cs_cm_voc001   voc001
 where vb.e_id = otbom.vegaboheader_head_e_id
 union all
 select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", '', '',
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_ot_bank_bom002   otbom
       --fswfs_cs_ot_bom007_2 otbom_2,
       --fswfs_cs_cm_voc001   voc001
 where vb.e_id = otbom.vegaboheader_head_e_id
 union all
  select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", '', '',
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_ot_bank_bom005   otbom
       --fswfs_cs_ot_bom007_2 otbom_2,
       --fswfs_cs_cm_voc001   voc001
 where vb.e_id = otbom.vegaboheader_head_e_id
 union all
  select vb."E_ID",vb."DTYPE",vb."REQUESTCLIENT",vb."REQUESTDEPT",vb."REQUESTTIME",vb."PRIORITY",vb."STATUS",vb."STATUSTIME",vb."BUSINESSTYPE",vb."ORDERID",vb."ORDERABSTRACT",vb."ORDERDUEDATE",vb."ORDERLT",vb."CURRENTSTEPCODE",vb."CURRENTSTEPNAME",vb."CURRENTSTEPLABEL",vb."STEPSTARTTIME",vb."CURRENTSTEPDUEDATE",vb."CURRENTSTEPLT",vb."BIZTYPECODE",vb."BIZTYPENAME",vb."BIZINFO1",vb."BIZINFO2",vb."BIZINFO3",vb."BIZINFO4",vb."BIZINFO5",vb."BIZINFO6",vb."BIZINFO7",vb."BIZINFO8",vb."BIZINFO9",vb."BIZINFO10",vb."BIZINFO11",vb."BIZINFO12",vb."BIZINFO13",vb."BIZINFO14",vb."BIZINFO15",vb."REQUESTCLIENTNAME",vb."REQUESTCLIENTLABEL",vb."REQUESTDEPTNAME",vb."REQUESTDEPTLABEL", '', '',
       (select a.departmentid from (select vt.departmentid,vt.bominsid  from  vtm_task vt where vt.status<>'3010' order by vt.statustime desc) a where a.bominsid=vb.e_id and rownum=1) as departmentid
  from vega_boheader        vb,
       fswfs_ot_bank_bom006   otbom
       --fswfs_cs_ot_bom007_2 otbom_2,
       --fswfs_cs_cm_voc001   voc001
 where vb.e_id = otbom.vegaboheader_head_e_id
/

prompt
prompt Creating view REPORT_ORDER_RESULT
prompt =================================
prompt
create or replace view report_order_result as
(
select vb.biztypecode || vb.biztypename as ORDERTYPE,
       vb.bizinfo1 as subordertype,
       vb.bizinfo11,
       ct.type,
       ct.label,
       count(*) as count
  from vega_boheader vb, ceb_result_type ct
 where vb.bizinfo11 = ct.code
 group by vb.biztypecode || vb.biztypename,
          vb.bizinfo1,
          vb.bizinfo11,
          ct.type,
          ct.label
)
order by vb.biztypecode || vb.biztypename
/

prompt
prompt Creating view REPORT_ORDER_TYPE_SUMMARY
prompt =======================================
prompt
create or replace view report_order_type_summary as
(
select vb.biztypecode as rownum1,
       vb.biztypename as order_type,
       SUM(CASE WHEN vb.status=9003 THEN 1 ELSE 0 END) as finishedcount,
       SUM(CASE WHEN vb.status IN (9001,9002,9004) THEN 1 ELSE 0 END) as unfinishedcount,
       SUM(CASE WHEN vb.status IN (9005,9006,9007) THEN 1 ELSE 0 END) as errorcount,
       SUM(CASE WHEN EXISTS
                (select  1
                 from vtm_form_ins tt
                 where tt.task_id like 'Retrovesion%' and tt.bom_inst_snbr=vb.e_id )
                THEN 1 ELSE 0 END ) as withdrawcount,
       count(*) as totalcount
  from vega_boheader vb
 group by vb.biztypecode, vb.biztypename
  )
 order by vb.biztypecode
/

prompt
prompt Creating view REPORT_TASK
prompt =========================
prompt
create or replace view report_task as
select vt.bominsid,
       vh.orderid,      --工单号
       vh.biztypecode||vh.biztypename as ordertype,
       vh.bizinfo1,
       vh.requesttime,
       crt.type result,  --处理结果
       vt.taskid,       --任务号
       vt.status,       --状态
       vasc.label as taskstatuslabel , --任务状态
       vasc1.label as orderstatuslabel, --工单状态
       vt.statustime,    --发起时间
       vt.createdtime,   --创建时间
       vt.firsttimeoutdate,
       vt.resourcelabel processor,  --处理人
       vt.departmentid depid,           --处理人所在部门id
       vt.departmentname deplabel,     --处理人所在部门
       vt.timeoutstatus timeoutcode,
       decode( vt.timeoutstatus,4001,'未超时','超时')  as timeoutstatus,
       vt.timeoutstatus as timeouttask,
       vt.overtime,
       va."ACTIVITYLABEL" ,  --步骤名称
       va.activityid,
       (select '差错' as errorstatus from vtm_task_error a where a.bominsid = vh.e_id and rownum = 1) as errorstatus,
       (select '催办' from vtm_urgent a  where type = '11002' and a.bominstid = vh.e_id and rownum = 1) as urgency,
       vt.retroversioncount as RetrovesionNum --回退次数
  from
       vega_boheader vh,
       vtm_task vt,
       vmr_activity va ,
       vcm_app_status_code vasc,
       vcm_app_status_code vasc1,
       ceb_result_type crt
       where
         vt.bominsid = vh.e_id
         and vh.status = vasc.code
         and vh.bizinfo11 = crt.code(+)
         and vt.status = vasc1.code
         and vt.activityid = va.activityid
union all
select /* +index (vt idx_report)*/
       vt.bominsid,
       vh.orderid,      --工单号
       vh.biztypecode||vh.biztypename as ordertype,
       vh.bizinfo1,
       vh.requesttime,
       crt.type result,  --处理结果
       vt.taskid,       --任务号
       vt.status,       --状态
       vasc.label taskstatuslabel , --任务状态
       vasc1.label orderstatuslabel, --工单状态
       vt.statustime,    --发起时间
       vt.createdtime,   --创建时间
       vt.firsttimeoutdate,
       vt.resourcelabel processor,  --处理人
       vt.departmentid depid,           --处理人所在部门id
       vt.departmentname deplabel,     --处理人所在部门
       vt.timeoutstatus timeoutcode,
       decode( vt.timeoutstatus,4001,'未超时','超时')  as timeoutstatus,
       vt.timeoutstatus as timeouttask,
       vt.overtime,
       va."ACTIVITYLABEL" ,  --步骤名称
       va.activityid,
       (select '差错' as errorstatus from vtm_task_error a where a.bominsid = vh.e_id and rownum = 1) as errorstatus,
       (select '催办' from vtm_urgent a  where type = '11002' and a.bominstid = vh.e_id and rownum = 1) as urgency,
       vt.retroversioncount as RetrovesionNum --回退次数
  from
       his_vtm_task_ vt,
       his_vega_boheader_ vh,
       vmr_activity va ,
       vcm_app_status_code vasc,
       vcm_app_status_code vasc1,
       ceb_result_type crt
  where
   vt.bominsid = vh.e_id
   and vt.status = vasc.code
   and vh.status = vasc1.code
   and vt.activityid = va.activityid
   and vh.bizinfo11 = crt.code(+)
/

prompt
prompt Creating view REPORT_TASK_BAK
prompt =============================
prompt
create or replace view report_task_bak as
select vai.bominsid,
       vh.orderid,      --工单号
       vt.taskid,       --任务号
    -- vt.ainsid,
       vt.status,       --状态
       vasc.label statuslabel,
       vt.statustime,    --发起时间
       vt.createdtime,   --创建时间
    --   vt.resourceid,
        vt.resourcename processor,  --处理人
     --  vs.username processor,  --处理人
    --   vt.departmentid,
     --  vo.label deplabel,     --处理人所在部门
   --    vo.id depid,           --处理人所在部门id
       vt.departmentid depid,           --处理人所在部门id
       vt.departmentname deplabel,     --处理人所在部门
       --vt.timeoutstatus,     --任务超时状态
       case vt.timeoutstatus
            when 4004 then '阅读超时'
            when 4014 then '处理超时'
            when 4024 then '处理超时'
            when 4034 then '处理超时'
            when 4044 then '处理超时'
            when 4054 then '处理超时'
            else ''
            end as timeoutstatus,
       va."ACTIVITYLABEL",   --步骤名称
       --vte.errorstatus,      --差错状态
       case vte.errorstatus
            when 6002 then '差错'
            else ''
            end as errorstatus,      --差错状态
       --vn1.type as urgency,   --催办状态
       case vn1.type
            when '11002' then '催办'
            else ''
            end as urgency,
       (select count(*) from vtm_form_ins tt where tt.task_id like 'Retrovesion%'||vt."TASKID" ) as RetrovesionNum --回退次数
  from vega_boheader vh,
       vtm_task vt,
       vtm_activity_ins vai,
       vmr_activity va ,
    --   vum_staff vs,
    --   vum_org_staff vos,
     --  vum_org vo,
       vcm_app_status_code vasc,
       --vtm_urgent vn1,
       (select distinct a.taskid, a.type
          from vtm_urgent a
         where a.type = '11002') vn1,
       (select distinct a.taskid, 6002 as errorstatus
          from vtm_task_error a) vte
/

prompt
prompt Creating view REPORT_TASK_REMARKTYPE
prompt ====================================
prompt
create or replace view report_task_remarktype as
select vt.bominsid,
       vh.orderid,      --工单号
       vh.biztypecode||vh.biztypename as ordertype,
       vh.bizinfo1,
       vh.requesttime,
       vt.resourceid processorid,
       vt.resourcelabel processorname,  --处理人
       vo.id depid, --处理人所在部门id
       vo.label deplabel,--处理人所在部门
       va."ACTIVITYLABEL" ,  --步骤名称
       (select '差错' as errorstatus
               from vtm_task_error a where a.bominsid = vh.e_id and rownum = 1) as errorstatus,
       (select '催办'
               from vtm_urgent a  where type = '11002' and a.bominstid = vh.e_id and rownum = 1) as urgency,
        case when va.activitylabel like '%重填%'
          then '重填'
         else ''
         end refill,
         vt.retroversioncount as RetrovesionNum --回退次数
         from   vega_boheader vh,  vtm_task vt,
                vmr_activity va ,  vum_org vo,
                vum_org_staff vos
           where  vh.e_id =vt.bominsid
           and vt.activityid = va.activityid
           and vt.resourceid = vos.staff_id
           and vt.status <> '3004'
           and vos.org_id = vo.id
/

prompt
prompt Creating view REPORT_TASK_REMARKTYPE_CDC
prompt ========================================
prompt
create or replace view report_task_remarktype_cdc as
select vt.bominsid,
       vh.orderid,      --工单号
       vh.biztypecode||vh.biztypename as ordertype,
       vh.bizinfo1,
       vh.requesttime,
       vt.resourceid processorid,
       vt.resourcelabel processorname,  --处理人
       vt.departmentid depid,
       vt.departmentlabel deplabel,
       --vo.id depid, --处理人所在部门id
       --vo.label deplabel,--处理人所在部门
       va."ACTIVITYLABEL" ,  --步骤名称
      (select '差错' as errorstatus
               from vtm_task_error a where a.bominsid = vh.e_id and rownum = 1) as errorstatus,
       (select '催办'
               from vtm_urgent a  where type = '11002' and a.bominstid = vh.e_id and rownum = 1) as urgency,
        case when va.activitylabel like '%重填%'
          then '重填'
         else ''
         end refill,
         vt.retroversioncount as RetrovesionNum --回退次数
         from   vega_boheader vh,  vtm_task vt,
                vmr_activity va
           where  vh.e_id =vt.bominsid
           and vt.activityid = va.activityid
           and vt.status <> '3004'
/

prompt
prompt Creating view TASKBO
prompt ====================
prompt
create or replace view taskbo as
select vt."TASKID", --vtm_task
       vt."PTASKID", --vtm_task
       vt."AINSID", --vtm_task
       vt."PRIORITY", --vtm_task
       vt."STATUS", --vtm_task
       vt."STATUSTIME", --vtm_task
       vt."CREATEDTIME", --vtm_task
       vt."OWNER", --vtm_task
       vt."RESOURCEID", --vtm_task
       vt."TIMEOUTSTATUS", --vtm_task
       vt.score, --vtm_task
       vt.scoredetail, --vtm_task
       vt.performance, --vtm_task
       vt.firsttimeoutdate, --vtm_task
       vt.departmentid, --vtm_task
       vt.groupid,
       '' as PARENTRESOURCELABEL,
       '' as TASKTYPE,
       '' as PARENTRESOURCEID,
       '' as ACTIVITYNAME,
       '' as ACTIVITYPRIORITY,
       '' as ACTIVITYWORKLOAD,
       '' as ASSIGNMENTID,
       vt.formid as ACTIVITYFORMID,
       '' as ACTIVITYLABEL,
       vh.businesstype as ACTIVITYBOMID,
       /*va."ACTIVITYNAME", --vmr_activity
       va."ACTIVITYPRIORITY", --vmr_activity
       va."ACTIVITYWORKLOAD", --vmr_activity
       va."ASSIGNMENTID", --vmr_activity
       va."ACTIVITYFORMID", --vmr_activity
       va."ACTIVITYLABEL", --vmr_activity
       va."ACTIVITYBOMID" , --vmr_activity
       */
       vt."BOMINSID", --vtm_activity_inst
       vt."ACTIVITYID", --vtm_activity_inst
       /*vr1.username as ownername, --Vum_Staff
       vr2."CODE", --vum_staff
       vr2."USERNAME", --vum_staff*/
       vt.ownerlabel as ownername,
       vt.resourcename as code,
       vt.resourcelabel as USERNAME,
       --vos.org_id as deptid, --vum_org_staff
       vt.departmentlabel as deptid,
    --   vt.cooperatestatus as cooperatestatus,
       --vte.errorstatus, --vtm_task_error
       --(select count(*) from vtm_task_error a where a.bominsid = vt.bominsid)  as errorstatus,
       '' as bomname,
       '' as bomlabel,
       --vb.name as bomname, --vmr_bom
       --vb.label as bomlabel, --vmr_bom
       vh.orderid as ORDERSEQUENCE, --vtm_activity_inst
       vh.status as orderstatus, --vega_boheader
       vh.orderabstract, --vega_boheader
       vh.orderduedate, --vega_boheader
       vh.orderlt, --vega_boheader
       vh.currentstepcode, --vega_boheader
       vh.currentstepname, --vega_boheader
       vh.currentsteplabel, --vega_boheader
       vh.currentstepduedate, --vega_boheader
       vh.stepstarttime, --vega_boheader
       vh.currentsteplt, --vega_boheader
       vh.biztypecode, --vega_boheader
       vh.biztypename, --vega_boheader
       vh.bizinfo1, --vega_boheader
       vh.bizinfo2, --vega_boheader
       vh.bizinfo3, --vega_boheader
       vh.bizinfo4, --vega_boheader
       vh.bizinfo5, --vega_boheader
       vh.orderid , --vega_boheader
       vh.bizinfo6, --vega_boheader
       vh.bizinfo7, --vega_boheader
       vh.bizinfo8, --vega_boheader
       vh.bizinfo9, --vega_boheader
       vh.bizinfo10, --vega_boheader
       vh.bizinfo11, --vega_boheader
       vh.bizinfo12, --vega_boheader
       vh.bizinfo13, --vega_boheader
       vh.bizinfo14, --vega_boheader
       vh.bizinfo15, --vega_boheader
       cast(vh.requesttime as date) as requesttime, --vega_boheader
       /*vte.errorstatus,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,*/
       '' as errorstatus,
     --  (select 6002 as errorstatus from vtm_task_error a where a.bominsid = vt.bominsid and rownum = 1) as errorstatus,
       (select a.type from vtm_urgent a  where type = '11002' and a.bominstid = vt.bominsid and rownum = 1) as urgency,
       (select a.type from vtm_urgent a  where type = '11003' and a.bominstid = vt.bominsid and rownum = 1) as supplement,
       (select a.type from vtm_urgent a  where type = '11001' and a.bominstid = vt.bominsid and rownum = 1) as remarks,
       vt.cooperatestatus as stepcount,
       --bpi.step_count as stepcount, --bw_process_instance
       bpia.time_out_state as ordertimeoutstatus, --bw_process_instance
       bpia.step_out_state as orderstepoutstatus, --bw_process_instance
       '' as suggestion,
       --(select 6002 from vtm_task a where vt.taskid = a.ptaskid and  a.status in (3132, 3134)  and rownum = 1 ) as bizinfo14, -- 待协作
       --vfi.process_suggestion as suggestion , --vtm_form_ins*/
       vt.retroversioncount as RetrovesionNum
  from vtm_task vt,
      -- vtm_activity_ins vai,
     --  vmr_activity va ,
       --Vum_Staff vr1,
       --Vum_Staff vr2,
       --vum_org_staff vos,
     --  vmr_bom vb,
       vega_boheader vh,
       /*(select distinct a.bominsid, 6002 as errorstatus from vtm_task_error a) vte,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11002') vn1,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11003') vn2,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11001') vn3,*/
       /*(select * from vtm_form_ins m where m.form_def_id is not null and m.remark != 'R'
           --and rownum = 1
           --order by m.operate_time desc
         ) vfi*/
         --vtm_form_ins
       bw_process_instance_data bpia
 where
   -- vt.ainsid = vai.instanceid
   --and vt.owner = vr1.id
   --and vt.resourceid = vr2.id
   --and vt.resourceid = vos.staff_id
   --and
 --  vt.activityid = va.activityid
 --  and va.ACTIVITYBOMID = vb.id
    vt.BOMINSID = vh.e_id(+)
/*
   and vt.BOMINSID = vte.bominsid(+)
   and vt.BOMINSID = vn1.bominstid(+)
   and vt.BOMINSID = vn2.bominstid(+)
   and vt.BOMINSID = vn3.bominstid(+)
   */
   and vt.BOMINSID = bpia.bom_inst_id(+)
   --and vt.taskid = vfi.task_id(+)
  -- )
  order by vt.statustime desc
/

prompt
prompt Creating view TASKBO_0617
prompt =========================
prompt
create or replace view taskbo_0617 as
select vt."TASKID", --vtm_task
       vt."PTASKID", --vtm_task
       vt."AINSID", --vtm_task
       vt."PRIORITY", --vtm_task
       vt."STATUS", --vtm_task
       vt."STATUSTIME", --vtm_task
       vt."CREATEDTIME", --vtm_task
       vt."OWNER", --vtm_task
       vt."RESOURCEID", --vtm_task
       vt."TIMEOUTSTATUS", --vtm_task
       vt.score, --vtm_task
       vt.scoredetail, --vtm_task
       vt.performance, --vtm_task
       vt.firsttimeoutdate, --vtm_task
       vt.departmentid, --vtm_task
       vt.groupid,
       va."ACTIVITYNAME", --vmr_activity
       va."ACTIVITYPRIORITY", --vmr_activity
       va."ACTIVITYWORKLOAD", --vmr_activity
       va."ASSIGNMENTID", --vmr_activity
       va."ACTIVITYFORMID", --vmr_activity
       va."ACTIVITYLABEL", --vmr_activity
       va."ACTIVITYBOMID" , --vmr_activity
       vt."BOMINSID", --vtm_activity_inst
       vt."ACTIVITYID", --vtm_activity_inst
       /*vr1.username as ownername, --Vum_Staff
       vr2."CODE", --vum_staff
       vr2."USERNAME", --vum_staff*/
       vt.ownerlabel as ownername,
       vt.resourcename as code,
       vt.resourcelabel as USERNAME,
       --vos.org_id as deptid, --vum_org_staff
       vt.departmentlabel as deptid,
       --vte.errorstatus, --vtm_task_error
       --(select count(*) from vtm_task_error a where a.bominsid = vt.bominsid)  as errorstatus,
       vb.name as bomname, --vmr_bom
       vb.label as bomlabel, --vmr_bom
       vh.orderid as ORDERSEQUENCE, --vtm_activity_inst
       vh.status as orderstatus, --vega_boheader
       vh.orderabstract, --vega_boheader
       vh.orderduedate, --vega_boheader
       vh.orderlt, --vega_boheader
       vh.currentstepcode, --vega_boheader
       vh.currentstepname, --vega_boheader
       vh.currentsteplabel, --vega_boheader
       vh.currentstepduedate, --vega_boheader
       vh.stepstarttime, --vega_boheader
       vh.currentsteplt, --vega_boheader
       vh.biztypecode, --vega_boheader
       vh.biztypename, --vega_boheader
       vh.bizinfo1, --vega_boheader
       vh.bizinfo2, --vega_boheader
       vh.bizinfo3, --vega_boheader
       vh.bizinfo4, --vega_boheader
       vh.bizinfo5, --vega_boheader
       vh.orderid , --vega_boheader
       vh.bizinfo6, --vega_boheader
       vh.bizinfo7, --vega_boheader
       vh.bizinfo8, --vega_boheader
       vh.bizinfo9, --vega_boheader
       vh.bizinfo10, --vega_boheader
       vh.bizinfo11, --vega_boheader
       vh.bizinfo12, --vega_boheader
       vh.bizinfo13, --vega_boheader
       vh.bizinfo14, --vega_boheader
       vh.bizinfo15, --vega_boheader
       cast(vh.requesttime as date) as requesttime, --vega_boheader
       /*vte.errorstatus,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,*/
       (select 6002 as errorstatus from vtm_task_error a where a.bominsid = vt.bominsid and rownum = 1) as errorstatus,
       (select a.type from vtm_urgent a  where type = '11002' and a.bominstid = vt.bominsid and rownum = 1) as urgency,
       (select a.type from vtm_urgent a  where type = '11003' and a.bominstid = vt.bominsid and rownum = 1) as supplement,
       (select a.type from vtm_urgent a  where type = '11001' and a.bominstid = vt.bominsid and rownum = 1) as remarks,
       bpi.step_count as stepcount, --bw_process_instance
       bpi.time_out_state as ordertimeoutstatus, --bw_process_instance
       bpi.step_out_state as orderstepoutstatus, --bw_process_instance
       '' as suggestion,
         --(select 6002 from vtm_task a where vt.taskid = a.ptaskid and  a.status in (3132, 3134)  and rownum = 1 ) as bizinfo14, -- 待协作
       --vfi.process_suggestion as suggestion , --vtm_form_ins*/
       (select count(*) from vtm_form_ins tt where tt.task_id like 'Retrovesion%'||vt."TASKID" ) as RetrovesionNum
  from vtm_task vt,
       --vtm_activity_ins vai,
       vmr_activity va ,
       --Vum_Staff vr1,
       --Vum_Staff vr2,
       --vum_org_staff vos,
       vmr_bom vb,
       vega_boheader vh,
       /*(select distinct a.bominsid, 6002 as errorstatus from vtm_task_error a) vte,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11002') vn1,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11003') vn2,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11001') vn3,*/
       /*(select * from vtm_form_ins m where m.form_def_id is not null and m.remark != 'R'
           --and rownum = 1
           --order by m.operate_time desc
         ) vfi*/
         --vtm_form_ins
       bw_process_instance bpi
 where
   -- vt.ainsid = vai.instanceid
   --and vt.owner = vr1.id
   --and vt.resourceid = vr2.id
   --and vt.resourceid = vos.staff_id
   --and
   vt.activityid = va.activityid
/

prompt
prompt Creating view TASKBO_0618
prompt =========================
prompt
create or replace view taskbo_0618 as
select vt."TASKID", --vtm_task
       vt."PTASKID", --vtm_task
       vt."AINSID", --vtm_task
       vt."PRIORITY", --vtm_task
       vt."STATUS", --vtm_task
       vt."STATUSTIME", --vtm_task
       vt."CREATEDTIME", --vtm_task
       vt."OWNER", --vtm_task
       vt."RESOURCEID", --vtm_task
       vt."TIMEOUTSTATUS", --vtm_task
       vt.score, --vtm_task
       vt.scoredetail, --vtm_task
       vt.performance, --vtm_task
       vt.firsttimeoutdate, --vtm_task
       vt.departmentid, --vtm_task
       vt.groupid,
       va."ACTIVITYNAME", --vmr_activity
       va."ACTIVITYPRIORITY", --vmr_activity
       va."ACTIVITYWORKLOAD", --vmr_activity
       va."ASSIGNMENTID", --vmr_activity
       va."ACTIVITYFORMID", --vmr_activity
       va."ACTIVITYLABEL", --vmr_activity
       va."ACTIVITYBOMID" , --vmr_activity
       vt."BOMINSID", --vtm_activity_inst
       vt."ACTIVITYID", --vtm_activity_inst
       /*vr1.username as ownername, --Vum_Staff
       vr2."CODE", --vum_staff
       vr2."USERNAME", --vum_staff*/
       vt.ownerlabel as ownername,
       vt.resourcename as code,
       vt.resourcelabel as USERNAME,
       --vos.org_id as deptid, --vum_org_staff
       vt.departmentlabel as deptid,
    --   vt.cooperatestatus as cooperatestatus,
       --vte.errorstatus, --vtm_task_error
       --(select count(*) from vtm_task_error a where a.bominsid = vt.bominsid)  as errorstatus,
       vb.name as bomname, --vmr_bom
       vb.label as bomlabel, --vmr_bom
       vh.orderid as ORDERSEQUENCE, --vtm_activity_inst
       vh.status as orderstatus, --vega_boheader
       vh.orderabstract, --vega_boheader
       vh.orderduedate, --vega_boheader
       vh.orderlt, --vega_boheader
       vh.currentstepcode, --vega_boheader
       vh.currentstepname, --vega_boheader
       vh.currentsteplabel, --vega_boheader
       vh.currentstepduedate, --vega_boheader
       vh.stepstarttime, --vega_boheader
       vh.currentsteplt, --vega_boheader
       vh.biztypecode, --vega_boheader
       vh.biztypename, --vega_boheader
       vh.bizinfo1, --vega_boheader
       vh.bizinfo2, --vega_boheader
       vh.bizinfo3, --vega_boheader
       vh.bizinfo4, --vega_boheader
       vh.bizinfo5, --vega_boheader
       vh.orderid , --vega_boheader
       vh.bizinfo6, --vega_boheader
       vh.bizinfo7, --vega_boheader
       vh.bizinfo8, --vega_boheader
       vh.bizinfo9, --vega_boheader
       vh.bizinfo10, --vega_boheader
       vh.bizinfo11, --vega_boheader
       vh.bizinfo12, --vega_boheader
       vh.bizinfo13, --vega_boheader
       vh.bizinfo14, --vega_boheader
       vh.bizinfo15, --vega_boheader
       cast(vh.requesttime as date) as requesttime, --vega_boheader
       /*vte.errorstatus,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,*/
       (select 6002 as errorstatus from vtm_task_error a where a.bominsid = vt.bominsid and rownum = 1) as errorstatus,
       (select a.type from vtm_urgent a  where type = '11002' and a.bominstid = vt.bominsid and rownum = 1) as urgency,
       (select a.type from vtm_urgent a  where type = '11003' and a.bominstid = vt.bominsid and rownum = 1) as supplement,
       (select a.type from vtm_urgent a  where type = '11001' and a.bominstid = vt.bominsid and rownum = 1) as remarks,
       vt.cooperatestatus as stepcount,
       --bpi.step_count as stepcount, --bw_process_instance
       bpia.time_out_state as ordertimeoutstatus, --bw_process_instance
       bpia.step_out_state as orderstepoutstatus, --bw_process_instance
       '' as suggestion,
       --(select 6002 from vtm_task a where vt.taskid = a.ptaskid and  a.status in (3132, 3134)  and rownum = 1 ) as bizinfo14, -- 待协作
       --vfi.process_suggestion as suggestion , --vtm_form_ins*/
       vt.retroversioncount as RetrovesionNum
  from vtm_task vt,
      -- vtm_activity_ins vai,
       vmr_activity va ,
       --Vum_Staff vr1,
       --Vum_Staff vr2,
       --vum_org_staff vos,
       vmr_bom vb,
       vega_boheader vh,
       /*(select distinct a.bominsid, 6002 as errorstatus from vtm_task_error a) vte,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11002') vn1,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11003') vn2,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11001') vn3,*/
       /*(select * from vtm_form_ins m where m.form_def_id is not null and m.remark != 'R'
           --and rownum = 1
           --order by m.operate_time desc
         ) vfi*/
         --vtm_form_ins
       bw_process_instance_data bpia
 where
   -- vt.ainsid = vai.instanceid
   --and vt.owner = vr1.id
   --and vt.resourceid = vr2.id
   --and vt.resourceid = vos.staff_id
   --and
   vt.activityid = va.activityid
   and va.ACTIVITYBOMID = vb.id
   and  vt.BOMINSID = vh.e_id(+)
/*
   and vt.BOMINSID = vte.bominsid(+)
   and vt.BOMINSID = vn1.bominstid(+)
   and vt.BOMINSID = vn2.bominstid(+)
   and vt.BOMINSID = vn3.bominstid(+)
   */
   and vt.BOMINSID = bpia.bom_inst_id(+)
   --and vt.taskid = vfi.task_id(+)
  -- )
  order by vt.statustime desc
/

prompt
prompt Creating view TASKBO_ALL
prompt ========================
prompt
create or replace view taskbo_all as
select vt."TASKID", --vtm_task
       vt."PTASKID", --vtm_task
       vt."AINSID", --vtm_task
       vt."PRIORITY", --vtm_task
       vt."STATUS", --vtm_task
       vt."STATUSTIME", --vtm_task
       vt."CREATEDTIME", --vtm_task
       vt."OWNER", --vtm_task
       vt."RESOURCEID", --vtm_task
       vt."TIMEOUTSTATUS", --vtm_task
       vt.score, --vtm_task
       vt.scoredetail, --vtm_task
       vt.performance, --vtm_task
       vt.firsttimeoutdate, --vtm_task
       vt.departmentid, --vtm_task
       vt.groupid,
       '' as PARENTRESOURCELABEL,
       '' as TASKTYPE,
       '' as PARENTRESOURCEID,
       '' as ACTIVITYNAME,
       '' as ACTIVITYPRIORITY,
       '' as ACTIVITYWORKLOAD,
       '' as ASSIGNMENTID,
       vt.formid as ACTIVITYFORMID,
       '' as ACTIVITYLABEL,
       vh.businesstype as ACTIVITYBOMID,
       /*va."ACTIVITYNAME", --vmr_activity
       va."ACTIVITYPRIORITY", --vmr_activity
       va."ACTIVITYWORKLOAD", --vmr_activity
       va."ASSIGNMENTID", --vmr_activity
       va."ACTIVITYFORMID", --vmr_activity
       va."ACTIVITYLABEL", --vmr_activity
       va."ACTIVITYBOMID" , --vmr_activity
       */
       vt."BOMINSID", --vtm_activity_inst
       vt."ACTIVITYID", --vtm_activity_inst
       /*vr1.username as ownername, --Vum_Staff
       vr2."CODE", --vum_staff
       vr2."USERNAME", --vum_staff*/
       vt.ownerlabel as ownername,
       vt.resourcename as code,
       vt.resourcelabel as USERNAME,
       --vos.org_id as deptid, --vum_org_staff
       vt.departmentlabel as deptid,
    --   vt.cooperatestatus as cooperatestatus,
       --vte.errorstatus, --vtm_task_error
       --(select count(*) from vtm_task_error a where a.bominsid = vt.bominsid)  as errorstatus,
       '' as bomname,
       '' as bomlabel,
       --vb.name as bomname, --vmr_bom
       --vb.label as bomlabel, --vmr_bom
       vh.orderid as ORDERSEQUENCE, --vtm_activity_inst
       vh.status as orderstatus, --vega_boheader
       vh.orderabstract, --vega_boheader
       vh.orderduedate, --vega_boheader
       vh.orderlt, --vega_boheader
       vh.currentstepcode, --vega_boheader
       vh.currentstepname, --vega_boheader
       vh.currentsteplabel, --vega_boheader
       vh.currentstepduedate, --vega_boheader
       vh.stepstarttime, --vega_boheader
       vh.currentsteplt, --vega_boheader
       vh.biztypecode, --vega_boheader
       vh.biztypename, --vega_boheader
       vh.bizinfo1, --vega_boheader
       vh.bizinfo2, --vega_boheader
       vh.bizinfo3, --vega_boheader
       vh.bizinfo4, --vega_boheader
       vh.bizinfo5, --vega_boheader
       vh.orderid , --vega_boheader
       vh.bizinfo6, --vega_boheader
       vh.bizinfo7, --vega_boheader
       vh.bizinfo8, --vega_boheader
       vh.bizinfo9, --vega_boheader
       vh.bizinfo10, --vega_boheader
       vh.bizinfo11, --vega_boheader
       vh.bizinfo12, --vega_boheader
       vh.bizinfo13, --vega_boheader
       vh.bizinfo14, --vega_boheader
       vh.bizinfo15, --vega_boheader
       cast(vh.requesttime as date) as requesttime, --vega_boheader
       /*vte.errorstatus,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,*/
       '' as errorstatus,
     --  (select 6002 as errorstatus from vtm_task_error a where a.bominsid = vt.bominsid and rownum = 1) as errorstatus,
       (select a.type from vtm_urgent a  where type = '11002' and a.bominstid = vt.bominsid and rownum = 1) as urgency,
       (select a.type from vtm_urgent a  where type = '11003' and a.bominstid = vt.bominsid and rownum = 1) as supplement,
       (select a.type from vtm_urgent a  where type = '11001' and a.bominstid = vt.bominsid and rownum = 1) as remarks,
       vt.cooperatestatus as stepcount,
       --bpi.step_count as stepcount, --bw_process_instance
       bpia.time_out_state as ordertimeoutstatus, --bw_process_instance
       bpia.step_out_state as orderstepoutstatus, --bw_process_instance
       '' as suggestion,
       --(select 6002 from vtm_task a where vt.taskid = a.ptaskid and  a.status in (3132, 3134)  and rownum = 1 ) as bizinfo14, -- 待协作
       --vfi.process_suggestion as suggestion , --vtm_form_ins*/
       vt.retroversioncount as RetrovesionNum
  from vtm_task vt,
      -- vtm_activity_ins vai,
     --  vmr_activity va ,
       --Vum_Staff vr1,
       --Vum_Staff vr2,
       --vum_org_staff vos,
     --  vmr_bom vb,
       vega_boheader vh,
       /*(select distinct a.bominsid, 6002 as errorstatus from vtm_task_error a) vte,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11002') vn1,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11003') vn2,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11001') vn3,*/
       /*(select * from vtm_form_ins m where m.form_def_id is not null and m.remark != 'R'
           --and rownum = 1
           --order by m.operate_time desc
         ) vfi*/
         --vtm_form_ins
       bw_process_instance_data bpia
 where
   -- vt.ainsid = vai.instanceid
   --and vt.owner = vr1.id
   --and vt.resourceid = vr2.id
   --and vt.resourceid = vos.staff_id
   --and
 --  vt.activityid = va.activityid
 --  and va.ACTIVITYBOMID = vb.id
    vt.BOMINSID = vh.e_id(+)
/*
   and vt.BOMINSID = vte.bominsid(+)
   and vt.BOMINSID = vn1.bominstid(+)
   and vt.BOMINSID = vn2.bominstid(+)
   and vt.BOMINSID = vn3.bominstid(+)
   */
   and vt.BOMINSID = bpia.bom_inst_id(+)
   --and vt.taskid = vfi.task_id(+)
  -- )
  order by vt.statustime desc
/

prompt
prompt Creating view TASKBO_ALL_BAK
prompt ============================
prompt
create or replace view taskbo_all_bak as
select vt."TASKID", --vtm_task
       vt."PTASKID", --vtm_task
       vt."AINSID", --vtm_task
       vt."PRIORITY", --vtm_task
       vt."STATUS", --vtm_task
       vt."STATUSTIME", --vtm_task
       vt."CREATEDTIME", --vtm_task
       vt."OWNER", --vtm_task
       vt."RESOURCEID", --vtm_task
       vt."TIMEOUTSTATUS", --vtm_task
       vt.score, --vtm_task
       vt.scoredetail, --vtm_task
       vt.performance, --vtm_task
       vt.firsttimeoutdate, --vtm_task
       vt.departmentid, --vtm_task
       vt.groupid,
       '' as PARENTRESOURCELABEL,
       '' as TASKTYPE,
       '' as PARENTRESOURCEID,
       '' as ACTIVITYNAME,
       '' as ACTIVITYPRIORITY,
       '' as ACTIVITYWORKLOAD,
       '' as ASSIGNMENTID,
       vt.formid as ACTIVITYFORMID,
       '' as ACTIVITYLABEL,
       vh.businesstype as ACTIVITYBOMID,
       vt."BOMINSID", --vtm_activity_inst
       vt."ACTIVITYID", --vtm_activity_inst
       vt.ownerlabel as ownername,
       vt.resourcename as code,
       vt.resourcelabel as USERNAME,
       vt.departmentlabel as deptid,
       '' as bomname,
       '' as bomlabel,
       vh.orderid as ORDERSEQUENCE, --vtm_activity_inst
       vh.status as orderstatus, --vega_boheader
       vh.orderabstract, --vega_boheader
       vh.orderduedate, --vega_boheader
       vh.orderlt, --vega_boheader
       vh.currentstepcode, --vega_boheader
       vh.currentstepname, --vega_boheader
       vh.currentsteplabel, --vega_boheader
       vh.currentstepduedate, --vega_boheader
       vh.stepstarttime, --vega_boheader
       vh.currentsteplt, --vega_boheader
       vh.biztypecode, --vega_boheader
       vh.biztypename, --vega_boheader
       vh.bizinfo1, --vega_boheader
       vh.bizinfo2, --vega_boheader
       vh.bizinfo3, --vega_boheader
       vh.bizinfo4, --vega_boheader
       vh.bizinfo5, --vega_boheader
       vh.orderid , --vega_boheader
       vh.bizinfo6, --vega_boheader
       vh.bizinfo7, --vega_boheader
       vh.bizinfo8, --vega_boheader
       vh.bizinfo9, --vega_boheader
       vh.bizinfo10, --vega_boheader
       vh.bizinfo11, --vega_boheader
       vh.bizinfo12, --vega_boheader
       vh.bizinfo13, --vega_boheader
       vh.bizinfo14, --vega_boheader
       vh.bizinfo15, --vega_boheader
       cast(vh.requesttime as date) as requesttime, --vega_boheader
       '' as errorstatus,
       (select a.type from vtm_urgent a  where type = '11002' and a.bominstid = vt.bominsid and rownum = 1) as urgency,
       (select a.type from vtm_urgent a  where type = '11003' and a.bominstid = vt.bominsid and rownum = 1) as supplement,
       (select a.type from vtm_urgent a  where type = '11001' and a.bominstid = vt.bominsid and rownum = 1) as remarks,
       vt.cooperatestatus as stepcount,
       bpia.time_out_state as ordertimeoutstatus, --bw_process_instance
       bpia.step_out_state as orderstepoutstatus, --bw_process_instance
       '' as suggestion,
       vt.retroversioncount as RetrovesionNum
  from (select vt1.* from vtm_task vt1 union all select vtf.* from  vtm_task_f vtf) vt,
       (select vh1.* from vega_boheader vh1 union all select vhf1.* from vega_boheader_f vhf1 ) vh,
       (select bpia1.* from bw_process_instance_data bpia1
               union all select bpiaf.* from bw_process_instance_data_f bpiaf) bpia
 where
    vt.BOMINSID = vh.e_id(+)
     and vt.BOMINSID = bpia.bom_inst_id(+)
        --- order by vt.statustime desc
/

prompt
prompt Creating view TASKBO_F
prompt ======================
prompt
create or replace view taskbo_f as
select vt."TASKID", --vtm_task
       vt."PTASKID", --vtm_task
       vt."AINSID", --vtm_task
       vt."PRIORITY", --vtm_task
       vt."STATUS", --vtm_task
       vt."STATUSTIME", --vtm_task
       vt."CREATEDTIME", --vtm_task
       vt."OWNER", --vtm_task
       vt."RESOURCEID", --vtm_task
       vt."TIMEOUTSTATUS", --vtm_task
       vt.score, --vtm_task
       vt.scoredetail, --vtm_task
       vt.performance, --vtm_task
       vt.firsttimeoutdate, --vtm_task
       vt.departmentid, --vtm_task
       vt.groupid,
       '' as PARENTRESOURCELABEL,
       '' as TASKTYPE,
       '' as PARENTRESOURCEID,
       '' as ACTIVITYNAME,
       '' as ACTIVITYPRIORITY,
       '' as ACTIVITYWORKLOAD,
       '' as ASSIGNMENTID,
       vt.formid as ACTIVITYFORMID,
       '' as ACTIVITYLABEL,
       vh.businesstype as ACTIVITYBOMID,
       /*va."ACTIVITYNAME", --vmr_activity
       va."ACTIVITYPRIORITY", --vmr_activity
       va."ACTIVITYWORKLOAD", --vmr_activity
       va."ASSIGNMENTID", --vmr_activity
       va."ACTIVITYFORMID", --vmr_activity
       va."ACTIVITYLABEL", --vmr_activity
       va."ACTIVITYBOMID" , --vmr_activity
       */
       vt."BOMINSID", --vtm_activity_inst
       vt."ACTIVITYID", --vtm_activity_inst
       /*vr1.username as ownername, --Vum_Staff
       vr2."CODE", --vum_staff
       vr2."USERNAME", --vum_staff*/
       vt.ownerlabel as ownername,
       vt.resourcename as code,
       vt.resourcelabel as USERNAME,
       --vos.org_id as deptid, --vum_org_staff
       vt.departmentlabel as deptid,
    --   vt.cooperatestatus as cooperatestatus,
       --vte.errorstatus, --vtm_task_error
       --(select count(*) from vtm_task_error a where a.bominsid = vt.bominsid)  as errorstatus,
       '' as bomname,
       '' as bomlabel,
       --vb.name as bomname, --vmr_bom
       --vb.label as bomlabel, --vmr_bom
       vh.orderid as ORDERSEQUENCE, --vtm_activity_inst
       vh.status as orderstatus, --vega_boheader
       vh.orderabstract, --vega_boheader
       vh.orderduedate, --vega_boheader
       vh.orderlt, --vega_boheader
       vh.currentstepcode, --vega_boheader
       vh.currentstepname, --vega_boheader
       vh.currentsteplabel, --vega_boheader
       vh.currentstepduedate, --vega_boheader
       vh.stepstarttime, --vega_boheader
       vh.currentsteplt, --vega_boheader
       vh.biztypecode, --vega_boheader
       vh.biztypename, --vega_boheader
       vh.bizinfo1, --vega_boheader
       vh.bizinfo2, --vega_boheader
       vh.bizinfo3, --vega_boheader
       vh.bizinfo4, --vega_boheader
       vh.bizinfo5, --vega_boheader
       vh.orderid , --vega_boheader
       vh.bizinfo6, --vega_boheader
       vh.bizinfo7, --vega_boheader
       vh.bizinfo8, --vega_boheader
       vh.bizinfo9, --vega_boheader
       vh.bizinfo10, --vega_boheader
       vh.bizinfo11, --vega_boheader
       vh.bizinfo12, --vega_boheader
       vh.bizinfo13, --vega_boheader
       vh.bizinfo14, --vega_boheader
       vh.bizinfo15, --vega_boheader
       cast(vh.requesttime as date) as requesttime, --vega_boheader
       /*vte.errorstatus,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,*/
       '' as errorstatus,
     --  (select 6002 as errorstatus from vtm_task_error a where a.bominsid = vt.bominsid and rownum = 1) as errorstatus,
       (select a.type from vtm_urgent a  where type = '11002' and a.bominstid = vt.bominsid and rownum = 1) as urgency,
       (select a.type from vtm_urgent a  where type = '11003' and a.bominstid = vt.bominsid and rownum = 1) as supplement,
       (select a.type from vtm_urgent a  where type = '11001' and a.bominstid = vt.bominsid and rownum = 1) as remarks,
       vt.cooperatestatus as stepcount,
       --bpi.step_count as stepcount, --bw_process_instance
       bpia.time_out_state as ordertimeoutstatus, --bw_process_instance
       bpia.step_out_state as orderstepoutstatus, --bw_process_instance
       '' as suggestion,
       --(select 6002 from vtm_task a where vt.taskid = a.ptaskid and  a.status in (3132, 3134)  and rownum = 1 ) as bizinfo14, -- 待协作
       --vfi.process_suggestion as suggestion , --vtm_form_ins*/
       vt.retroversioncount as RetrovesionNum
  from vtm_task_f vt,
      -- vtm_activity_ins vai,
     --  vmr_activity va ,
       --Vum_Staff vr1,
       --Vum_Staff vr2,
       --vum_org_staff vos,
     --  vmr_bom vb,
       vega_boheader_f vh,
       /*(select distinct a.bominsid, 6002 as errorstatus from vtm_task_error a) vte,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11002') vn1,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11003') vn2,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11001') vn3,*/
       /*(select * from vtm_form_ins m where m.form_def_id is not null and m.remark != 'R'
           --and rownum = 1
           --order by m.operate_time desc
         ) vfi*/
         --vtm_form_ins
       bw_process_instance_data_f bpia
 where
   -- vt.ainsid = vai.instanceid
   --and vt.owner = vr1.id
   --and vt.resourceid = vr2.id
   --and vt.resourceid = vos.staff_id
   --and
 --  vt.activityid = va.activityid
 --  and va.ACTIVITYBOMID = vb.id
    vt.BOMINSID = vh.e_id(+)
/*
   and vt.BOMINSID = vte.bominsid(+)
   and vt.BOMINSID = vn1.bominstid(+)
   and vt.BOMINSID = vn2.bominstid(+)
   and vt.BOMINSID = vn3.bominstid(+)
   */
   and vt.BOMINSID = bpia.bom_inst_id(+)
   --and vt.taskid = vfi.task_id(+)
  -- )
  order by vt.statustime desc
/

prompt
prompt Creating view TASKHISTORYFORHANDLER_VIEW
prompt ========================================
prompt
create or replace view taskhistoryforhandler_view as
select '发起任务' as ACTIVITYLABEL,
       '1' as rowno,
       --t3.username,
       --t1.label as orglabel,
       t.operatorlabel as username,
       t.operatorglabel as orglabel,
       to_char(t.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t.process_suggestion) as suggestion,
       to_char(t.id) as forminstid,
       t.document as document,
       t.bom_inst_snbr,
       t.task_id
  from vtm_form_ins t --, vum_org t1, vum_org_staff t2, vum_staff t3
 where t.task_id = 'InitialForm'
   /*and t.operator = t3.id
   and t3.id = t2.staff_id
   and t2.org_id = t1.id*/
union
select distinct va.label AS ACTIVITYLABEL,
                '1' as rowno,
                --t2.USERNAME as username,
                --t3.label as orglabel,
                t1.operatorlabel as username,
                t1.operatorglabel as orglabel,
                to_char(t1.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
                to_char(t1.process_suggestion) as suggestion,
                to_char(t1.id) as forminstid,
                t1.document as document,
                t1.bom_inst_snbr,
                t1.task_id
  from vtm_form_ins     t1,
       pmr_process_node va,
       vtm_task         vt,
       vtm_activity_ins vai --,
       /*vum_org          t3,
       vum_org_staff    vos,
       vum_staff        t2*/
 where t1.task_id != 'InitialForm'
   and vai.nodeid = va.id(+)
   and t1.task_id = vt.taskid
   and vt.ainsid = vai.instanceid
   /*and vt.resourceid = vos.staff_id
   and vos.org_id = t3.id
   and vt.resourceid = t2.id*/
union
select t5.step AS ACTIVITYLABEL,
       '' as rowno,
       t5.Operatorlabel as username,
       t5.Deptlabel as orglabel,
       to_char(t5.opertime, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t5.content) as suggestion,
       null as forminstid,
       null as document,
       t5.bominstid as bom_inst_snbr,
       ' ' as task_id
  from vtm_urgent t5
union
select '挂起' as ACTIVITYLABEL,
       '' as rowno,
       --t8.username,
       --t7.label,
       t6.operatorlabel as username,
       t6.operatorglabel as orglabel,
       to_char(t6.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t6.process_suggestion) as suggestion,
       null as forminstid,
       null as document,
       t6.bom_inst_snbr,
       t6.task_id
  from vtm_form_ins t6 --, vum_org t7, vum_staff t8, vum_org_staff t9
 where t6.task_id like 'Suspend%'
   /*and t8.id = t6.operator
   and t7.id = t9.org_id
   and t8.id = t9.staff_id*/
union
select '任务撤回' as ACTIVITYLABEL,
       '' as rowno,
       --t81.username,
       --t71.label,
       t61.operatorlabel as username,
       t61.operatorglabel as orglabel,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion) as suggestion,
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins t61 --, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Withdraw%'
   /*and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id*/
union
select '任务回退' as ACTIVITYLABEL,
       '' as rowno,
       --t81.username,
       --t71.label,
       t61.operatorlabel as username,
       t61.operatorglabel as orglabel,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion) as suggestion,
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins t61 --, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Retrovesion%'
   /*and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id*/
 --order by ttime desc
union
select t.operation_name as ACTIVITYLABEL,
       '' as rowno,
       t.operatorlabel as username,
       t.operatorglabel as orglabel,
       to_char(t.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       t.content as suggestion,
       null as forminstid,
       null as document,
       t.bom_inst_snbr,
       t.task_id
  from vtm_operation_his t
/

prompt
prompt Creating view TASKHISTORYFORHANDLER_VIEW_629
prompt ============================================
prompt
create or replace view taskhistoryforhandler_view_629 as
select '发起任务' as ACTIVITYLABEL,
       '1' as rowno,
       t3.username,
       t1.label as orglabel,
       to_char(t.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t.process_suggestion) as suggestion,
       to_char(t.id) as forminstid,
       t.document as document,
       t.bom_inst_snbr,
       t.task_id
  from vtm_form_ins t, vum_org t1, vum_org_staff t2, vum_staff t3
 where t.task_id = 'InitialForm'
   and t.operator = t3.id
   and t3.id = t2.staff_id
   and t2.org_id = t1.id
union
select distinct va.label AS ACTIVITYLABEL,
                '1' as rowno,
                t2.USERNAME as username,
                t3.label as orglabel,
                to_char(t1.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
                to_char(t1.process_suggestion) as suggestion,
                to_char(t1.id) as forminstid,
                t1.document as document,
                t1.bom_inst_snbr,
                t1.task_id
  from vtm_form_ins     t1,
       pmr_process_node va,
       vtm_task         vt,
       vtm_activity_ins vai,
       vum_org          t3,
       vum_org_staff    vos,
       vum_staff        t2
 where t1.task_id != 'InitialForm'
   and vai.nodeid = va.id(+)
   and t1.task_id = vt.taskid
   and vt.ainsid = vai.instanceid
   and vt.resourceid = vos.staff_id
   and vos.org_id = t3.id
   and vt.resourceid = t2.id
union
select t5.step AS ACTIVITYLABEL,
       '' as rowno,
       t5.Operatorlabel,
       t5.Deptlabel,
       to_char(t5.opertime, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t5.content),
       null as forminstid,
       null as document,
       t5.bominstid as bom_inst_snbr,
       ' ' as task_id
  from vtm_urgent t5
union
select '挂起' as ACTIVITYLABEL,
       '' as rowno,
       t8.username,
       t7.label,
       to_char(t6.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t6.process_suggestion),
       null as forminstid,
       null as document,
       t6.bom_inst_snbr,
       t6.task_id
  from vtm_form_ins t6, vum_org t7, vum_staff t8, vum_org_staff t9
 where t6.task_id like 'Suspend%'
   and t8.id = t6.operator
   and t7.id = t9.org_id
   and t8.id = t9.staff_id
union
select '任务撤回' as ACTIVITYLABEL,
       '' as rowno,
       t81.username,
       t71.label,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion),
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins t61, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Withdraw%'
   and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id
union
select '任务回退' as ACTIVITYLABEL,
       '' as rowno,
       t81.username,
       t71.label,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion),
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins t61, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Retrovesion%'
   and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id
 --order by ttime desc
/

prompt
prompt Creating view TASKHISTORYFORHANDLER_VIEW_BAK
prompt ============================================
prompt
create or replace view taskhistoryforhandler_view_bak as
select '发起任务' as ACTIVITYLABEL,
       '1' as rowno,
       t3.username,
       t1.label as orglabel,
       to_char(t.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t.process_suggestion) as suggestion,
       to_char(t.id) as forminstid,
       t.document as document,
       t.bom_inst_snbr,
       t.task_id
  from vtm_form_ins t, vum_org t1, vum_org_staff t2, vum_staff t3
 where t.task_id = 'InitialForm'
   and t.operator = t3.id
   and t3.id = t2.staff_id
   and t2.org_id = t1.id
union
select distinct va.label AS ACTIVITYLABEL,
                '1' as rowno,
                t2.USERNAME as username,
                t3.label as orglabel,
                to_char(t1.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
                to_char(t1.process_suggestion) as suggestion,
                to_char(t1.id) as forminstid,
                t1.document as document,
                t1.bom_inst_snbr,
                t1.task_id
  from vtm_form_ins     t1,
       pmr_process_node va,
       vtm_task         vt,
       vtm_activity_ins vai,
       vum_org          t3,
       vum_org_staff    vos,
       vum_staff        t2
 where t1.task_id != 'InitialForm'
   and vai.nodeid = va.id(+)
   and t1.task_id = vt.taskid
   and vt.ainsid = vai.instanceid
   and vt.resourceid = vos.staff_id
   and vos.org_id = t3.id
   and vt.resourceid = t2.id
union
select t5.step AS ACTIVITYLABEL,
       '' as rowno,
       t5.Operatorlabel,
       t5.Deptlabel,
       to_char(t5.opertime, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t5.content),
       null as forminstid,
       null as document,
       t5.bominstid as bom_inst_snbr,
       ' ' as task_id
  from vtm_urgent t5
union
select '挂起' as ACTIVITYLABEL,
       '' as rowno,
       t8.username,
       t7.label,
       to_char(t6.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t6.process_suggestion),
       null as forminstid,
       null as document,
       t6.bom_inst_snbr,
       t6.task_id
  from vtm_form_ins t6, vum_org t7, vum_staff t8, vum_org_staff t9
 where t6.task_id like 'Suspend%'
   and t8.id = t6.operator
   and t7.id = t9.org_id
   and t8.id = t9.staff_id
union
select '任务撤回' as ACTIVITYLABEL,
       '' as rowno,
       t81.username,
       t71.label,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion),
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins t61, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Withdraw%'
   and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id
union
select '任务回退' as ACTIVITYLABEL,
       '' as rowno,
       t81.username,
       t71.label,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion),
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins t61, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Retrovesion%'
   and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id
 --order by ttime desc
/

prompt
prompt Creating view TASKHISTORYFORVIEWER_VIEW
prompt =======================================
prompt
create or replace view taskhistoryforviewer_view as
select '发起任务' as ACTIVITYLABEL,
       '1' as rowno,
       --t3.username,
       --t1.label as orglabel,
       t.operatorlabel as username,
       t.operatorglabel as orglabel,
       to_char(t.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t.process_suggestion) as suggestion,
       to_char(t.id) as forminstid,
       t.document as document,
       t.bom_inst_snbr,
       t.task_id
  from vtm_form_ins t --, vum_org t1, vum_org_staff t2, vum_staff t3
 where t.task_id = 'InitialForm'
   /*and t.operator = t3.id
   and t3.id = t2.staff_id
   and t2.org_id = t1.id*/
union all
select distinct va.label AS ACTIVITYLABEL,
                '1' as rowno,
                --t2.USERNAME as username,
                --t3.label as orglabel,
                t1.operatorlabel as username,
                t1.operatorglabel as orglabel,
                to_char(t1.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
                to_char(t1.process_suggestion) as suggestion,
                to_char(t1.id) as forminstid,
                t1.document as document,
                t1.bom_inst_snbr,
                t1.task_id
  from vtm_form_ins     t1,
       pmr_process_node va,
       vtm_task         vt,
       vtm_activity_ins vai --,
       /*vum_org          t3,
       vum_org_staff    vos,
       vum_staff        t2*/
 where t1.task_id != 'InitialForm'
   and vai.nodeid = va.id(+)
   and t1.task_id = vt.taskid
   and vt.ainsid = vai.instanceid
   /*and vt.resourceid = vos.staff_id
   and vos.org_id = t3.id
   and vt.resourceid = t2.id*/
union all
   select ppn.label AS ACTIVITYLABEL,
       '1' as rowno,
       '' as username,
       --vog.label as orglabel,
       vta.departmentlabel as orglabel,
       '' as ttime,
       '' as suggestion,
       '' as forminstid,
       '' as document,
       vta.bom_inst_snbr,
       'qilinsoft' as task_id
  from pmr_process_node ppn,
       (select distinct (vt.departmentlabel),
                        --vt.taskid,
                        vai.nodeid,
                        vai.bominsid as bom_inst_snbr
          from vtm_task vt, vtm_activity_ins vai
         where vt.ainsid = vai.instanceid
           and (vt.status = 3001 or vt.status = 3002 or vt.status = 3003)) vta
 where vta.nodeid = ppn.id(+)
union all
select t5.step AS ACTIVITYLABEL,
       '' as rowno,
       t5.Operatorlabel as username,
       t5.Deptlabel as orglabel,
       to_char(t5.opertime, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t5.content) as suggestion,
       null as forminstid,
       null as document,
       t5.bominstid as bom_inst_snbr,
       ' ' as task_id
  from vtm_urgent t5
union all
select '挂起' as ACTIVITYLABEL,
       '' as rowno,
       --t8.username,
       --t7.label,
       t6.operatorlabel as username,
       t6.operatorglabel as orglabel,
       to_char(t6.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t6.process_suggestion) as suggestion,
       null as forminstid,
       null as document,
       t6.bom_inst_snbr,
       t6.task_id
  from vtm_form_ins t6 --, vum_org t7, vum_staff t8, vum_org_staff t9
 where t6.task_id like 'Suspend%'
   /*and t8.id = t6.operator
   and t7.id = t9.org_id
   and t8.id = t9.staff_id*/
union all
select '任务撤回' as ACTIVITYLABEL,
       '' as rowno,
       --t81.username,
       --t71.label,
       t61.operatorlabel as username,
       t61.operatorglabel as orglabel,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion) as suggestion,
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins t61 --, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Withdraw%'
   /*and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id*/
union all
select '任务回退' as ACTIVITYLABEL,
       '' as rowno,
       --t81.username,
       --t71.label,
       t61.operatorlabel as username,
       t61.operatorglabel as orglabel,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion) as suggestion,
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins t61 --, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Retrovesion%'
   /*and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id*/
 --order by ttime desc
union
select t.operation_name as ACTIVITYLABEL,
       '' as rowno,
       t.operatorlabel as username,
       t.operatorglabel as orglabel,
       to_char(t.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       t.content as suggestion,
       null as forminstid,
       null as document,
       t.bom_inst_snbr,
       t.task_id
  from vtm_operation_his t
/

prompt
prompt Creating view TASKHISTORYFORVIEWER_VIEW_BAK
prompt ===========================================
prompt
create or replace view taskhistoryforviewer_view_bak as
select '发起任务' as ACTIVITYLABEL,
       '1' as rowno,
       t3.username,
       t1.label as orglabel,
       to_char(t.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t.process_suggestion) as suggestion,
       to_char(t.id) as forminstid,
       t.document as document,
       t.bom_inst_snbr,
       t.task_id as taskid
  from vtm_form_ins t, vum_org t1, vum_org_staff t2, vum_staff t3
 where t.task_id = 'InitialForm'
   and t.operator = t3.id
   and t3.id = t2.staff_id
   and t2.org_id = t1.id
union
select distinct va.label AS ACTIVITYLABEL,
                '1' as rowno,
                t2.USERNAME as username,
                t3.label as orglabel,
                to_char(t1.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
                to_char(t1.process_suggestion) as suggestion,
                to_char(t1.id) as forminstid,
                t1.document as document,
                t1.bom_inst_snbr,
                vt.taskid as taskid
  from vtm_form_ins     t1,
       pmr_process_node va,
       vtm_task         vt,
       vtm_activity_ins vai,
       vum_org          t3,
       vum_org_staff    vos,
       vum_staff        t2
 where t1.task_id != 'InitialForm'
   and vai.nodeid = va.id(+)
   and t1.task_id = vt.taskid
   and vt.ainsid = vai.instanceid
   and vt.resourceid = vos.staff_id
   and vos.org_id = t3.id
   and vt.resourceid = t2.id
union
select ppn.label AS ACTIVITYLABEL,
       '1' as rowno,
       '' as username,
       vog.label as orglabel,
       '' as ttime,
       '' as suggestion,
       '' as forminstid,
       '' as document,
       vta.bom_inst_snbr,
       'qilinsoft'
  from pmr_process_node ppn,
       (select distinct (vt.departmentid),
                        vt.taskid,
                        vai.nodeid,
                        vai.bominsid as bom_inst_snbr
          from vtm_task vt, vtm_activity_ins vai
         where vt.ainsid = vai.instanceid
           and (vt.status = 3001 or vt.status = 3002 or vt.status = 3003)) vta,
       vum_org vog
 where vta.nodeid = ppn.id(+)
   and vta.departmentid = vog.id
union
select t5.step AS ACTIVITYLABEL,
       '' as rowno,
       t5.Operatorlabel,
       t5.Deptlabel,
       to_char(t5.opertime, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t5.content),
       null as forminstid,
       null as document,
       t5.bominstid as bom_inst_snbr,
       '' as taskid
  from vtm_urgent t5
union
select '挂起' as ACTIVITYLABEL,
       '' as rowno,
       t8.username,
       t7.label,
       to_char(t6.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t6.process_suggestion),
       null as forminstid,
       null as document,
       t6.bom_inst_snbr,
       t6.task_id as taskid
  from vtm_form_ins t6, vum_org t7, vum_staff t8, vum_org_staff t9
 where t6.task_id like 'Suspend%'
   and t8.id = t6.operator
   and t7.id = t9.org_id
   and t8.id = t9.staff_id
union
select '任务撤回' as ACTIVITYLABEL,
       '' as rowno,
       t81.username,
       t71.label,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion),
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins t61, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Withdraw%'
   and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id
union
select '任务回退' as ACTIVITYLABEL,
       '' as rowno,
       t81.username,
       t71.label,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion),
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins t61, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Retrovesion%'
   and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id
/

prompt
prompt Creating view TASKHISTORYFORVIEWER_VIEW_F
prompt =========================================
prompt
create or replace view taskhistoryforviewer_view_f as
select '发起任务' as ACTIVITYLABEL,
       '1' as rowno,
       --t3.username,
       --t1.label as orglabel,
       t.operatorlabel as username,
       t.operatorglabel as orglabel,
       to_char(t.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t.process_suggestion) as suggestion,
       to_char(t.id) as forminstid,
       t.document as document,
       t.bom_inst_snbr,
       t.task_id
  from vtm_form_ins_f t --, vum_org t1, vum_org_staff t2, vum_staff t3
 where t.task_id = 'InitialForm'
   /*and t.operator = t3.id
   and t3.id = t2.staff_id
   and t2.org_id = t1.id*/
union
select distinct va.label AS ACTIVITYLABEL,
                '1' as rowno,
                --t2.USERNAME as username,
                --t3.label as orglabel,
                t1.operatorlabel as username,
                t1.operatorglabel as orglabel,
                to_char(t1.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
                to_char(t1.process_suggestion) as suggestion,
                to_char(t1.id) as forminstid,
                t1.document as document,
                t1.bom_inst_snbr,
                t1.task_id
  from vtm_form_ins_f     t1,
       pmr_process_node va,
       vtm_task_f        vt,
       vtm_activity_ins_f vai --,
       /*vum_org          t3,
       vum_org_staff    vos,
       vum_staff        t2*/
 where t1.task_id != 'InitialForm'
   and vai.nodeid = va.id(+)
   and t1.task_id = vt.taskid
   and vt.ainsid = vai.instanceid
   /*and vt.resourceid = vos.staff_id
   and vos.org_id = t3.id
   and vt.resourceid = t2.id*/
union
   select ppn.label AS ACTIVITYLABEL,
       '1' as rowno,
       '' as username,
       --vog.label as orglabel,
       vta.departmentlabel as orglabel,
       '' as ttime,
       '' as suggestion,
       '' as forminstid,
       '' as document,
       vta.bom_inst_snbr,
       'qilinsoft' as task_id
  from pmr_process_node ppn,
       (select distinct (vt.departmentlabel),
                        --vt.taskid,
                        vai.nodeid,
                        vai.bominsid as bom_inst_snbr
          from vtm_task_f vt, vtm_activity_ins_f vai
         where vt.ainsid = vai.instanceid
           and (vt.status = 3001 or vt.status = 3002 or vt.status = 3003)) vta
 where vta.nodeid = ppn.id(+)
union
select t5.step AS ACTIVITYLABEL,
       '' as rowno,
       t5.Operatorlabel as username,
       t5.Deptlabel as orglabel,
       to_char(t5.opertime, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t5.content) as suggestion,
       null as forminstid,
       null as document,
       t5.bominstid as bom_inst_snbr,
       ' ' as task_id
  from vtm_urgent_f t5
union
select '挂起' as ACTIVITYLABEL,
       '' as rowno,
       --t8.username,
       --t7.label,
       t6.operatorlabel as username,
       t6.operatorglabel as orglabel,
       to_char(t6.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t6.process_suggestion) as suggestion,
       null as forminstid,
       null as document,
       t6.bom_inst_snbr,
       t6.task_id
  from vtm_form_ins_f t6 --, vum_org t7, vum_staff t8, vum_org_staff t9
 where t6.task_id like 'Suspend%'
   /*and t8.id = t6.operator
   and t7.id = t9.org_id
   and t8.id = t9.staff_id*/
union
select '任务撤回' as ACTIVITYLABEL,
       '' as rowno,
       --t81.username,
       --t71.label,
       t61.operatorlabel as username,
       t61.operatorglabel as orglabel,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion) as suggestion,
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins_f t61 --, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Withdraw%'
   /*and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id*/
union
select '任务回退' as ACTIVITYLABEL,
       '' as rowno,
       --t81.username,
       --t71.label,
       t61.operatorlabel as username,
       t61.operatorglabel as orglabel,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion) as suggestion,
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins_f t61 --, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Retrovesion%'
   /*and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id*/
 --order by ttime desc
/

prompt
prompt Creating view TASKHISTORYFORVIEWER_VIEW_NEW
prompt ===========================================
prompt
create or replace view taskhistoryforviewer_view_new as
select '发起任务' as ACTIVITYLABEL,
       '1' as rowno,
       --t3.username,
       --t1.label as orglabel,
       t.operatorlabel as username,
       t.operatorglabel as orglabel,
       to_char(t.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t.process_suggestion) as suggestion,
       to_char(t.id) as forminstid,
       t.document as document,
       t.bom_inst_snbr,
       t.task_id
  from vtm_form_ins t --, vum_org t1, vum_org_staff t2, vum_staff t3
 where t.task_id = 'InitialForm'
   /*and t.operator = t3.id
   and t3.id = t2.staff_id
   and t2.org_id = t1.id*/
union
select distinct va.label AS ACTIVITYLABEL,
                '1' as rowno,
                --t2.USERNAME as username,
                --t3.label as orglabel,
                t1.operatorlabel as username,
                t1.operatorglabel as orglabel,
                to_char(t1.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
                to_char(t1.process_suggestion) as suggestion,
                to_char(t1.id) as forminstid,
                t1.document as document,
                t1.bom_inst_snbr,
                t1.task_id
  from vtm_form_ins     t1,
       pmr_process_node va,
       vtm_task         vt,
       vtm_activity_ins vai --,
       /*vum_org          t3,
       vum_org_staff    vos,
       vum_staff        t2*/
 where t1.task_id != 'InitialForm'
   and vai.nodeid = va.id(+)
   and t1.task_id = vt.taskid
   and vt.ainsid = vai.instanceid
   /*and vt.resourceid = vos.staff_id
   and vos.org_id = t3.id
   and vt.resourceid = t2.id*/
union
   select ppn.label AS ACTIVITYLABEL,
       '1' as rowno,
       '' as username,
       --vog.label as orglabel,
       vta.departmentlabel as orglabel,
       '' as ttime,
       '' as suggestion,
       '' as forminstid,
       '' as document,
       vta.bom_inst_snbr,
       'qilinsoft' as task_id
  from pmr_process_node ppn,
       (select distinct (vt.departmentlabel),
                        --vt.taskid,
                        vai.nodeid,
                        vai.bominsid as bom_inst_snbr
          from vtm_task vt, vtm_activity_ins vai
         where vt.ainsid = vai.instanceid
           and (vt.status = 3001 or vt.status = 3002 or vt.status = 3003)) vta
 where vta.nodeid = ppn.id(+)
union
select t5.step AS ACTIVITYLABEL,
       '' as rowno,
       t5.Operatorlabel as username,
       t5.Deptlabel as orglabel,
       to_char(t5.opertime, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t5.content) as suggestion,
       null as forminstid,
       null as document,
       t5.bominstid as bom_inst_snbr,
       ' ' as task_id
  from vtm_urgent t5
union
select '挂起' as ACTIVITYLABEL,
       '' as rowno,
       --t8.username,
       --t7.label,
       t6.operatorlabel as username,
       t6.operatorglabel as orglabel,
       to_char(t6.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t6.process_suggestion) as suggestion,
       null as forminstid,
       null as document,
       t6.bom_inst_snbr,
       t6.task_id
  from vtm_form_ins t6 --, vum_org t7, vum_staff t8, vum_org_staff t9
 where t6.task_id like 'Suspend%'
   /*and t8.id = t6.operator
   and t7.id = t9.org_id
   and t8.id = t9.staff_id*/
union
select '任务撤回' as ACTIVITYLABEL,
       '' as rowno,
       --t81.username,
       --t71.label,
       t61.operatorlabel as username,
       t61.operatorglabel as orglabel,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion) as suggestion,
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins t61 --, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Withdraw%'
   /*and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id*/
union
select '任务回退' as ACTIVITYLABEL,
       '' as rowno,
       --t81.username,
       --t71.label,
       t61.operatorlabel as username,
       t61.operatorglabel as orglabel,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion) as suggestion,
       null as forminstid,
       null as document,
       t61.bom_inst_snbr,
       t61.task_id
  from vtm_form_ins t61 --, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.task_id like 'Retrovesion%'
   /*and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id*/
 --order by ttime desc
/

prompt
prompt Creating view VTM_FORM_INS_VIEW
prompt ===============================
prompt
create or replace view vtm_form_ins_view as
select
  ID            ,
  FORM_DEF_ID   ,
  TASK_ID     ,
  BOM_INST_SNBR ,
  OPERATOR       ,
  OPERATE_TIME ,
  REMARK  ,
  INIT_FORM_ID ,
  DOCUMENT    ,
  OPERATORNAME ,
  OPERATORLABEL ,
  OPERATORG  ,
  OPERATORGLABEL,
  OPERATORGNAME
 from vtm_form_ins t
/

prompt
prompt Creating function COUNTAREAORDERCOUNT
prompt =====================================
prompt
CREATE OR REPLACE FUNCTION "COUNTAREAORDERCOUNT" (areaID   in   varchar2,columnPersonArea in varchar2,columnComArea in varchar2)
  return   number
  as
  begin
  if   areaID=columnPersonArea or areaID=columnComArea  then
  return 1;
  else
  return  0;
  end   if;
  end;
/

prompt
prompt Creating function COUNTSCOREORDERCOUNT
prompt ======================================
prompt
CREATE OR REPLACE FUNCTION "COUNTSCOREORDERCOUNT" (typeStr   in   varchar2,columnStr in varchar2)
  return   number
  as
  begin
  if   areaID=columnPersonArea or areaID=columnComArea  then
  return 1;
  else
  return  0;
  end   if;
  end;
/

prompt
prompt Creating function DATETOLONG
prompt ============================
prompt
CREATE OR REPLACE FUNCTION "DATETOLONG" ( myDate in Date )
return number
is
begin
  return (myDate-to_date('1970-01-01:08:00:00','YYYY-MM-DD:HH24:MI:SS'))*86400000;
end;
/

prompt
prompt Creating function EXPIRECACULATE
prompt ================================
prompt
CREATE OR REPLACE FUNCTION "EXPIRECACULATE" (expireColumn in number,stsColumn in number,catType in number,detailType in varchar2,prestatus in number)

  return   number
  as
/*  expire boolean;*/
  begin

/*  ---判断是否超时
  if   expireColumn=4001 then
  expire:=true;
  else
  expire:=false;
  end   if;*/


  ---判断是否是带签收
  if(catType=1 and stsColumn<>3001 and (not(stsColumn=3064 and prestatus=3001))) then
    return 0;
  end if;
  ---判断是否待处理
 if(catType=2 and stsColumn<>3002 and stsColumn<>3065 and  (not(stsColumn=3064 and prestatus=3002))) then
      return 0;
  end if;
  ---判断是否已完成
  if(catType=3 and stsColumn<>3008 and stsColumn<>3005 and stsColumn<>3006 ) then
    return 0;
  end if;

---------------------------超时统计
        if(detailType='C')then
             if(expireColumn=4004) then
               return 1;
             else
               return 0;
             end if;
---------------------------未超时统计
        else
             if(expireColumn=4004) then
               return 0;
             else
               return 1;
             end if;
       end if;

 end ;
/

prompt
prompt Creating function EXTRACTAREA
prompt =============================
prompt
CREATE OR REPLACE FUNCTION "EXTRACTAREA" (personArea   in   varchar2,companyArea in varchar2)
  return   varchar2
  as
  begin
  if   personArea is null then
  return companyArea ;
  else
  return  personArea;
  end if;
  end;
/

prompt
prompt Creating function EXTRACTNAME
prompt =============================
prompt
CREATE OR REPLACE FUNCTION "EXTRACTNAME" (orgID in varchar2)
  return   varchar2
  as
  begin
  if   length(orgID)=7 then
  return '  ';
  elsif length(orgID)=10 then
    return '    ';
  elsif length(orgID)=12 then
    return '      ';
  elsif length(orgID)=14 then
    return '        ';
  elsif length(orgID)=16 then
    return '          ';
  elsif length(orgID)=18 then
    return '            ';
  else
    return '';
  end if;
  end;
/

prompt
prompt Creating function GETLNNODE
prompt ===========================
prompt
CREATE OR REPLACE FUNCTION "GETLNNODE" (currentNode in varchar2,
                                     nLevel      in number) return varchar2 is
  v_node  varchar2(100);
  v_level number;
begin
  v_node := '';
  select level
    into v_level
    from vum_org t
   where t.id = currentNode
  Connect by Prior t.id = t.pid
   Start With t.pid is null;
  if (v_level >= nLevel) then
    --select distinct t.id into v_Node  from vum_org t where level = nLevel Start With t.pid is null Connect by t.id = Prior t.pid ;
    select distinct t.id
      into v_Node
      from vum_org t
     where level = nLevel
       and t.id in (select t.id
                      from vum_org t
                     Start With t.id = currentNode
                    Connect by t.id = Prior t.pid)
     Start With t.pid is null
    Connect by Prior t.id = t.pid;
  end if;
  return v_node;
end;
/

prompt
prompt Creating function GETNODELEVEL
prompt ==============================
prompt
CREATE OR REPLACE FUNCTION "GETNODELEVEL" ( currentNode in varchar2 )
return number
is
v_level number;
begin
 select level into v_level from vum_org t where t.id=currentNode Connect by Prior t.id = t.pid Start With t.pid is null ;
 return v_level;
end;
/

prompt
prompt Creating function GETROOTNODE
prompt =============================
prompt
CREATE OR REPLACE FUNCTION "GETROOTNODE" ( currentNode in varchar2 )
return varchar2
is
v_rootNode varchar2(100);
begin
 select distinct FIRST_VALUE(t.id) OVER (ORDER BY LEVEL DESC) into v_rootNode  from vum_org t Start With t.id = currentNode Connect by t.id = Prior t.pid;
 return v_rootNode;
end;
/

prompt
prompt Creating function IDATTRIBUTEOFDOCELEMENTS
prompt ==========================================
prompt
CREATE OR REPLACE FUNCTION idAttributeOfDocElements(xmldoc in CLOB)
return varchar2
is
theXmlDoc xmldom.DOMDocument;
n1          xmldom.DOMNodeList;
len1        number(10);
len2        number(10);
v1          xmldom.DOMNode;
n2          xmldom.DOMNodeList;
attn        xmldom.DOMNode;
vretuval     varchar2(1000):='';
XMLParseError EXCEPTION;
    PRAGMA EXCEPTION_INIT( XMLParseError, -20100 );
    -- Local parse function keeps code cleaner. Return NULL if parse fails
    FUNCTION parse(xml CLOB) RETURN xmldom.DOMDocument IS
      retDoc xmldom.DOMDocument;
      parser xmlparser.Parser;
    BEGIN
      parser := xmlparser.newParser;
      xmlparser.ParseCLOB(parser,xml);
      retDoc := xmlparser.getDocument(parser);
      xmlparser.freeParser(parser);
      RETURN retdoc;
    EXCEPTION
       --If the parse fails, we''ll jump here.
      WHEN XMLParseError THEN
        xmlparser.freeParser(parser);
        dbms_output.put_line('errors');
       RETURN retdoc;
    END;

BEGIN
    -- Parse the xml document passed in the CLOB argument
    theXmlDoc := parse(xmldoc);
    -- If the XML document returned is not NULL...
    IF NOT xmldom.IsNull(theXmlDoc) THEN
      -- Get the outermost enclosing element (aka "Document Element")
      --theDocElt := xmldom.getDocumentElement(theXmlDoc);
      -- Get the value of the document element's "id" attribute

      n1:= xmldom.getElementsByTagName(theXmlDoc, 'HB');
      len1     := xmldom.getLength(n1);
      dbms_output.put_line(len1);
      --获得<HB></HB>节点的数量
    for i in 0 .. len1 - 1 loop
    --获得节点
      v1     := xmldom.item(n1, i);
      --获得该节点下所有的子节点
      n2     := xmldom.getChildNodes(v1);
      --获得子节点的数量
      len2 := xmldom.getLength(n2);
           for j in 0..len2-1 loop
        --dbms_output.put_line(len2);
               attn:=xmldom.item(n2,j);
               dbms_output.put_line(xmldom.getNodeValue(xmldom.getFirstChild(attn)));
           end loop;
end loop;
      -- Free the memory used by the parsed XML document
      xmldom.freeDocument(theXmlDoc);

      RETURN vretuval;
    ELSE
      RETURN vretuval;
    END IF;
END;
/

prompt
prompt Creating function ISTODAYVALID
prompt ==============================
prompt
CREATE OR REPLACE FUNCTION "ISTODAYVALID" ( startDate in Date, endDate in Date, status in integer )
return varchar2
is
begin
  if ( ( sysdate >= startDate ) and ( sysdate <= endDate) and (status = 1))  then
  return '生效';
  else
  return '';
  end if;
end;
/

prompt
prompt Creating function LONGTODATE
prompt ============================
prompt
CREATE OR REPLACE FUNCTION "LONGTODATE" (jdate in number)
return date
is
begin
if (jdate >0) then
     return to_date('1970-01-01:08:00:00','YYYY-MM-DD:HH24:MI:SS') + floor(jdate/1000)/86400;
     else
     return '';
     end if;
end;
/

prompt
prompt Creating function PARSERXML
prompt ===========================
prompt
CREATE OR REPLACE FUNCTION parserxml (xmldoc in CLOB,xpath varchar2)
   return varchar2
 is
	new_parser   xmlparser.Parser;
	get_doc      xmldom.DOMDocument;
	nodelist     xmldom.DOMNodeList;
	nle          number;
	--e xmldom.DOMElement;
	n            xmldom.DOMNode;
  XMLParseError EXCEPTION;
  txpath        varchar2(1000):='/';
  PRAGMA EXCEPTION_INIT( XMLParseError, -20100 );
      FUNCTION parse(xml CLOB) RETURN xmldom.DOMDocument IS
      retDoc xmldom.DOMDocument;
      parser xmlparser.Parser;
    	BEGIN
      	parser := xmlparser.newParser;
      	xmlparser.ParseCLOB(parser,xml);
      	retDoc := xmlparser.getDocument(parser);
      	xmlparser.freeParser(parser);
      	RETURN retdoc;
    		EXCEPTION
       	--If the parse fails, we''ll jump here.
      	WHEN XMLParseError THEN
        	xmlparser.freeParser(parser);
        	dbms_output.put_line('errors');
       	RETURN retdoc;
    	END;
	begin
    --new_parser:=parse(xmldoc);
		--new_parser:=xmlparser.newParser;--得到XML解析器
		--xmlparser.setValidationMode(new_parser,false);--是否让解析器有验证功能（是否是一种DDL标准）
		--xmlparser.setBaseDir(new_parser,dir);--在XML解析器中设定被解析文件的路径
		--xmlparser.parse(new_parser,dir||xml_name);--解析文件根据绝对路径
		get_doc:=parse(xmldoc);--在XML解析器中得到解析后的文档
		xmlparser.freeParser(new_parser);--释放解析器
		nodelist:=xmldom.getElementsByTagName(get_doc,'*');--得到所有的元素
		nle:=xmldom.getLength(nodelist);--得到元素的个数
		for i in 0..nle-1 loop
 			n:=xmldom.item(nodelist,i);--给元素打标(即得到每一个节点)
 			--e:=xmldom.makeElement(n);--把节点变成一个元素来处理(可以对ATTRIBUTER来操作)
      txpath:=txpath||xmldom.getNodeName(n)||'/';
 			dbms_output.put_line(txpath||':'||xmldom.getNodeValue(xmldom.getFirstChild(n)));
		end loop;
    RETURN '';
end parserxml;
/

prompt
prompt Creating function REMAKECARD
prompt ============================
prompt
CREATE OR REPLACE FUNCTION "REMAKECARD" ( cardNo in varchar2, ifbk in number, ifcz in number ,ifjj in number, ifgs in number )
return number
is
begin
  if ((substr(cardNo,1,6) = '622655') or (substr(cardNo,1,6) = '481699')or(substr(cardNo,1,6) = '425862'))  then
  return 0;
  else
  return (1-ifbk)*0+(1-ifcz)*20+(1-ifjj)*20+(1-ifgs)*50;
  end if;
end;
/

prompt
prompt Creating function SPLIT_STR
prompt ===========================
prompt
create or replace function split_str(var_str   in varchar2,
                                       var_split in varchar2)
/****************************************************
  注意 先执行下面语句 创建类型
  create or replace type t_ret_table is table of varchar2(1000)

  ** 函数名称：split_str

  ** 参    数：【名称】         【类型 】      【说明】
  **           var_str          varchar2       要拆分的字符串
  **           var_split        varchar2       字符串分隔符
  ** 返 回 值：Result           t_ret_table    拆分后数组集合
  ** 摘    要：拆分字符串

  调用 举例：
  select * from table(split_str('2008-10-21','-'))
  ****************************************************/
  return      t_ret_table is
  var_out     t_ret_table;
  var_tmp     varchar2(4000);
  var_element varchar2(4000);
begin
  var_tmp := var_str;
  var_out := t_ret_table();
  --如果存在匹配的分割符
  while instr(var_tmp, var_split) > 0 loop
    var_element := substr(var_tmp, 1, instr(var_tmp, var_split) - 1);
    var_tmp     := substr(var_tmp,
                          instr(var_tmp, var_split) + length(var_split),
                          length(var_tmp));
    --var_out.extend(1);
    var_out.extend;
    var_out(var_out.count) := var_element;
  end loop;

  --var_out.extend(1);
  var_out.extend;
  var_out(var_out.count) := var_tmp;
  return var_out;
end split_str;
/

prompt
prompt Creating function SQUIRREL_GET_ERROR_OFFSET
prompt ===========================================
prompt
create or replace function SQUIRREL_GET_ERROR_OFFSET (query IN varchar2) return number authid current_user is      l_theCursor     integer default dbms_sql.open_cursor;      l_status        integer; begin          begin          dbms_sql.parse(  l_theCursor, query, dbms_sql.native );          exception                  when others then l_status := dbms_sql.last_error_position;          end;          dbms_sql.close_cursor( l_theCursor );          return l_status; end;
/

prompt
prompt Creating function TIMETODAYHOURMIN
prompt ==================================
prompt
CREATE OR REPLACE FUNCTION "TIMETODAYHOURMIN" (time in number)
return varchar2
as
mini number;
dayy number;
hour number;
begin
  mini :=  trunc(time/60)  - 60*( trunc(time/(60*60)));
  hour :=  trunc(time/(60*60))- 24*(trunc(time/(60*60*24)));
  dayy := trunc(((time/60)/60)/24);
  return dayy||'天'||hour||'小时'||mini||'分';
end TIMETODAYHOURMIN;
/

prompt
prompt Creating function UNRECEIVEEXPIRECACULATE
prompt =========================================
prompt
CREATE OR REPLACE FUNCTION "UNRECEIVEEXPIRECACULATE" (expireColumn in number,stsColumn in number,catType in number,detailType in number)
  expire boolean;
  return   number
  as
  begin

  ---判断是否超时
  if   expireColumn=4001 then
  expire:=true;
  else
  expire:=false;
  end   if;

  ---判断是否是带签收
  if(catType=1 and sts<>3001) then
  retrun 0;
  else   if(catType=2 and sts<>3002) then
  retrun 0;
  else if(catType=3 and sts<>3008) then
  retrun 0;
  else
    begin
      ---超时统计
      if(queryType=1)then{
       if(expire) then
       return 1；
       else
       return 0;
       end if;
      }
      ---未超时统计
      else{
       if(expire) then
       return 0；
       else
       return 1;
       end if;
      }
     end;
  end if;
  end;
/

prompt
prompt Creating function complementCard
prompt ================================
prompt
create or replace function "complementCard" (cardNo in VARCHAR2(100), ifbk in VARCHAR2(2), ifjj in VARCHAR2(2),ifcz in VARCHAR2(2),ifgs in VARCHAR2(2)) return
  Result number;
begin

  return(Result);
end complementCard;
/

prompt
prompt Creating procedure BACKUP1ORDER_BDS
prompt ===================================
prompt
create or replace procedure backup1order_bds(orderId in varchar2, postfix in varchar2) is
       table_name varchar2(64);
       his_table_name varchar2(64);
       relate_table_name varchar2(64);
       second_r_table_name varchar2(64);
       select_data_sql varchar2(1024);
       insert_data_sql varchar2(1024);
       delete_data_sql varchar2(1024);
       postlink varchar2(255);
       type arrayList is table of varchar2(64);
       table_names arrayList;
begin
     postlink:='';
     --vega_boheader table
     table_name:='vega_boheader';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t where t.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     --insert history table data
     --global variable relate_table_name


     -- delete orginal table data
     /*
     table_names:=arrayList('FSWF_CC_CSR_BOM01','FSWF_CC_CSR_BOM02','VEGA_BOHEADER','FSWF_CC_CSR_BOM01_2','FSWF_CC_CSR_BOM02_2','FSWF-CC-CSR-VOC0001','FSWF-CC-CSR-VOC0002','FSWF-CC-CSR-VOC0003','FSWF-CC-CSR-VOC0005','FSWF-CC-CSR-VOC0004','FSWF-CC-CSR-VOC0006','FSWF-CC-CSR-VOC0007','FSWF-CC-CSR-VOC0008','FSWF-CC-CSR-VOC0009','FSWF-CC-CSR_VOC1000','FSWF-CC-CSR-VOC0101','FSWF-CC-CSR-VOC0102','FSWF-CC-CSR-VOC0103','FSWF-CC-CSR-VOC0104','FSWF-CC-CSR-VOC0105','FSWF-CC-CSR-VOC0106','FSWF-CC-CSR-VOC0107','FSWF-CC-CSR-VOC0108','FSWF-CC-CSR-VOC0109','FSWF-CC-CSR-VOC0110','FSWF-CC-CSR-VOC0201','FSWF-CC-CSR-VOC0202','FSWF-CC-CSR-VOC0203','FSWF-CC-CSR-VOC0204','FSWF-CC-CSR-VOC0205','FSWF-CC-CSR-VOC0206','FSWF-CC-CSR-VOC0207','FSWF-CC-CSR-VOC0208','FSWF-CC-CSR-VOC0209','FSWF-CC-CSR-VOC0210','FSWF-CC-CSR-VOC0211','FSWF-CC-CSR-VOC0301','FSWF-CC-CSR_0401','FSWF-CC-CSR_VOC0111','FSWF-CC-CSR_VOC0112','FSWF-CC-CSR_VOC0113','FSWF-CC-CSR_VOC0114','FSWF-CC-CSR_VOC0115','FSWF-CC-CSR_VOC0116','FSWF-CC-CSR_VOC0212','FSWF-CC-CSR_VOC0213','FSWF-CC-CSR_VOC0214','FSWF-CC-CSR_VOC0215','FSWF-CC-CSR_VOC0216');
     for i in 1 .. table_names.count loop
         table_name:=table_names(i);
         his_table_name:='his_'||table_name||'_'||postfix;
         delete_data_sql:='delete from "'||upper(table_name)||'" t where exists (select * from "'||upper(his_table_name)||'"'||postlink||' h where h.e_id=t.e_id)';
         execute immediate delete_data_sql;
     end loop;
     */
end backup1order_bds;
/

prompt
prompt Creating procedure BACKUP1ORDER_BDS_F
prompt =====================================
prompt
create or replace procedure backup1order_bds_f(
orderId in varchar2,   postfix in varchar2)
is
table_name varchar2(64);
his_table_name varchar2(64);
strs varchar2(4096);
stri varchar2(4096);
strd varchar2(4096);
begin

	table_name:='VEGA_BOHEADER';
	his_table_name:='his_'||table_name||'_'||postfix;
  strs:='  select t.* from VEGA_BOHEADER_f t where t.e_id=:1';
  stri:='insert into '||his_table_name||strs;
  strd:='delete VEGA_BOHEADER_f d where  d.e_id=:1';
  execute immediate stri using orderId;
  execute immediate strd using orderId;
end;
/

prompt
prompt Creating procedure BACKUP1ORDER_VPE
prompt ===================================
prompt
create or replace procedure backup1order_vpe(orderId in varchar2, postfix in varchar2) is
tableName varchar2(64);
hisTable varchar2(64);
strs varchar2(4096);
stri varchar2(4096);
strd varchar2(4096);
linkName varchar2(64);
orderIdstr varchar2(100);
begin
linkName := '';
orderIdstr := ''''||orderId||'''';
--nodeInstance 11 table
tableName := 'bw_node_instance_error';
hisTable := 'his_bw_node_inst_error_'||postfix||linkName;
strs:= ' (select bnie.* from '||tableName||' bnie, bw_node_instance bni, bw_process_instance bpi
where bnie.node_inst_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs ||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bnie.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance_activity';
hisTable := 'his_bw_node_inst_activity_'||postfix||linkName;
strs:= ' (select bnia.* from '||tableName||' bnia, bw_node_instance bni, bw_process_instance bpi
where bnia.node_instance_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs ||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bnia.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance$nielist';
hisTable := 'his_bw_node_inst$nie_'||postfix||linkName;
strs:= ' (select bni_nie.* from '||tableName||' bni_nie, bw_node_instance bni, bw_process_instance bpi
where bni_nie.k$$vtoid=bni.vtoid and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs ||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bni_nie.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance_log';
hisTable := 'his_bw_node_inst_log_'||postfix||linkName;
strs:= ' (select bnil.* from '||tableName||' bnil, bw_node_instance bni, bw_process_instance bpi
where bnil.node_instance_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bnil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance$nillist';
hisTable := 'his_bw_node_inst$nil_'||postfix||linkName;
strs:= ' (select bni_nil.* from '||tableName||' bni_nil, bw_node_instance bni, bw_process_instance bpi
where bni_nil.k$$vtoid=bni.vtoid and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bni_nil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_variable_instance';
hisTable := 'his_bw_node_variable_inst_'||postfix||linkName;
strs:= ' ( select bnvi.* from '||tableName||' bnvi, bw_node_instance bni, bw_process_instance bpi
where bnvi.node_instance_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bnvi.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance$nvilist';
hisTable := 'his_bw_node_inst$nvi_'||postfix||linkName;
strs:= ' ( select bni_nvi.* from '||tableName||' bni_nvi, bw_node_instance bni, bw_process_instance bpi
where bni_nvi.k$$vtoid=bni.vtoid and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from bw_node_instance$nvilist t where exists (select 1 from bw_process_instance  bpi
  					where t.K$$vtoid = bpi.vtoid and bpi.order_id = :1)';
execute IMMEDIATE stri;
execute IMMEDIATE strd using orderId;

tableName := 'bw_node_instance';
hisTable := 'his_bw_node_inst_'||postfix||linkName;
strs:= ' ( select bni.* from  '||tableName||' bni, bw_process_instance bpi
where bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bni.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

--transition_instance 3 table
tableName := 'bw_transition_instance_log';
hisTable := 'his_bw_trans_inst_log_'||postfix||linkName;
strs:= ' ( select btil.* from '||tableName||' btil, bw_transition_instance bti, bw_process_instance bpi
where btil.transition_instance_id=bti.id and bti.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=btil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_transition_instance$tillist';
hisTable := 'his_bw_trans_inst$til_'||postfix||linkName;
strs:= ' ( select bti_til.* from '||tableName||' bti_til, bw_transition_instance bti, bw_process_instance bpi
where bti_til.K$$vtoid=bti.vtoid and bti.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from bw_transition_instance$tillist  t where exists
           (select bti.vtoid    from bw_transition_instance         bti,bw_process_instance            bpi
                 where t.K$$vtoid = bti.vtoid   and bti.process_instance_id = bpi.id
                      and bpi.order_id = :1 and t.K$$vtoid = bti.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd using orderId;

tableName := 'bw_transition_instance';
hisTable := 'his_bw_trans_inst_'||postfix||linkName;
strs:= ' (select bti.* from '||tableName||' bti, bw_process_instance bpi
where bti.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bti.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;


--processInstance 8 tables
tableName := 'bw_process_instance_error';
hisTable := 'his_bw_process_inst_error_'||postfix||linkName;
strs:= ' (select bpie.* from '||tableName||' bpie, bw_process_instance bpi where bpie.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpie.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance_data';
hisTable := 'his_bw_process_inst_data_'||postfix||linkName;
strs:= ' (select bpid.* from '||tableName||' bpid where bpid.bom_inst_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpid.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance$pielist';
hisTable := 'his_bw_process_inst$pie_'||postfix||linkName;
strs:= ' ( select bpi_pie.* from '||tableName||' bpi_pie, bw_process_instance bpi where bpi_pie.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from bw_process_instance$pielist t where exists (select 1 from bw_process_instance  bpi
  					where t.K$$vtoid = bpi.vtoid and bpi.order_id = :1)';
execute IMMEDIATE stri;
execute IMMEDIATE strd using orderId;

tableName := 'bw_process_instance_log';
hisTable := 'his_bw_process_inst_log_'||postfix||linkName;
strs:= ' ( select bpil.* from '||tableName||' bpil, bw_process_instance bpi where bpil.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance$pillist';
hisTable := 'his_bw_process_inst$pil_'||postfix||linkName;
strs:= ' ( select bpi_pil.* from '||tableName||' bpi_pil, bw_process_instance bpi where bpi_pil.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete bw_process_instance$pillist t where exists (select 1 from bw_process_instance  bpi
  					where t.K$$vtoid = bpi.vtoid and bpi.order_id = :1)';
execute IMMEDIATE stri;
execute IMMEDIATE strd using orderId;

tableName := 'bw_process_instance$nilist';
hisTable := 'his_bw_process_inst$ni_'||postfix||linkName;
strs:= ' (select bpi_nil.* from '||tableName||' bpi_nil, bw_process_instance bpi where bpi_nil.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from bw_process_instance$nilist t where exists (select 1 from bw_process_instance  bpi
            where t.K$$vtoid = bpi.vtoid and bpi.order_id = :1)';
execute IMMEDIATE stri;
execute IMMEDIATE strd using orderId;

tableName := 'bw_process_instance$tilist';
hisTable := 'his_bw_process_inst$ti_'||postfix||linkName;
strs:= ' (select bpi_til.* from '||tableName||' bpi_til, bw_process_instance bpi where bpi_til.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from bw_process_instance$tilist t where exists (select 1 from bw_process_instance  bpi
            where t.K$$vtoid = bpi.vtoid and bpi.order_id = :1)';
execute IMMEDIATE stri;
execute IMMEDIATE strd using orderId;

tableName := 'bw_process_instance';
hisTable := 'his_bw_process_inst_'||postfix||linkName;
strs:= ' (select bpi.* from '||tableName||' bpi where bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpi.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

--engine 3 tables
tableName := 'bw_engine_error';
hisTable := 'his_bw_engine_error_'||postfix||linkName;
strs:= ' ( select bee.* from '||tableName||' bee where bee.orderserialno='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bee.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_bpo$eelist';
hisTable := 'his_bw_process_bpo$ee_'||postfix||linkName;
strs:= ' (select bpo_bee.* from '||tableName||' bpo_bee  where bpo_bee.k$$vtoid='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpo_bee.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_bpo';
hisTable := 'his_bw_process_bpo_'||postfix||linkName;
strs:= ' (select bpo.* from '||tableName||' bpo where bpo.vtoid='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpo.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

end;
/

prompt
prompt Creating procedure BACKUP1ORDER_VPE1
prompt ====================================
prompt
create or replace procedure backup1order_vpe1(orderId in varchar2, postfix in varchar2) is
tableName varchar2(64);
hisTable varchar2(64);
strs varchar2(4096);
stri varchar2(4096);
strd varchar2(4096);
linkName varchar2(64);
orderIdstr varchar2(100);
begin
linkName := '';
orderIdstr := ''''||orderId||'''';
--nodeInstance 11 table
tableName := 'bw_node_instance_error';
hisTable := 'his_bw_node_inst_error_'||postfix||linkName;
strs:= ' (select bnie.* from '||tableName||' bnie, bw_node_instance bni, bw_process_instance bpi
where bnie.node_inst_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs ||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bnie.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance_activity';
hisTable := 'his_bw_node_inst_activity_'||postfix||linkName;
strs:= ' (select bnia.* from '||tableName||' bnia, bw_node_instance bni, bw_process_instance bpi
where bnia.node_instance_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs ||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bnia.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance$nielist';
hisTable := 'his_bw_node_inst$nie_'||postfix||linkName;
strs:= ' (select bni_nie.* from '||tableName||' bni_nie, bw_node_instance bni, bw_process_instance bpi
where bni_nie.k$$vtoid=bni.vtoid and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs ||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bni_nie.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance_log';
hisTable := 'his_bw_node_inst_log_'||postfix||linkName;
strs:= ' (select bnil.* from '||tableName||' bnil, bw_node_instance bni, bw_process_instance bpi
where bnil.node_instance_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bnil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance$nillist';
hisTable := 'his_bw_node_inst$nil_'||postfix||linkName;
strs:= ' (select bni_nil.* from '||tableName||' bni_nil, bw_node_instance bni, bw_process_instance bpi
where bni_nil.k$$vtoid=bni.vtoid and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bni_nil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_variable_instance';
hisTable := 'his_bw_node_variable_inst_'||postfix||linkName;
strs:= ' ( select bnvi.* from '||tableName||' bnvi, bw_node_instance bni, bw_process_instance bpi
where bnvi.node_instance_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bnvi.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance$nvilist';
hisTable := 'his_bw_node_inst$nvi_'||postfix||linkName;
strs:= ' ( select bni_nvi.* from '||tableName||' bni_nvi, bw_node_instance bni, bw_process_instance bpi
where bni_nvi.k$$vtoid=bni.vtoid and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from bw_node_instance$nvilist t where exists (select 1 from bw_process_instance  bpi
  					where t.K$$vtoid = bpi.vtoid and bpi.order_id = :1)';
execute IMMEDIATE stri;
execute IMMEDIATE strd using orderId;

tableName := 'bw_node_instance';
hisTable := 'his_bw_node_inst_'||postfix||linkName;
strs:= ' ( select bni.* from  '||tableName||' bni, bw_process_instance bpi
where bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bni.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

--transition_instance 3 table
tableName := 'bw_transition_instance_log';
hisTable := 'his_bw_trans_inst_log_'||postfix||linkName;
strs:= ' ( select btil.* from '||tableName||' btil, bw_transition_instance bti, bw_process_instance bpi
where btil.transition_instance_id=bti.id and bti.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=btil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_transition_instance$tillist';
hisTable := 'his_bw_trans_inst$til_'||postfix||linkName;
strs:= ' ( select bti_til.* from '||tableName||' bti_til, bw_transition_instance bti, bw_process_instance bpi
where bti_til.K$$vtoid=bti.vtoid and bti.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from bw_transition_instance$tillist  t where exists
           (select bti.vtoid    from bw_transition_instance         bti,bw_process_instance            bpi
                 where t.K$$vtoid = bti.vtoid   and bti.process_instance_id = bpi.id
                      and bpi.order_id = :1 and t.K$$vtoid = bti.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd using orderId;

tableName := 'bw_transition_instance';
hisTable := 'his_bw_trans_inst_'||postfix||linkName;
strs:= ' (select bti.* from '||tableName||' bti, bw_process_instance bpi
where bti.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bti.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;


--processInstance 8 tables
tableName := 'bw_process_instance_error';
hisTable := 'his_bw_process_inst_error_'||postfix||linkName;
strs:= ' (select bpie.* from '||tableName||' bpie, bw_process_instance bpi where bpie.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpie.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance_data';
hisTable := 'his_bw_process_inst_data_'||postfix||linkName;
strs:= ' (select bpid.* from '||tableName||' bpid where bpid.bom_inst_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpid.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance$pielist';
hisTable := 'his_bw_process_inst$pie_'||postfix||linkName;
strs:= ' ( select bpi_pie.* from '||tableName||' bpi_pie, bw_process_instance bpi where bpi_pie.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from bw_process_instance$pielist t where exists (select 1 from bw_process_instance  bpi
  					where t.K$$vtoid = bpi.vtoid and bpi.order_id = :1)';
execute IMMEDIATE stri;
execute IMMEDIATE strd using orderId;

tableName := 'bw_process_instance_log';
hisTable := 'his_bw_process_inst_log_'||postfix||linkName;
strs:= ' ( select bpil.* from '||tableName||' bpil, bw_process_instance bpi where bpil.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance$pillist';
hisTable := 'his_bw_process_inst$pil_'||postfix||linkName;
strs:= ' ( select bpi_pil.* from '||tableName||' bpi_pil, bw_process_instance bpi where bpi_pil.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete bw_process_instance$pillist t where exists (select 1 from bw_process_instance  bpi
  					where t.K$$vtoid = bpi.vtoid and bpi.order_id = :1)';
execute IMMEDIATE stri;
execute IMMEDIATE strd using orderId;

tableName := 'bw_process_instance$nilist';
hisTable := 'his_bw_process_inst$ni_'||postfix||linkName;
strs:= ' (select bpi_nil.* from '||tableName||' bpi_nil, bw_process_instance bpi where bpi_nil.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from bw_process_instance$nilist t where exists (select 1 from bw_process_instance  bpi
            where t.K$$vtoid = bpi.vtoid and bpi.order_id = :1)';
execute IMMEDIATE stri;
execute IMMEDIATE strd using orderId;

tableName := 'bw_process_instance$tilist';
hisTable := 'his_bw_process_inst$ti_'||postfix||linkName;
strs:= ' (select bpi_til.* from '||tableName||' bpi_til, bw_process_instance bpi where bpi_til.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from bw_process_instance$tilist t where exists (select 1 from bw_process_instance  bpi
            where t.K$$vtoid = bpi.vtoid and bpi.order_id = :1)';
execute IMMEDIATE stri;
execute IMMEDIATE strd using orderId;

tableName := 'bw_process_instance';
hisTable := 'his_bw_process_inst_'||postfix||linkName;
strs:= ' (select bpi.* from '||tableName||' bpi where bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpi.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

--engine 3 tables
tableName := 'bw_engine_error';
hisTable := 'his_bw_engine_error_'||postfix||linkName;
strs:= ' ( select bee.* from '||tableName||' bee where bee.orderserialno='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bee.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_bpo$eelist';
hisTable := 'his_bw_process_bpo$ee_'||postfix||linkName;
strs:= ' (select bpo_bee.* from '||tableName||' bpo_bee  where bpo_bee.k$$vtoid='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpo_bee.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_bpo';
hisTable := 'his_bw_process_bpo_'||postfix||linkName;
strs:= ' (select bpo.* from '||tableName||' bpo where bpo.vtoid='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpo.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

end;
/

prompt
prompt Creating procedure BACKUP1ORDER_VPE_F
prompt =====================================
prompt
create or replace procedure backup1order_vpe_f(orderId in varchar2, postfix in varchar2) is
tableName varchar2(64);
hisTable varchar2(64);
strs varchar2(4096);
stri varchar2(4096);
strd varchar2(4096);
linkName varchar2(64);
orderIdstr varchar2(100);
begin
linkName := '';
orderIdstr := ''''||orderId||'''';
--nodeInstance 11 table
tableName := 'bw_node_instance_error_f';
hisTable := 'his_bw_node_inst_error_'||postfix||linkName;
strs:= ' (select bnie.* from '||tableName||' bnie, bw_node_instance_f bni, bw_process_instance_f bpi
where bnie.node_inst_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs ||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bnie.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance_activity_f';
hisTable := 'his_bw_node_inst_activity_'||postfix||linkName;
strs:= ' (select bnia.* from '||tableName||' bnia, bw_node_instance_f bni, bw_process_instance_f bpi
where bnia.node_instance_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs ||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bnia.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance$nielist_f';
hisTable := 'his_bw_node_inst$nie_'||postfix||linkName;
strs:= ' (select bni_nie.* from '||tableName||' bni_nie, bw_node_instance_f bni, bw_process_instance_f bpi
where bni_nie.k$$vtoid=bni.vtoid and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs ||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bni_nie.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance_log_f';
hisTable := 'his_bw_node_inst_log_'||postfix||linkName;
strs:= ' (select bnil.* from '||tableName||' bnil, bw_node_instance_f bni, bw_process_instance_f bpi
where bnil.node_instance_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bnil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance$nillist_f';
hisTable := 'his_bw_node_inst$nil_'||postfix||linkName;
strs:= ' (select bni_nil.* from '||tableName||' bni_nil, bw_node_instance_f bni, bw_process_instance_f bpi
where bni_nil.k$$vtoid=bni.vtoid and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bni_nil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_variable_instance_f';
hisTable := 'his_bw_node_variable_inst_'||postfix||linkName;
strs:= ' ( select bnvi.* from '||tableName||' bnvi, bw_node_instance_f bni, bw_process_instance_f bpi
where bnvi.node_instance_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bnvi.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance$nvilist';
hisTable := 'his_bw_node_inst$nvi_'||postfix||linkName;
strs:= ' ( select bni_nvi.* from '||tableName||' bni_nvi, bw_node_instance_f bni, bw_process_instance_f bpi
where bni_nvi.k$$vtoid=bni.vtoid and bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bni_nvi.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_node_instance_f';
hisTable := 'his_bw_node_inst_'||postfix||linkName;
strs:= ' ( select bni.* from  '||tableName||' bni, bw_process_instance_f bpi
where bni.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bni.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

--transition_instance 3 table
tableName := 'bw_transition_instance_log_f';
hisTable := 'his_bw_trans_inst_log_'||postfix||linkName;
strs:= ' ( select btil.* from '||tableName||' btil, bw_transition_instance_f bti, bw_process_instance_f bpi
where btil.transition_instance_id=bti.id and bti.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=btil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_transition_instance$till_f';
hisTable := 'his_bw_trans_inst$til_'||postfix||linkName;
strs:= ' ( select bti_til.* from '||tableName||' bti_til, bw_transition_instance_f bti, bw_process_instance_f bpi
where bti_til.K$$vtoid=bti.vtoid and bti.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bti_til.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_transition_instance_f';
hisTable := 'his_bw_trans_inst_'||postfix||linkName;
strs:= ' (select bti.* from '||tableName||' bti, bw_process_instance_f bpi
where bti.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bti.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;


--processInstance 8 tables
tableName := 'bw_process_instance_error_f';
hisTable := 'his_bw_process_inst_error_'||postfix||linkName;
strs:= ' (select bpie.* from '||tableName||' bpie, bw_process_instance_f bpi where bpie.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpie.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance_data_f';
hisTable := 'his_bw_process_inst_data_'||postfix||linkName;
strs:= ' (select bpid.* from '||tableName||' bpid where bpid.bom_inst_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpid.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance$pielist_f';
hisTable := 'his_bw_process_inst$pie_'||postfix||linkName;
strs:= ' ( select bpi_pie.* from '||tableName||' bpi_pie, bw_process_instance_f bpi where bpi_pie.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpi_pie.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance_log_f';
hisTable := 'his_bw_process_inst_log_'||postfix||linkName;
strs:= ' ( select bpil.* from '||tableName||' bpil, bw_process_instance_f bpi where bpil.process_instance_id=bpi.id and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance$pillist_f';
hisTable := 'his_bw_process_inst$pil_'||postfix||linkName;
strs:= ' ( select bpi_pil.* from '||tableName||' bpi_pil, bw_process_instance_f bpi where bpi_pil.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpi_pil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance$nilist_f';
hisTable := 'his_bw_process_inst$ni_'||postfix||linkName;
strs:= ' (select bpi_nil.* from '||tableName||' bpi_nil, bw_process_instance_f bpi where bpi_nil.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpi_nil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance$tilist_f';
hisTable := 'his_bw_process_inst$ti_'||postfix||linkName;
strs:= ' (select bpi_til.* from '||tableName||' bpi_til, bw_process_instance_f bpi where bpi_til.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpi_til.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance_f';
hisTable := 'his_bw_process_inst_'||postfix||linkName;
strs:= ' (select bpi.* from '||tableName||' bpi where bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpi.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

--engine 3 tables
tableName := 'bw_engine_error_f';
hisTable := 'his_bw_engine_error_'||postfix||linkName;
strs:= ' ( select bee.* from '||tableName||' bee where bee.orderserialno='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bee.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_bpo$eelist_f';
hisTable := 'his_bw_process_bpo$ee_'||postfix||linkName;
strs:= ' (select bpo_bee.* from '||tableName||' bpo_bee  where bpo_bee.k$$vtoid='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpo_bee.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_bpo_f';
hisTable := 'his_bw_process_bpo_'||postfix||linkName;
strs:= ' (select bpo.* from '||tableName||' bpo where bpo.vtoid='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpo.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;
end;
/

prompt
prompt Creating procedure BACKUP1ORDER_VTM
prompt ===================================
prompt
create or replace procedure backup1order_vtm(orderId in varchar2, postfix in varchar2) is
hisTable varchar2(64);
strs varchar2(4096);
linkName varchar2(64);
orderIdstr varchar2(100);
begin
linkName := '';
orderIdstr := ''''||orderId||'''';

  hisTable := 'his_vtm_resource_event_'||postfix||linkName;
  strs := 'insert into ' || hisTable || ' (select re.* from vtm_resource_event re, vtm_task t, vtm_taskevent_history th
  where t.BOMINSID = ' || orderId || ' and th.TASKID = t.TASKID and th.EVENTID = re.EVENTID)';
  execute IMMEDIATE strs;

  hisTable := 'his_vtm_step_history_'||postfix||linkName;
  strs := 'insert into ' || hisTable || ' (select sh.* from vtm_activity_ins ai, VTM_STEP_HISTORY sh
  where ai.ordersequence = ' || orderIdstr || ' and ai.PROCESSINSTID = sh.PROCESSINSTANCEID)';
  execute IMMEDIATE strs;

  hisTable := 'his_vtm_taskevent_history_'||postfix||linkName;
  strs := 'insert into ' || hisTable || ' (select th.* from vtm_task t, vtm_taskevent_history th
  where t.BOMINSID = ' || orderId || ' and th.TASKID = t.TASKID)';
  execute IMMEDIATE strs;

  hisTable := 'his_vtm_form_ins_'||postfix||linkName;
  strs := 'insert into ' || hisTable || ' (select fi.* from VTM_FORM_INS fi
  where fi.BOM_INST_SNBR = ' || orderId || ')';
  execute IMMEDIATE strs;

  hisTable := 'his_vtm_notes_'||postfix||linkName;
  strs := 'insert into ' || hisTable || ' (select n.* from vtm_notes n, vtm_task t
  where t.BOMINSID = ' || orderId || ' and n.taskid = t.taskid)';
  execute IMMEDIATE strs;

  hisTable := 'his_vtm_task_'||postfix||linkName;
  strs := 'insert into ' || hisTable || ' (select t.* from vtm_task t
  where t.BOMINSID = ' || orderId || ')';
  execute IMMEDIATE strs;

  hisTable := 'his_vtm_activity_ins_'||postfix||linkName;
  strs := 'insert into ' || hisTable || '(select ai.* from vtm_activity_ins ai
  where ai.ordersequence = ' || orderIdstr || ')';
  execute IMMEDIATE strs;

  hisTable := 'HIS_VTM_RESUME_TASK_'||postfix||linkName;
  strs := 'insert into ' || hisTable || '(select rt.* from VTM_RESUME_TASK rt
  where rt.BOMINSID = ' || orderId || ')';
  execute IMMEDIATE strs;

  hisTable := 'HIS_VTM_TASK_ERROR_'||postfix||linkName;
  strs := 'insert into ' || hisTable || '(select te.* from VTM_TASK_ERROR te
  where te.BOMINSID = ' || orderId || ')';
  execute IMMEDIATE strs;

  hisTable := 'HIS_VTM_URGENT_'||postfix||linkName;
  strs := 'insert into ' || hisTable || '(select u.* from VTM_URGENT u
  where u.BOMINSTID = ' || orderId || ')';
  execute IMMEDIATE strs;

  delete from vtm_resource_event re where exists (select t.taskid from vtm_task t, vtm_taskevent_history th
    where t.BOMINSID = orderId and th.TASKID = t.TASKID and th.EVENTID = re.EVENTID);

  delete from VTM_STEP_HISTORY sh where exists (select * from vtm_activity_ins ai
    where ai.ordersequence = orderIdstr and ai.PROCESSINSTID = sh.PROCESSINSTANCEID);

  delete from vtm_taskevent_history th where exists (select t.TASKID from vtm_task t
    where t.BOMINSID = orderId and th.TASKID = t.TASKID);

  delete from VTM_FORM_INS fi where fi.BOM_INST_SNBR = orderId;

  delete from vtm_notes n where exists (select t.TASKID from vtm_task t
    where t.BOMINSID = orderId and n.taskid = t.taskid);

  delete from vtm_task t where t.BOMINSID = orderId;

  delete from vtm_activity_ins ai where ai.ordersequence = orderIdstr;

  delete from VTM_RESUME_TASK rt where rt.BOMINSID = orderId;

  delete from VTM_TASK_ERROR te where te.BOMINSID = orderId;

  delete from VTM_URGENT u where to_char(u.BOMINSTID) = orderId;

end;
/

prompt
prompt Creating procedure BACKUP1ORDER_VTM_F
prompt =====================================
prompt
create or replace procedure backup1order_vtm_f(orderId in varchar2, postfix in varchar2) is
hisTable varchar2(64);
strs varchar2(4096);
linkName varchar2(64);
orderIdstr varchar2(100);
begin
linkName := '';--@dblink
orderIdstr := ''''||orderId||'''';

  hisTable := 'his_vtm_resource_event_'||postfix||linkName;
  strs := 'insert into ' || hisTable || ' (select re.* from vtm_resource_event_f re, vtm_task t, vtm_taskevent_history th
  where t.BOMINSID = ' || orderId || ' and th.TASKID = t.TASKID and th.EVENTID = re.EVENTID)';
  execute IMMEDIATE strs;

  hisTable := 'his_vtm_step_history_'||postfix||linkName;
  strs := 'insert into ' || hisTable || ' (select sh.* from vtm_activity_ins_f ai, VTM_STEP_HISTORY_f sh
  where ai.ordersequence = ' || orderIdstr || ' and ai.PROCESSINSTID = sh.PROCESSINSTANCEID)';
  execute IMMEDIATE strs;

  hisTable := 'his_vtm_taskevent_history_'||postfix||linkName;
  strs := 'insert into ' || hisTable || ' (select th.* from vtm_task_f t, vtm_taskevent_history_f th
  where t.BOMINSID = ' || orderId || ' and th.TASKID = t.TASKID)';
  execute IMMEDIATE strs;

  hisTable := 'his_vtm_form_ins_'||postfix||linkName;
  strs := 'insert into ' || hisTable || ' (select fi.* from VTM_FORM_INS_f fi
  where fi.BOM_INST_SNBR = ' || orderId || ')';
  execute IMMEDIATE strs;

  hisTable := 'his_vtm_notes_'||postfix||linkName;
  strs := 'insert into ' || hisTable || ' (select n.* from vtm_notes_f n, vtm_task_f t
  where t.BOMINSID = ' || orderId || ' and n.taskid = t.taskid)';
  execute IMMEDIATE strs;

  hisTable := 'his_vtm_task_'||postfix||linkName;
  strs := 'insert into ' || hisTable || ' (select t.* from vtm_task_f t
  where t.BOMINSID = ' || orderId || ')';
  execute IMMEDIATE strs;

  hisTable := 'his_vtm_activity_ins_'||postfix||linkName;
  strs := 'insert into ' || hisTable || '(select ai.* from vtm_activity_ins_f ai
  where ai.ordersequence = ' || orderIdstr || ')';
  execute IMMEDIATE strs;

  hisTable := 'HIS_VTM_RESUME_TASK_'||postfix||linkName;
  strs := 'insert into ' || hisTable || '(select rt.* from VTM_RESUME_TASK_f rt
  where rt.BOMINSID = ' || orderId || ')';
  execute IMMEDIATE strs;

  hisTable := 'HIS_VTM_TASK_ERROR_'||postfix||linkName;
  strs := 'insert into ' || hisTable || '(select te.* from VTM_TASK_ERROR_f te
  where te.BOMINSID = ' || orderId || ')';
  execute IMMEDIATE strs;

  hisTable := 'HIS_VTM_URGENT_'||postfix||linkName;
  strs := 'insert into ' || hisTable || '(select u.* from VTM_URGENT_f u
  where u.BOMINSTID = ' || orderId || ')';
  execute IMMEDIATE strs;

  delete from vtm_resource_event_f re where exists (select t.taskid from vtm_task_f t, vtm_taskevent_history_f th
    where t.BOMINSID = orderId and th.TASKID = t.TASKID and th.EVENTID = re.EVENTID);

  delete from VTM_STEP_HISTORY_f sh where exists (select * from vtm_activity_ins_f ai
    where ai.ordersequence = orderIdstr and ai.PROCESSINSTID = sh.PROCESSINSTANCEID);

  delete from vtm_taskevent_history_f th where exists (select t.TASKID from vtm_task_f t
    where t.BOMINSID = orderId and th.TASKID = t.TASKID);

  delete from VTM_FORM_INS_f fi where fi.BOM_INST_SNBR = orderId;

  delete from vtm_notes_f n where exists (select t.TASKID from vtm_task_f t
    where t.BOMINSID = orderId and n.taskid = t.taskid);

  delete from vtm_task_f t where t.BOMINSID = orderId;

  delete from vtm_activity_ins_f ai where ai.ordersequence = orderIdstr;

  delete from VTM_RESUME_TASK_f rt where rt.BOMINSID = orderId;

  delete from VTM_TASK_ERROR_f te where te.BOMINSID = orderId;

  delete from VTM_URGENT_f u where to_char(u.BOMINSTID) = orderId;

end;
/

prompt
prompt Creating procedure CACULATE_GROUP_EXPIRE_TASK
prompt =============================================
prompt
create or replace procedure CACULATE_GROUP_EXPIRE_TASK(start_time in date,end_time in date,group_id in varchar2) is
sqlStr varchar2(1000);
begin
/*  for cur_item in cur Loop
  end loop;*/
  sqlStr:=' insert into REPORT_DEPART_EXPIRE_TASK select '''||group_id||''', count(*),sum(expireCaculate( vt.timeoutstatus, vt.status,1,''C'')),'||
         'sum(expireCaculate( vt.timeoutstatus, vt.status,1,''U'')),'||
         'sum(expireCaculate( vt.timeoutstatus, vt.status,2,''C'')),'||
         'sum(expireCaculate( vt.timeoutstatus, vt.status,2,''U'')),'||
         'sum(expireCaculate( vt.timeoutstatus, vt.status,3,''C'')),'||
         'sum(expireCaculate( vt.timeoutstatus, vt.status,3,''U'')),''G'''||
    '   from vtm_task vt where vt.resourceid in '||
    ' (select vsg.staff_id from vum_staff_group vsg where vsg.group_id = ''||group_id||'')'||
    ' and vt.createdtime>to_date('''||to_char(start_time,'YYYY-MM-DD HH:mi:ss')||''',''YYYY-MM-DD HH:mi:ss'') and vt.createdtime<to_date('''||to_char(end_time,'YYYY-MM-DD HH:mi:ss')||''',''YYYY-MM-DD HH:mi:ss'')' ;
   DBMS_OUTPUT.PUT_LINE(sqlStr);
    execute immediate sqlStr;

end CACULATE_GROUP_EXPIRE_TASK;
/

prompt
prompt Creating procedure CACULATE_DEPART_EXPIRE_TASK
prompt ==============================================
prompt
create or replace procedure CACULATE_DEPART_EXPIRE_TASK(start_time in date,end_time in date,org_id in varchar2) is
id varchar2(500);
sqlStr varchar2(1000);
unReceive number:=0;
unReceiveTimeOut number:=0;
process number:=0;
processTimeOut number:=0;
finish number:=0;
finishTimeOut number:=0;
unReceiveOrg number:=0;
unReceiveTimeOutOrg number:=0;
processOrg number:=0;
processTimeOutOrg number:=0;
finishOrg number:=0;
finishTimeOutOrg number:=0;

CURSOR curGroup IS select  * from vum_group vg where vg.org_id=org_id;
CURSOR curOrg IS select  * from vum_org vo where vo.pid=org_id;
CURSOR curStaff IS select *from vum_org_staff vos where vos.org_id=org_id;

begin

  ---计算下属工作组的超时情况
  for cur_item in curGroup Loop
  id:=cur_item.Id;
  caculate_group_expire_task(start_time,end_time,id);
  end loop;
  ---计算下属部门的超时情况
  for cur_item in curOrg Loop
  id:=cur_item.Id;
  CACULATE_DEPART_EXPIRE_TASK(start_time,end_time,id);
  end loop;
  ---计算本部门人员的超时情况

  select sum(expireCaculate(vt.timeoutstatus, vt.status, 1, 'C')),
         sum(expireCaculate(vt.timeoutstatus, vt.status, 1, 'U')),
         sum(expireCaculate(vt.timeoutstatus, vt.status, 2, 'C')),
         sum(expireCaculate(vt.timeoutstatus, vt.status, 2, 'U')),
         sum(expireCaculate(vt.timeoutstatus, vt.status, 3, 'C')),
         sum(expireCaculate(vt.timeoutstatus, vt.status, 3, 'U'))
    into unReceive,
         unReceiveTimeOut,
         process,
         processTimeOut,
         finish,
         finishTimeOut
    from vtm_task vt
   where vt.resourceid in (select vos.staff_id
                             from vum_org_staff vos
                            where vos.org_id = org_id)
     and vt.createdtime > start_time
     and vt.createdtime < end_time;
  ---计算本部门超时统计情况
  select sum(unReceiveTimeOut),
         sum(unReceive),
         sum(processTimeOut),
         sum(process),
         sum(finishTimeOut),
         sum(finish)
    into unReceiveOrg,
         unReceiveTimeOutOrg,
         processOrg,
         processTimeOutOrg,
         finishOrg,
         finishTimeOutOrg
    from report_depart_expire_task rdet
   where rdet.type = 'O'
     and id in (select vo.id from vum_org vo where vo.pid = org_id);


  unReceive 						:=NVL(	       unReceive 					,0);
  unReceiveTimeOut			:=NVL(	       unReceiveTimeOut		,0);
  process 							:=NVL(			   process 						,0);
  processTimeOut 				:=NVL(			   processTimeOut 		,0);
  finish 								:=NVL(			   finish 						,0);
  finishTimeOut 				:=NVL(			   finishTimeOut 			,0);
  unReceiveOrg 					:=NVL(			   unReceiveOrg 			,0);
unReceiveTimeOutOrg			:=NVL(			 unReceiveTimeOutOrg	,0);
  processOrg 						:=NVL(			   processOrg 				,0);
  processTimeOutOrg			:=NVL(			   processTimeOutOrg	,0);
  finishOrg 						:=NVL(			   finishOrg 					,0);
  finishTimeOutOrg			:=NVL(			   finishTimeOutOrg		,0);


   sqlStr:='insert into report_depart_expire_task '||
   'values('''||org_id||''','||(unReceiveTimeOut + unReceiveTimeOutOrg+unReceive + unReceiveOrg+processTimeOut+processTimeOutOrg+process+processOrg+finishTimeOut+finishTimeoutOrg)||','||
     (unReceiveTimeOut + unReceiveTimeOutOrg)||','||
     (unReceive + unReceiveOrg)||','||
     (processTimeOut+processTimeOutOrg)||','||
     (process+processOrg)||','||
     (finishTimeOut+finishTimeoutOrg)||','||
     (finish+finishOrg)||',''O'')';
     DBMS_OUTPUT.PUT_LINE(sqlStr);
     execute immediate sqlStr;

end CACULATE_DEPART_EXPIRE_TASK;
/

prompt
prompt Creating procedure CLEAR_VTM_TASK_3004
prompt ======================================
prompt
create or replace procedure clear_vtm_task_3004 is
   cursor v_task is select /*+FIRST_ROWS*/ t.taskid from VTM_TASK t, VTM_ACTIVITY_INS a
   where t.STATUS = 3004 and a.INSTANCEID = t.AINSID and a.STATUS = 5002 and rownum<100;
begin
   dbms_output.put_line('Clear vtm_task start !');
   for r_task in v_task loop
       dbms_output.put_line('TaskId:'||r_task.taskid);
       --delete from VTM_NOTES n where n.taskid=r_task.taskid;
       --delete from VTM_RESOURCE_EVENT e where exists (select 1 from VTM_TASKEVENT_HISTORY h where h.eventid=e.eventid and h.taskid=r_task.taskid);
       delete from VTM_TASKEVENT_HISTORY h where h.taskid=r_task.taskid;
       --delete from VTM_TASK t where t.taskid=r_task.taskid;
       commit;
   end loop;
   dbms_output.put_line('Clear vtm_task end !');
end clear_vtm_task_3004;
/

prompt
prompt Creating procedure CREATEHISTABLE_BDS_T
prompt =======================================
prompt
create or replace procedure createHisTable_bds_t(postfix in varchar2,create_drop_flag in varchar2 default '0') Authid Current_User is
       --postfix varchar2(32):='0721';
       --create_drop_flag varchar2(1):='0';
       table_prefix varchar2(32):='FSWF%';
       row_index number(10):=0;
       create_table_sql varchar2(255);
       postlink varchar2(255);
       drop_table_sql varchar2(255);
begin
     postlink:='';
     create_table_sql:= 'create table '||upper('his_vega_boheader_'||postfix)||' as select * from '||upper('vega_boheader')||postlink||' where 1=2';
     drop_table_sql:= 'drop table '||upper('his_vega_boheader_'||postfix);
     if create_drop_flag ='0' then
        dbms_output.put_line('output sql:'||row_index||' '||create_table_sql);
        execute immediate create_table_sql;
     else
         dbms_output.put_line('output sql:'||row_index||' '||drop_table_sql);
         execute immediate drop_table_sql;
     end if;
     for current_table in (select t.table_name from user_tables t where t.table_name like table_prefix) loop
         row_index:=row_index+1;
         create_table_sql:= 'create table "'||upper('his_'||current_table.table_name||'_'||postfix)||'" as select * from "'||upper(current_table.table_name)||'"'||postlink||' where 1=2';
         drop_table_sql:='drop table "'||upper('his_'||current_table.table_name||'_'||postfix)||'"';
         if create_drop_flag ='0' then
            dbms_output.put_line('output sql:'||row_index||' '||create_table_sql);
            execute immediate create_table_sql;
         else
             dbms_output.put_line('output sql:'||row_index||' '||drop_table_sql);
             execute immediate drop_table_sql;
         end if;
     end loop;
end ;
/

prompt
prompt Creating procedure CREATEHISTABLE_VPE
prompt =====================================
prompt
create or replace procedure createHisTable_vpe(postfix in varchar2) Authid Current_User is
begin
execute IMMEDIATE 'create table his_bw_engine_error_'||postfix||'        as select * from bw_engine_error                    where 1=2';
execute IMMEDIATE 'create table his_bw_process_bpo_'||postfix||'         as select * from bw_process_bpo                     where 1=2';
execute IMMEDIATE 'create table his_bw_process_bpo$ee_'||postfix||'      as select * from bw_process_bpo$eelist              where 1=2';

execute IMMEDIATE 'create table his_bw_process_inst_'||postfix||'        as select * from bw_process_instance                where 1=2';
execute IMMEDIATE 'create table his_bw_process_inst$ni_'||postfix||'     as select * from bw_process_instance$nilist         where 1=2';
execute IMMEDIATE 'create table his_bw_process_inst$pie_'||postfix||'    as select * from bw_process_instance$pielist        where 1=2';
execute IMMEDIATE 'create table his_bw_process_inst$pil_'||postfix||'    as select * from bw_process_instance$pillist        where 1=2';
execute IMMEDIATE 'create table his_bw_process_inst$ti_'||postfix||'     as select * from bw_process_instance$tilist         where 1=2';
execute IMMEDIATE 'create table his_bw_process_inst_error_'||postfix||'  as select * from bw_process_instance_error          where 1=2';
execute IMMEDIATE 'create table his_bw_process_inst_log_'||postfix||'    as select * from bw_process_instance_log            where 1=2';
execute IMMEDIATE 'create table his_bw_process_inst_data_'||postfix||'  as select * from bw_process_instance_data         where 1=2';

execute IMMEDIATE 'create table his_bw_trans_inst_'||postfix||'          as select * from bw_transition_instance             where 1=2';
execute IMMEDIATE 'create table his_bw_trans_inst$til_'||postfix||'      as select * from bw_transition_instance$tillist     where 1=2';
execute IMMEDIATE 'create table his_bw_trans_inst_log_'||postfix||'      as select * from bw_transition_instance_log         where 1=2';

execute IMMEDIATE 'create table his_bw_node_inst_'||postfix||'           as select * from bw_node_instance                   where 1=2';
execute IMMEDIATE 'create table his_bw_node_inst_error_'||postfix||'     as select * from bw_node_instance_error             where 1=2';
execute IMMEDIATE 'create table his_bw_node_inst_log_'||postfix||'       as select * from bw_node_instance_log               where 1=2';
execute IMMEDIATE 'create table his_bw_node_variable_inst_'||postfix||'  as select * from bw_node_variable_instance          where 1=2';
execute IMMEDIATE 'create table his_bw_node_inst$nie_'||postfix||'       as select * from bw_node_instance$nielist           where 1=2';
execute IMMEDIATE 'create table his_bw_node_inst$nil_'||postfix||'       as select * from bw_node_instance$nillist           where 1=2';
execute IMMEDIATE 'create table his_bw_node_inst$nvi_'||postfix||'       as select * from bw_node_instance$nvilist           where 1=2';
execute IMMEDIATE 'create table his_bw_node_inst_activity_'||postfix||'  as select * from bw_node_instance_activity         where 1=2';

end createHisTable_vpe;
/

prompt
prompt Creating procedure CREATEHISTABLE_VTM
prompt =====================================
prompt
create or replace procedure createHisTable_vtm(postfix in varchar2) Authid Current_User is
linkback varchar2(64);
begin
linkback:='';
execute IMMEDIATE 'create table HIS_VTM_ACTIVITY_INS_'||postfix||'        as select * from VTM_ACTIVITY_INS'||linkback||' where 1=2';
execute IMMEDIATE 'create table HIS_VTM_TASK_'||postfix||'                as select * from VTM_TASK'||linkback||' where 1=2';
execute IMMEDIATE 'create table HIS_VTM_NOTES_'||postfix||'               as select * from VTM_NOTES'||linkback||' where 1=2';
execute IMMEDIATE 'create table HIS_VTM_RESOURCE_EVENT_'||postfix||'      as select * from VTM_RESOURCE_EVENT'||linkback||' where 1=2';
execute IMMEDIATE 'create table HIS_VTM_STEP_HISTORY_'||postfix||'        as select * from VTM_STEP_HISTORY'||linkback||' where 1=2';
execute IMMEDIATE 'create table HIS_VTM_TASKEVENT_HISTORY_'||postfix||'   as select * from VTM_TASKEVENT_HISTORY'||linkback||' where 1=2';
execute IMMEDIATE 'create table HIS_VTM_FORM_INS_'||postfix||'             as select * from VTM_FORM_INS'||linkback||' where 1=2';
execute IMMEDIATE 'create table HIS_VTM_RESUME_TASK_'||postfix||'             as select * from VTM_RESUME_TASK'||linkback||' where 1=2';
execute IMMEDIATE 'create table HIS_VTM_TASK_ERROR_'||postfix||'             as select * from VTM_TASK_ERROR'||linkback||' where 1=2';
execute IMMEDIATE 'create table HIS_VTM_URGENT_'||postfix||'             as select * from VTM_URGENT'||linkback||' where 1=2';

end createHisTable_vtm;
/

prompt
prompt Creating procedure DELETE3004
prompt =============================
prompt
CREATE OR REPLACE PROCEDURE "DELETE3004" is
   cursor v_task is select t.taskid from VTM_TASK t, VTM_TASKEVENT_HISTORY t2  where t.taskid = t2.taskid and  t.STATUS = 3004 and t.statustime < to_date('2010-05-27','yyyy-mm-dd') and rownum < 2;
   curnum number(10);
begin
   curnum:=0;
   for r_task in v_task loop
       curnum:=curnum+1;
       delete from VTM_TASKEVENT_HISTORY where taskid= r_task.taskid ;
       delete from VTM_TASK where taskid = r_task.taskid ;
       if (mod(curnum,1000)=0) then
          commit;
       end if;
   end loop;
   commit;
end ;
/

prompt
prompt Creating procedure EXECUTE_IMMEDIATE
prompt ====================================
prompt
CREATE OR REPLACE PROCEDURE execute_immediate( p_sql_text VARCHAR2 ) IS

   COMPILATION_ERROR EXCEPTION;
   PRAGMA EXCEPTION_INIT(COMPILATION_ERROR,-24344);

   l_cursor INTEGER DEFAULT 0;
   rc       INTEGER DEFAULT 0;
   stmt     VARCHAR2(1000);

BEGIN

   l_cursor := DBMS_SQL.OPEN_CURSOR;
   DBMS_SQL.PARSE(l_cursor, p_sql_text, DBMS_SQL.NATIVE);
   rc := DBMS_SQL.EXECUTE(l_cursor);
   DBMS_SQL.CLOSE_CURSOR(l_cursor);
--
-- Ignore compilation errors because these sometimes happen due to
-- dependencies between views AND procedures
--
   EXCEPTION WHEN COMPILATION_ERROR THEN DBMS_SQL.CLOSE_CURSOR(l_cursor);
       WHEN OTHERS THEN
          BEGIN
              DBMS_SQL.CLOSE_CURSOR(l_cursor);
              raise_application_error(-20101,sqlerrm || '  when executing ''' || p_sql_text || '''   ');
          END;
END;
/

prompt
prompt Creating procedure INITCALENDAR
prompt ===============================
prompt
CREATE OR REPLACE PROCEDURE "INITCALENDAR" (initTime IN date) is
       initDate date;
       cdate date;
begin
      initDate:=initTime;
      cdate:=initDate;
      loop
      if to_char(cdate,'D')=1 or to_char(cdate,'D')=7 then
        insert into wm_calendar values(to_char(cdate,'YYYYMMDD')||to_char(cdate,'DDD'),cdate,(cdate + 28800/86400),(cdate + 64800/86400),1);
      else
        insert into wm_calendar values(to_char(cdate,'YYYYMMDD')||to_char(cdate,'DDD'),cdate,(cdate + 28800/86400),(cdate + 64800/86400),0);
      end if;
      if cdate = last_day(add_months(initDate,11)) then
         exit;
      end if;
      cdate:=cdate+1;
      end loop;
      commit;
end initCalendar;
/

prompt
prompt Creating procedure INSERTRECORED
prompt ================================
prompt
create or replace procedure INSERTRECORED(formidd in varchar2) is
CURSOR cur IS select vac.orgid from vsm_access_initform vac where vac.formid='FSWF-CC-CSR-0101_01011';
--CURSOR cur_form IS select vsf.id from vmr_service_form vsf  where id<>'FSWF-CC-CSR-01_01_01';
orgid varchar2(500);
--formid  varchar2(500);
seq number(10);
timestr varchar2(50) ;
begin
  seq:=0;
  timestr:=to_char(sysdate,'YYYYMMDDHHmmss');
  timestr:=formidd;

  delete vsm_access_initform vi where vi.formid=formidd;

  --for  cur_record in cur_form Loop
     -- formid:=cur_record.id;

      for cur_item in cur Loop
       orgid:=cur_item.orgid;

      begin
        seq:=seq+1;
        --DBMS_OUTPUT.PUT_LINE(timestr||seq);
        insert into vsm_access_initform(id,formid,orgid) values(timestr||seq,formidd,orgid);
        --DBMS_OUTPUT.PUT_LINE(' insert  orgid:'||orgid||' formid:'||formidd);
      end;

      end loop;
  --end loop;
end INSERTRECORED;
/

prompt
prompt Creating procedure MAIN
prompt =======================
prompt
create or replace procedure main is
CURSOR cur_form IS select vsf.id from vmr_service_form vsf  where id<>'FSWF-CC-CSR-01_01_01';
formid  varchar2(500);
begin
    for  cur_record in cur_form Loop
      formid:=cur_record.id;
      INSERTRECORED(formid);
    end loop;
end main;
/

prompt
prompt Creating procedure ORDERBACKUP
prompt ==============================
prompt
create or replace procedure orderBackup
       (orderId in varchar2,
        postfix in varchar2,
        isSuccess out varchar2) Authid Current_User
is
backup_mode varchar2(10);
begin
    begin
     select ltrim(rtrim(value)) into backup_mode from vpm_app_parameters
           where id='503' and code='IS_SEPARATE';
     if (backup_mode = 'true') then
       backup1order_vpe_f(orderId, postfix);
       backup1order_vtm_f(orderId, postfix);
       backup1order_bds_f(orderId, postfix);
     else
       backup1order_vpe(orderId, postfix);
       backup1order_vtm(orderId, postfix);
       backup1order_bds(orderId, postfix);
     end if;
     EXCEPTION
       WHEN   others   THEN
        dbms_output.put_line(sqlerrm);
        Rollback;
        isSuccess:='0';
        return;
     end;
     COMMIT;
     isSuccess:='1';
     return;

end orderBackup;
/

prompt
prompt Creating procedure PARSER_XML
prompt =============================
prompt
create or replace procedure parser_xml (dir varchar2,xml_name varchar2) is
new_parser xmlparser.Parser;
get_doc xmldom.DOMDocument;
nodelist xmldom.DOMNodeList;
nle number;
e xmldom.DOMElement;
n xmldom.DOMNode;
begin
     new_parser:=xmlparser.newParser;--得到XML解析器
     xmlparser.setValidationMode(new_parser,false);--是否让解析器有验证功能（是否是一种DDL标准）
     xmlparser.setBaseDir(new_parser,dir);--在XML解析器中设定被解析文件的路径
     xmlparser.parse(new_parser,dir||xml_name);--解析文件根据绝对路径
     get_doc:=xmlparser.getDocument(new_parser);--在XML解析器中得到解析后的文档
     xmlparser.freeParser(new_parser);--释放解析器
     nodelist:=xmldom.getElementsByTagName(get_doc,'*');--得到所有的元素
     nle:=xmldom.getLength(nodelist);--得到元素的个数
     --for i in 0..nle-1 loop
         --n:=xmldom.item(nodelist,i);--给元素打标(即得到每一个节点)
         --e:=xmldom.makeElement(n);--把节点变成一个元素来处理(可以对ATTRIBUTER来操作)
         --dbms_output.put_line(xmldom.getNodeName(n)||':'||xmldom.getNodeValue(xmldom.getFirstChild(n)));
     --end loop;
end parser_xml;
/

prompt
prompt Creating procedure P_REBUILD_ALL_INDEX
prompt ======================================
prompt
create or replace procedure p_rebuild_all_index
   (tablespace_name in varchar2,--这里是表空间名，如果不改变表空间，可以传入null
   only_unusable in boolean)    --是否仅对无效的索引操作
as
   sqlt varchar(200);
begin
    --只取非临时索引
    for idx in (select index_name, tablespace_name, status from user_indexes where temporary = 'N') loop
        --如果是如重建无效的索引，且当索引不是无效时，则跳过
        if only_unusable = true and idx.status <> 'UNUSABLE' then
           goto continue;
        end if;

        if (tablespace_name is null) or idx.status = 'UNUSABLE' then
           --如果没有指定表空间，或索引无效，则在原表空间重建
           sqlt := 'alter index ' || idx.index_name || ' rebuild ';
        elsif upper(tablespace_name) <> idx.tablespace_name then
           --如果指定的不同的表空间，则在指定表空间待建索引
           sqlt := 'alter index ' || idx.index_name || ' rebuild tablespace ' || tablespace_name;
        else
           --如果表空间相同，则跳过
           goto continue;
        end if;

        dbms_output.put_line(idx.index_name);
        EXECUTE IMMEDIATE sqlt;
        <<continue>>
        null;
     end loop;
end;
/*
功能：重建索引。
说明：如果表空间参数传入null，则在原表空间内重建索引，否则在目标表空间重建索引。
      如果表空间相同，则跳过。
      only_unusable表示是否只对无效的索引进行重建
作者：81,   2007年6月26日
*/
/

prompt
prompt Creating procedure P_TEST
prompt =========================
prompt
create or replace procedure p_test
as
strd varchar2(255);
orderId varchar2(30);
begin
   orderId := '2568081202';
   ---strd := 'delete from VTM_URGENT where bominstid = :1' ;
   delete from vtm_urgent where to_char(bominstid) = to_char(orderId);
   ---execute IMMEDIATE strd using orderId;
   commit;
   exception WHEN   others THEN
   dbms_output.put_line('error:'||sqlerrm);
   return;

end ;
/

prompt
prompt Creating procedure SEPARATE1ORDER_BDS
prompt =====================================
prompt
create or replace procedure separate1order_bds
  (  orderId in varchar2,
    postfix in varchar2,
    autocommit in boolean,
    returncode out varchar2,
    returninfo out varchar2
  )
as
finishedTable varchar2(64);
strs varchar2(4096);
stri varchar2(4096);
strd varchar2(4096);
begin

  finishedTable:='VEGA_BOHEADER'||postfix;
  strs:='" select t.* from VEGA_BOHEADER t where t.e_id=:1';
  stri:='insert into "'||finishedTable||strs;
  strd:='delete from VEGA_BOHEADER d where  d.e_id=:1';
  execute immediate stri using orderId;
  execute immediate strd using orderId;
  returncode := '1';
  returninfo := 'Separate BDS Sucessful!';
/*  if autocommit then
    commit;
  else
    rollback;
  end if;
*/
end;
/

prompt
prompt Creating procedure SEPARATE1ORDER_VPE
prompt =====================================
prompt
CREATE OR REPLACE Procedure separate1order_vpe
	(	orderId in varchar2,
		postfix in varchar2,
		autocommit in boolean,
		returncode out varchar2,
		returninfo out varchar2
		)
as
	finishedTable varchar2(64);
	strs varchar2(4096);
	stri varchar2(4096);
	strd varchar2(4096);
	bk_trace varchar2(1024);

begin
	returncode := '0';
	returninfo := 'Separate VPE Failure!';
--nodeInstance 11 table
	finishedTable := 'bw_node_instance_error'||postfix;
	strs := ' select bnie.* from bw_node_instance_error bnie, bw_node_instance bni, bw_process_instance bpi
									where bnie.node_inst_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable||strs;
	strd := 'delete from bw_node_instance_error t where exists ('||strs|| ' and t.vtoid=bnie.vtoid)';
	execute IMMEDIATE stri using orderId;
	execute IMMEDIATE strd using orderId;
	bk_trace :=bk_trace||'bw_node_instance_error@';



	finishedTable := 'bw_node_instance_activity'||postfix;
	strs:= '	select bnia.* from bw_node_instance_activity bnia, bw_node_instance bni, bw_process_instance bpi
						where bnia.node_instance_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs ;
	strd := 'delete from bw_node_instance_activity t where exists ('||strs|| ' and t.vtoid=bnia.vtoid)';
	execute IMMEDIATE stri using orderId;
	execute IMMEDIATE strd using orderId;
	bk_trace :=bk_trace||'bw_node_instance_activity@';


	finishedTable := 'bw_node_instance$nielist'||postfix;
	strs := '	select bni_nie.* from  bw_node_instance$nielist bni_nie, bw_node_instance bni, bw_process_instance bpi
									where bni_nie.k$$vtoid=bni.vtoid and bni.process_instance_id=bpi.id and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_node_instance$nielist t where exists ('||strs|| ' and t.vtoid=bni_nie.vtoid)';
	execute IMMEDIATE stri using orderId;
	execute IMMEDIATE strd using orderId;
	bk_trace :=bk_trace||'bw_node_instance$nielist@';

	finishedTable := 'bw_node_instance_log'||postfix;
	strs := '	select bnil.* from bw_node_instance_log bnil, bw_node_instance bni, bw_process_instance bpi
						where bnil.node_instance_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_node_instance_log t where exists ('||strs|| ' and t.vtoid=bnil.vtoid)';
	execute IMMEDIATE stri using orderId;
	execute IMMEDIATE strd using orderId;
	bk_trace :=bk_trace||'bw_node_instance_log@';

	finishedTable := 'bw_node_instance$nillist'||postfix;
	strs := '	select bni_nil.* from bw_node_instance$nillist bni_nil, bw_node_instance bni, bw_process_instance bpi
						where bni_nil.k$$vtoid=bni.vtoid and bni.process_instance_id=bpi.id and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_node_instance$nillist  t where exists ('||strs|| ' and t.vtoid=bni_nil.vtoid)';
	execute IMMEDIATE stri using orderId;
	execute IMMEDIATE strd using orderId;
	bk_trace :=bk_trace||'bw_node_instance$nillist@';

	finishedTable := 'bw_node_variable_instance'||postfix;
	strs := '	select bnvi.* from bw_node_variable_instance bnvi, bw_node_instance bni, bw_process_instance bpi
					where bnvi.node_instance_id=bni.id and bni.process_instance_id=bpi.id and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_node_variable_instance t where exists ('||strs|| ' and t.vtoid=bnvi.vtoid)';
	execute IMMEDIATE stri using orderId;
	execute IMMEDIATE strd using orderId;
	bk_trace :=bk_trace||'bw_node_variable_instance@';


	finishedTable := 'bw_node_instance$nvilist'||postfix;
	strs := '	select bni_nvi.* from bw_node_instance$nvilist bni_nvi, bw_node_instance bni, bw_process_instance bpi
					where bni_nvi.k$$vtoid=bni.vtoid and bni.process_instance_id=bpi.id and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_node_instance$nvilist t where exists ('||strs|| ' and t.vtoid=bni_nvi.vtoid)';
	execute IMMEDIATE stri using orderId;
	execute IMMEDIATE strd using orderId;
	bk_trace :=bk_trace||'bw_node_instance$nvilist@';

	finishedTable := 'bw_node_inst_data'||postfix;
	strs := '	select bnid.* from  bw_node_inst_data bnid	where bnid.order_serial_no = :1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_node_inst_data t where exists ('||strs|| ')';
	execute IMMEDIATE stri using orderId;
	execute IMMEDIATE strd using orderId;
	bk_trace :=bk_trace||'bw_node_inst_data@';

	finishedTable := 'bw_node_instance'||postfix;
	strs := '	select bni.* from  bw_node_instance bni, bw_process_instance bpi
						where bni.process_instance_id=bpi.id and bpi.order_id = :1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_node_instance t where exists ('||strs|| ' and t.vtoid=bni.vtoid)';
	execute IMMEDIATE stri using orderId;
	execute IMMEDIATE strd using orderId;
	bk_trace :=bk_trace||'bw_node_instance@';


--transition_instance 3 table
	finishedTable := 'bw_transition_instance_log'||postfix;
	strs := '	select btil.* from bw_transition_instance_log btil, bw_transition_instance bti, bw_process_instance bpi
						where btil.transition_instance_id=bti.id and bti.process_instance_id=bpi.id and bpi.order_id= :1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_transition_instance_log t where exists ('||strs|| ' and t.vtoid=btil.vtoid)';
	execute IMMEDIATE stri using orderId;
	execute IMMEDIATE strd using orderId;
	bk_trace :=bk_trace||'bw_transition_instance_log@';


	finishedTable := 'BW_TRANSITION_INSTANCE$TILL'||postfix;
	strs := '	select bti_til.* from bw_transition_instance$tillist bti_til, bw_transition_instance bti, bw_process_instance bpi
					where bti_til.K$$vtoid=bti.vtoid and bti.process_instance_id=bpi.id and bpi.order_id= :1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_transition_instance$tillist t where exists ('||strs|| ' and t.vtoid=bti_til.vtoid)';
	execute IMMEDIATE stri  using orderId;
	execute IMMEDIATE strd  using orderId;
	bk_trace :=bk_trace||'bw_transition_instance$tillist@';


	finishedTable := 'bw_transition_instance'||postfix;
	strs := '	select bti.* from bw_transition_instance bti, bw_process_instance bpi
						where bti.process_instance_id=bpi.id and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_transition_instance t where exists ('||strs|| ' and t.vtoid=bti.vtoid)';
	execute IMMEDIATE stri  using orderId;
	execute IMMEDIATE strd  using orderId;
	bk_trace :=bk_trace||'bw_transition_instance@';

--processInstance 8 tables

	finishedTable := 'bw_process_instance_error'||postfix;
	strs := '	select bpie.* from bw_process_instance_error bpie, bw_process_instance bpi where bpie.process_instance_id=bpi.id and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_process_instance_error t where exists ('||strs|| ' and t.vtoid=bpie.vtoid)';
	execute IMMEDIATE stri  using orderId;
	execute IMMEDIATE strd  using orderId;
	bk_trace :=bk_trace||'bw_process_instance_error@';


	finishedTable := 'bw_process_instance_data'||postfix;
	strs:= '	select bpid.* from bw_process_instance_data bpid where bpid.bom_inst_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_process_instance_data t where exists ('||strs|| ' and t.vtoid=bpid.vtoid)';
	execute IMMEDIATE stri  using orderId;
	execute IMMEDIATE strd  using orderId;
	bk_trace :=bk_trace||'bw_process_instance_data@';

	finishedTable := 'bw_process_instance$pielist'||postfix;
	strs:= '	select bpi_pie.* from bw_process_instance$pielist bpi_pie, bw_process_instance bpi where bpi_pie.K$$vtoid=bpi.vtoid and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_process_instance$pielist t where exists ('||strs|| ' and t.vtoid=bpi_pie.vtoid)';
	execute IMMEDIATE stri  using orderId;
	execute IMMEDIATE strd  using orderId;
	bk_trace :=bk_trace||'bw_process_instance$pielist@';


	finishedTable := 'bw_process_instance_log'||postfix;
	strs:= '	select bpil.* from bw_process_instance_log bpil, bw_process_instance bpi where bpil.process_instance_id=bpi.id and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_process_instance_log t where exists ('||strs|| ' and t.vtoid=bpil.vtoid)';
	execute IMMEDIATE stri  using orderId;
	execute IMMEDIATE strd  using orderId;
	bk_trace :=bk_trace||'bw_process_instance_log@';

	finishedTable := 'bw_process_instance$pillist'||postfix;
	strs:= '	select bpi_pil.* from bw_process_instance$pillist bpi_pil, bw_process_instance bpi where bpi_pil.K$$vtoid=bpi.vtoid and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_process_instance$pillist t where exists ('||strs|| ' and t.vtoid=bpi_pil.vtoid)';
	execute IMMEDIATE stri  using orderId;
	execute IMMEDIATE strd  using orderId;
	bk_trace :=bk_trace||'bw_process_instance$pillist@';


	finishedTable := 'bw_process_instance$nilist'||postfix;
	strs := '	select bpi_nil.* from bw_process_instance$nilist bpi_nil, bw_process_instance bpi where bpi_nil.K$$vtoid=bpi.vtoid and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_process_instance$nilist t where exists ('||strs|| ' and t.vtoid=bpi_nil.vtoid)';
	execute IMMEDIATE stri  using orderId;
	execute IMMEDIATE strd  using orderId;
	bk_trace :=bk_trace||'bw_process_instance$nilist@';

	finishedTable := 'bw_process_instance$tilist'||postfix;
	strs := '	select bpi_til.* from bw_process_instance$tilist bpi_til, bw_process_instance bpi where bpi_til.K$$vtoid=bpi.vtoid and bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_process_instance$tilist t where exists ('||strs|| ' and t.vtoid=bpi_til.vtoid)';
	execute IMMEDIATE stri  using orderId;
	execute IMMEDIATE strd  using orderId;
	bk_trace :=bk_trace||'bw_process_instance$tilist@';


	finishedTable := 'bw_process_instance'||postfix;
	strs := '	select bpi.* from bw_process_instance bpi where bpi.order_id=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_process_instance t where exists ('||strs|| ' and t.vtoid=bpi.vtoid)';
	execute IMMEDIATE stri  using orderId;
	execute IMMEDIATE strd  using orderId;
	bk_trace :=bk_trace||'bw_process_instance@';

--engine 3 tables

	finishedTable := 'bw_engine_error'||postfix;
	strs := '	select bee.* from bw_engine_error bee where bee.orderserialno=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_engine_error t where exists ('||strs|| ' and t.vtoid=bee.vtoid)';
	execute IMMEDIATE stri  using orderId;
	execute IMMEDIATE strd  using orderId;
	bk_trace :=bk_trace||'bw_engine_error@';

	finishedTable := 'BW_PROCESS_BPO$EELIST'||postfix;
	strs:= '	select bpo_bee.* from BW_PROCESS_BPO$EELIST bpo_bee  where bpo_bee.k$$vtoid=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from BW_PROCESS_BPO$EELIST t where exists ('||strs|| ' and t.vtoid=bpo_bee.vtoid)';
	execute IMMEDIATE stri  using orderId;
	execute IMMEDIATE strd  using orderId;
	bk_trace :=bk_trace||'bw_process_bpo$eelist@';

	finishedTable := 'bw_process_bpo'||postfix;
	strs:= '	select bpo.* from bw_process_bpo bpo where bpo.vtoid=:1';
	stri := 'insert into '|| finishedTable || strs;
	strd := 'delete from bw_process_bpo t where exists ('||strs|| ' and t.vtoid=bpo.vtoid)';
	execute IMMEDIATE stri  using orderId;
	execute IMMEDIATE strd  using orderId;
	bk_trace :=bk_trace||'bw_process_bpo@';



	returncode := '1';
	returninfo := 'Separate VPE Sucessful!';
/*	if autocommit then
		commit;
	else
		rollback;
	end if;
*/
end;
/

prompt
prompt Creating procedure SEPARATE1ORDER_VPE_NEW
prompt =========================================
prompt
CREATE OR REPLACE Procedure separate1order_vpe_new
	(	orderId in varchar2,
		postfix in varchar2,
		autocommit in boolean,
		returncode out varchar2,
		returninfo out varchar2
		)
as
	finishedTable varchar2(64);
	strs varchar2(4096);
	stri varchar2(4096);
	strd varchar2(4096);
	bk_trace varchar2(1024);
	i int;
begin
	returncode := '0';
	returninfo := 'Separate VPE Failure!';
-----prepare key value------
	begin
		strs := 'select count(1) from user_objects where object_name='||''''||'BW_NODE_INST_TEMP'||'''';
		execute immediate strs into i;
		if (i <= 0) then
	  	strs := 'create global temporary table bw_node_inst_temp (id varchar2(64)) on commit delete rows';
  		execute immediate strs;
	  end if;

  	strs := 'insert into bw_node_inst_temp select bni.id
  								from bw_node_instance bni, bw_process_instance bpi
                  where bni.process_instance_id=bpi.id and bpi.order_id=:1';
    execute immediate strs using orderId;
    execute immediate 'select count(1) from  BW_NODE_INST_TEMP ' into i;
  end;

  begin
		strs := 'select count(1) from user_objects where object_name='||''''||'BW_TRANSITION_INST_TEMP'||'''';
		execute immediate strs into i;
		if (i <= 0) then
	  	strs := 'create global temporary table bw_transition_inst_temp (id varchar2(64)) on commit delete rows';
  		execute immediate strs;
	  end if;

  	strs := 'insert into bw_transition_inst_temp select bti.id
  								from bw_transition_instance bti, bw_process_instance bpi
            			where bti.process_instance_id=bpi.id and bpi.order_id=:1';
    execute immediate strs using orderId;
    execute immediate 'select count(1) from  bw_node_inst_temp ' into i;
  end;

--nodeInstance 11 table
  finishedTable := 'bw_node_instance_error'||postfix;
  strs := ' select bnie.* from bw_node_instance_error bnie, bw_node_inst_temp bnit
                  where bnie.node_inst_id=bnit.id ';
  stri := 'insert into '|| finishedTable||strs;
  strd := 'delete from bw_node_instance_error t where exists (select  bnit.id from bw_node_inst_temp bnit
  					where t.node_inst_id=bnit.id)';
  execute IMMEDIATE stri ;
  execute IMMEDIATE strd  ;
  bk_trace :=bk_trace||'bw_node_instance_error@';



  finishedTable := 'bw_node_instance_activity'||postfix;
  strs:= '  select bnia.* from bw_node_instance_activity bnia, bw_node_inst_temp bnit
            where bnia.node_instance_id=bnit.id ';
  stri := 'insert into '|| finishedTable || strs ;
  strd := 'delete from bw_node_instance_activity t where exists (select  bnit.id from bw_node_inst_temp bnit
  					where t.node_instance_id=bnit.id) ';
  execute IMMEDIATE stri ;
  execute IMMEDIATE strd ;
  bk_trace :=bk_trace||'bw_node_instance_activity@';


  finishedTable := 'bw_node_instance$nielist'||postfix;
  strs := '  select bni_nie.* from  bw_node_instance$nielist bni_nie, bw_node_inst_temp bnit
                  where bni_nie.k$$vtoid=bnit.id  ';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_node_instance$nielist t where exists (select  bnit.id from bw_node_inst_temp bnit
  					where t.k$$vtoid=bnit.id)';
  execute IMMEDIATE stri ;
  execute IMMEDIATE strd ;
  bk_trace :=bk_trace||'bw_node_instance$nielist@';

  finishedTable := 'bw_node_instance_log'||postfix;
  strs := '  select bnil.* from bw_node_instance_log bnil, bw_node_inst_temp bnit
            where bnil.node_instance_id=bnit.id  ';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_node_instance_log t where exists (select  bnit.id from bw_node_inst_temp bnit
  					where t.node_instance_id=bnit.id)';
  execute IMMEDIATE stri ;
  execute IMMEDIATE strd ;
  bk_trace :=bk_trace||'bw_node_instance_log@';

  finishedTable := 'bw_node_instance$nillist'||postfix;
  strs := '  select bni_nil.* from bw_node_instance$nillist bni_nil, bw_node_inst_temp bnit
            where bni_nil.k$$vtoid=bnit.id  ';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_node_instance$nillist  t where exists (select  bnit.id from bw_node_inst_temp bnit
  					where t.k$$vtoid=bnit.id)';
  execute IMMEDIATE stri  ;
  execute IMMEDIATE strd  ;
  bk_trace :=bk_trace||'bw_node_instance$nillist@';

  finishedTable := 'bw_node_variable_instance'||postfix;
  strs := '  select bnvi.* from bw_node_variable_instance bnvi, bw_node_inst_temp bnit
          where bnvi.node_instance_id=bnit.id  ';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_node_variable_instance t where exists (select  bnit.id from bw_node_inst_temp bnit
  					where t.node_instance_id=bnit.id)';
  execute IMMEDIATE stri  ;
  execute IMMEDIATE strd  ;
  bk_trace :=bk_trace||'bw_node_variable_instance@';


  finishedTable := 'bw_node_instance$nvilist'||postfix;
  strs := '  select bni_nvi.* from bw_node_instance$nvilist bni_nvi, bw_node_inst_temp bnit
          where bni_nvi.k$$vtoid=bnit.id ';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_node_instance$nvilist t where exists (select bnit.id from bw_node_inst_temp bnit
  					where t.k$$vtoid=bnit.id )';
  execute IMMEDIATE stri ;
  execute IMMEDIATE strd ;
  bk_trace :=bk_trace||'bw_node_instance$nvilist@';

  finishedTable := 'bw_node_inst_data'||postfix;
  strs := '  select bnid.* from  bw_node_inst_data bnid  where bnid.order_serial_no = :1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_node_inst_data t where exists ('||strs|| ')';
  execute IMMEDIATE stri using orderId;
  execute IMMEDIATE strd using orderId;
  bk_trace :=bk_trace||'bw_node_inst_data@';

  finishedTable := 'bw_node_instance'||postfix;
  strs := '  select bni.* from  bw_node_instance bni, bw_process_instance bpi
            where bni.process_instance_id=bpi.id and bpi.order_id = :1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_node_instance t where exists ('||strs|| ' and t.vtoid=bni.vtoid)';
  execute IMMEDIATE stri using orderId;
  execute IMMEDIATE strd using orderId;
  bk_trace :=bk_trace||'bw_node_instance@';


--transition_instance 3 table
  finishedTable := 'bw_transition_instance_log'||postfix;
  strs := '  select btil.* from bw_transition_instance_log btil, bw_transition_inst_temp btit
            where btil.transition_instance_id=btit.id';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_transition_instance_log t where exists (select btit.id from bw_transition_inst_temp btit
  		 			where t.transition_instance_id=btit.id)';
  execute IMMEDIATE stri  ;
  execute IMMEDIATE strd  ;
  bk_trace :=bk_trace||'bw_transition_instance_log@';


  finishedTable := 'BW_TRANSITION_INSTANCE$TILL'||postfix;
  strs := '  select bti_til.* from bw_transition_instance$tillist bti_til, bw_transition_inst_temp btit
          where bti_til.K$$vtoid=btit.id ';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_transition_instance$tillist t where exists (select btit.id from bw_transition_inst_temp btit
  		 			where t.K$$vtoid=btit.id)';
  execute IMMEDIATE stri  ;
  execute IMMEDIATE strd  ;
  bk_trace :=bk_trace||'bw_transition_instance$tillist@';


  finishedTable := 'bw_transition_instance'||postfix;
  strs := '  select bti.* from bw_transition_instance bti, bw_process_instance bpi
            where bti.process_instance_id=bpi.id and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_transition_instance t where exists ('||strs|| ' and t.vtoid=bti.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_transition_instance@';

--processInstance 8 tables

  finishedTable := 'bw_process_instance_error'||postfix;
  strs := '  select bpie.* from bw_process_instance_error bpie, bw_process_instance bpi where bpie.process_instance_id=bpi.id and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance_error t where exists ('||strs|| ' and t.vtoid=bpie.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance_error@';


  finishedTable := 'bw_process_instance_data'||postfix;
  strs:= '  select bpid.* from bw_process_instance_data bpid where bpid.bom_inst_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance_data t where exists ('||strs|| ' and t.vtoid=bpid.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance_data@';

  finishedTable := 'bw_process_instance$pielist'||postfix;
  strs:= '  select bpi_pie.* from bw_process_instance$pielist bpi_pie, bw_process_instance bpi where bpi_pie.K$$vtoid=bpi.vtoid and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance$pielist t where exists ('||strs|| ' and t.vtoid=bpi_pie.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance$pielist@';


  finishedTable := 'bw_process_instance_log'||postfix;
  strs:= '  select bpil.* from bw_process_instance_log bpil, bw_process_instance bpi where bpil.process_instance_id=bpi.id and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance_log t where exists ('||strs|| ' and t.vtoid=bpil.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance_log@';

  finishedTable := 'bw_process_instance$pillist'||postfix;
  strs:= '  select bpi_pil.* from bw_process_instance$pillist bpi_pil, bw_process_instance bpi where bpi_pil.K$$vtoid=bpi.vtoid and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance$pillist t where exists ('||strs|| ' and t.vtoid=bpi_pil.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance$pillist@';


  finishedTable := 'bw_process_instance$nilist'||postfix;
  strs := '  select bpi_nil.* from bw_process_instance$nilist bpi_nil, bw_process_instance bpi where bpi_nil.K$$vtoid=bpi.vtoid and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance$nilist t where exists (select 1 from bw_process_instance  bpi
  					where t.K$$vtoid = bpi.vtoid and bpi.order_id = :1)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance$nilist@';

  finishedTable := 'bw_process_instance$tilist'||postfix;
  strs := '  select bpi_til.* from bw_process_instance$tilist bpi_til, bw_process_instance bpi where bpi_til.K$$vtoid=bpi.vtoid and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance$tilist t where exists (select 1 from bw_process_instance  bpi
  					where t.K$$vtoid = bpi.vtoid and bpi.order_id = :1)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance$tilist@';


  finishedTable := 'bw_process_instance'||postfix;
  strs := '  select bpi.* from bw_process_instance bpi where bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance t where exists ('||strs|| ' and t.vtoid=bpi.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance@';

--engine 3 tables

  finishedTable := 'bw_engine_error'||postfix;
  strs := '  select bee.* from bw_engine_error bee where bee.orderserialno=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_engine_error t where exists ('||strs|| ' and t.vtoid=bee.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_engine_error@';

  finishedTable := 'BW_PROCESS_BPO$EELIST'||postfix;
  strs:= '  select bpo_bee.* from BW_PROCESS_BPO$EELIST bpo_bee  where bpo_bee.k$$vtoid=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from BW_PROCESS_BPO$EELIST t where exists ('||strs|| ' and t.vtoid=bpo_bee.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_bpo$eelist@';

  finishedTable := 'bw_process_bpo'||postfix;
  strs:= '  select bpo.* from bw_process_bpo bpo where bpo.vtoid=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_bpo t where exists ('||strs|| ' and t.vtoid=bpo.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_bpo@';


  returncode := '1';
  returninfo := 'Separate VPE Sucessful!';
  if autocommit then
    commit;
  else
    rollback;
  end if;
end;
/

prompt
prompt Creating procedure SEPARATE1ORDER_VPE_NEW1
prompt ==========================================
prompt
CREATE OR REPLACE Procedure separate1order_vpe_new1
	(	orderId in varchar2,
		postfix in varchar2,
		autocommit in boolean,
		returncode out varchar2,
		returninfo out varchar2
		)
as
	finishedTable varchar2(64);
	strs varchar2(4096);
	stri varchar2(4096);
	strd varchar2(4096);
	bk_trace varchar2(1024);
  orderIdSet varchar2(4096);
	i int;
begin
	returncode := '0';
	returninfo := 'Separate VPE Failure!';
-----prepare key value------
	begin
		strs := 'select count(1) from user_objects where object_name='||''''||'BW_NODE_INST_TEMP'||'''';
		execute immediate strs into i;
		if (i <= 0) then
	  	strs := 'create global temporary table bw_node_inst_temp (id varchar2(64)) on commit delete rows';
  		execute immediate strs;
	  end if;

  	strs := 'insert into bw_node_inst_temp select bni.id
  								from bw_node_instance bni, bw_process_instance bpi
                  where bni.process_instance_id=bpi.id and bpi.order_id=:1';
    execute immediate strs using orderId;
    execute immediate 'select count(1) from  BW_NODE_INST_TEMP ' into i;
  end;

  begin
		strs := 'select count(1) from user_objects where object_name='||''''||'BW_TRANSITION_INST_TEMP'||'''';
		execute immediate strs into i;
		if (i <= 0) then
	  	strs := 'create global temporary table bw_transition_inst_temp (id varchar2(64)) on commit delete rows';
  		execute immediate strs;
	  end if;

  	strs := 'insert into bw_node_inst_temp select bti.id
  								from bw_transition_instance bti, bw_process_instance bpi
            			where bti.process_instance_id=bpi.id and bpi.order_id=:1';
    execute immediate strs using orderId;
    execute immediate 'select count(1) from  bw_node_inst_temp ' into i;
  end;

--nodeInstance 11 table
  finishedTable := 'bw_node_instance_error'||postfix;
  strs := ' select bnie.* from bw_node_instance_error bnie, bw_node_inst_temp bnit
                  where bnie.node_inst_id=bnit.id ';
  stri := 'insert into '|| finishedTable||strs;
  strd := 'delete from bw_node_instance_error t where exists (select  bnit.id from bw_node_inst_temp bnit
  					where t.node_inst_id=bnit.id)';
  execute IMMEDIATE stri ;
  execute IMMEDIATE strd  ;
  bk_trace :=bk_trace||'bw_node_instance_error@';



  finishedTable := 'bw_node_instance_activity'||postfix;
  strs:= '  select bnia.* from bw_node_instance_activity bnia, bw_node_inst_temp bnit
            where bnia.node_instance_id=bnit.id ';
  stri := 'insert into '|| finishedTable || strs ;
  strd := 'delete from bw_node_instance_activity t where exists (select  bnit.id from bw_node_inst_temp bnit
  					where t.node_instance_id=bnit.id) ';
  execute IMMEDIATE stri ;
  execute IMMEDIATE strd ;
  bk_trace :=bk_trace||'bw_node_instance_activity@';


  finishedTable := 'bw_node_instance$nielist'||postfix;
  strs := '  select bni_nie.* from  bw_node_instance$nielist bni_nie, bw_node_inst_temp bnit
                  where bni_nie.k$$vtoid=bnit.id  ';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_node_instance$nielist t where exists (select  bnit.id from bw_node_inst_temp bnit
  					where t.k$$vtoid=bnit.id)';
  execute IMMEDIATE stri ;
  execute IMMEDIATE strd ;
  bk_trace :=bk_trace||'bw_node_instance$nielist@';

  finishedTable := 'bw_node_instance_log'||postfix;
  strs := '  select bnil.* from bw_node_instance_log bnil, bw_node_inst_temp bnit
            where bnil.node_instance_id=bnit.id  ';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_node_instance_log t where exists (select  bnit.id from bw_node_inst_temp bnit
  					where t.node_instance_id=bnit.id)';
  execute IMMEDIATE stri ;
  execute IMMEDIATE strd ;
  bk_trace :=bk_trace||'bw_node_instance_log@';

  finishedTable := 'bw_node_instance$nillist'||postfix;
  strs := '  select bni_nil.* from bw_node_instance$nillist bni_nil, bw_node_inst_temp bnit
            where bni_nil.k$$vtoid=bnit.id  ';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_node_instance$nillist  t where exists (select  bnit.id from bw_node_inst_temp bnit
  					where t.k$$vtoid=bnit.id)';
  execute IMMEDIATE stri  ;
  execute IMMEDIATE strd  ;
  bk_trace :=bk_trace||'bw_node_instance$nillist@';

  finishedTable := 'bw_node_variable_instance'||postfix;
  for orderIdSet in (select id from bw_node_inst_temp bnit ) loop
    strs := '  select bnvi.* from bw_node_variable_instance bnvi
            where bnvi.node_instance_id=:1';
    stri := 'insert into '|| finishedTable || strs;
    strd := 'delete from bw_node_variable_instance t where t.node_instance_id=:1';
    execute IMMEDIATE stri using orderIdSet.id ;
    execute IMMEDIATE strd using orderIdSet.id ;
    bk_trace :=bk_trace||'bw_node_variable_instance@';
  end loop;


  finishedTable := 'bw_node_instance$nvilist'||postfix;
  strs := '  select bni_nvi.* from bw_node_instance$nvilist bni_nvi, bw_node_inst_temp bnit
          where bni_nvi.k$$vtoid=bnit.id ';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_node_instance$nvilist t where exists (select bnit.id from bw_node_inst_temp bnit
  					where t.k$$vtoid=bnit.id )';
  execute IMMEDIATE stri ;
  execute IMMEDIATE strd ;
  bk_trace :=bk_trace||'bw_node_instance$nvilist@';

  finishedTable := 'bw_node_inst_data'||postfix;
  strs := '  select bnid.* from  bw_node_inst_data bnid  where bnid.order_serial_no = :1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_node_inst_data t where exists ('||strs|| ')';
  execute IMMEDIATE stri using orderId;
  execute IMMEDIATE strd using orderId;
  bk_trace :=bk_trace||'bw_node_inst_data@';

  finishedTable := 'bw_node_instance'||postfix;
  strs := '  select bni.* from  bw_node_instance bni, bw_process_instance bpi
            where bni.process_instance_id=bpi.id and bpi.order_id = :1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_node_instance t where exists ('||strs|| ' and t.vtoid=bni.vtoid)';
  execute IMMEDIATE stri using orderId;
  execute IMMEDIATE strd using orderId;
  bk_trace :=bk_trace||'bw_node_instance@';


--transition_instance 3 table
  finishedTable := 'bw_transition_instance_log'||postfix;
  strs := '  select btil.* from bw_transition_instance_log btil, bw_transition_inst_temp btit
            where btil.transition_instance_id=btit.id';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_transition_instance_log t where exists (select btit.id from bw_transition_inst_temp btit
  		 			where t.transition_instance_id=btit.id)';
  execute IMMEDIATE stri  ;
  execute IMMEDIATE strd  ;
  bk_trace :=bk_trace||'bw_transition_instance_log@';


  finishedTable := 'BW_TRANSITION_INSTANCE$TILL'||postfix;
  strs := '  select bti_til.* from bw_transition_instance$tillist bti_til, bw_transition_inst_temp btit
          where bti_til.K$$vtoid=btit.id ';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_transition_instance$tillist t where exists (select btit.id from bw_transition_inst_temp btit
  		 			where t.K$$vtoid=btit.id)';
  execute IMMEDIATE stri  ;
  execute IMMEDIATE strd  ;
  bk_trace :=bk_trace||'bw_transition_instance$tillist@';


  finishedTable := 'bw_transition_instance'||postfix;
  strs := '  select bti.* from bw_transition_instance bti, bw_process_instance bpi
            where bti.process_instance_id=bpi.id and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_transition_instance t where exists ('||strs|| ' and t.vtoid=bti.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_transition_instance@';

--processInstance 8 tables

  finishedTable := 'bw_process_instance_error'||postfix;
  strs := '  select bpie.* from bw_process_instance_error bpie, bw_process_instance bpi where bpie.process_instance_id=bpi.id and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance_error t where exists ('||strs|| ' and t.vtoid=bpie.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance_error@';


  finishedTable := 'bw_process_instance_data'||postfix;
  strs:= '  select bpid.* from bw_process_instance_data bpid where bpid.bom_inst_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance_data t where exists ('||strs|| ' and t.vtoid=bpid.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance_data@';

  finishedTable := 'bw_process_instance$pielist'||postfix;
  strs:= '  select bpi_pie.* from bw_process_instance$pielist bpi_pie, bw_process_instance bpi where bpi_pie.K$$vtoid=bpi.vtoid and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance$pielist t where exists ('||strs|| ' and t.vtoid=bpi_pie.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance$pielist@';


  finishedTable := 'bw_process_instance_log'||postfix;
  strs:= '  select bpil.* from bw_process_instance_log bpil, bw_process_instance bpi where bpil.process_instance_id=bpi.id and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance_log t where exists ('||strs|| ' and t.vtoid=bpil.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance_log@';

  finishedTable := 'bw_process_instance$pillist'||postfix;
  strs:= '  select bpi_pil.* from bw_process_instance$pillist bpi_pil, bw_process_instance bpi where bpi_pil.K$$vtoid=bpi.vtoid and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance$pillist t where exists ('||strs|| ' and t.vtoid=bpi_pil.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance$pillist@';


  finishedTable := 'bw_process_instance$nilist'||postfix;
  strs := '  select bpi_nil.* from bw_process_instance$nilist bpi_nil, bw_process_instance bpi where bpi_nil.K$$vtoid=bpi.vtoid and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance$nilist t where exists ('||strs|| ' and t.vtoid=bpi_nil.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance$nilist@';

  finishedTable := 'bw_process_instance$tilist'||postfix;
  strs := '  select bpi_til.* from bw_process_instance$tilist bpi_til, bw_process_instance bpi where bpi_til.K$$vtoid=bpi.vtoid and bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance$tilist t where exists ('||strs|| ' and t.vtoid=bpi_til.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance$tilist@';


  finishedTable := 'bw_process_instance'||postfix;
  strs := '  select bpi.* from bw_process_instance bpi where bpi.order_id=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_instance t where exists ('||strs|| ' and t.vtoid=bpi.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_instance@';

--engine 3 tables

  finishedTable := 'bw_engine_error'||postfix;
  strs := '  select bee.* from bw_engine_error bee where bee.orderserialno=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_engine_error t where exists ('||strs|| ' and t.vtoid=bee.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_engine_error@';

  finishedTable := 'BW_PROCESS_BPO$EELIST'||postfix;
  strs:= '  select bpo_bee.* from BW_PROCESS_BPO$EELIST bpo_bee  where bpo_bee.k$$vtoid=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from BW_PROCESS_BPO$EELIST t where exists ('||strs|| ' and t.vtoid=bpo_bee.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_bpo$eelist@';

  finishedTable := 'bw_process_bpo'||postfix;
  strs:= '  select bpo.* from bw_process_bpo bpo where bpo.vtoid=:1';
  stri := 'insert into '|| finishedTable || strs;
  strd := 'delete from bw_process_bpo t where exists ('||strs|| ' and t.vtoid=bpo.vtoid)';
  execute IMMEDIATE stri  using orderId;
  execute IMMEDIATE strd  using orderId;
  bk_trace :=bk_trace||'bw_process_bpo@';


  returncode := '1';
  returninfo := 'Separate VPE Sucessful!';
  if autocommit then
    commit;
  else
    rollback;
  end if;
end;
/

prompt
prompt Creating procedure SEPARATE1ORDER_VTM
prompt =====================================
prompt
create or replace procedure separate1order_vtm
	(	orderId in varchar2,
		postfix in varchar2,
		autocommit in boolean,
		returncode out varchar2,
		returninfo out varchar2
	)
as
finishedTable varchar2(64);
strs varchar2(4096);
begin
  finishedTable := 'vtm_resource_event'||postfix;
  strs := 'insert into ' || finishedTable || ' (select re.* from vtm_resource_event re, vtm_task t, vtm_taskevent_history th
  					where t.BOMINSID = :1  and th.TASKID = t.TASKID and th.EVENTID = re.EVENTID)';
  execute IMMEDIATE strs using orderId;

  finishedTable := 'vtm_step_history'||postfix;
  strs := 'insert into ' || finishedTable || ' (select sh.* from vtm_activity_ins ai, VTM_STEP_HISTORY sh
  					where ai.ordersequence = :1  and ai.PROCESSINSTID = sh.PROCESSINSTANCEID)';
  execute IMMEDIATE strs using orderId;

  finishedTable := 'vtm_taskevent_history'||postfix;
  strs := 'insert into ' || finishedTable || ' (select th.* from vtm_task t, vtm_taskevent_history th
  					where t.BOMINSID = :1 and th.TASKID = t.TASKID)';
  execute IMMEDIATE strs using orderId;

  finishedTable := 'vtm_form_ins'||postfix;
  strs := 'insert into ' || finishedTable || ' (select fi.* from VTM_FORM_INS fi
  					where fi.BOM_INST_SNBR = :1)';
  execute IMMEDIATE strs using orderId;

  finishedTable := 'vtm_notes'||postfix;
  strs := 'insert into ' || finishedTable || ' (select n.* from vtm_notes n, vtm_task t
  where t.BOMINSID = :1 and n.taskid = t.taskid)';
  execute IMMEDIATE strs using orderId;

  finishedTable := 'vtm_activity_ins'||postfix;
  strs := 'insert into ' || finishedTable || '(select ai.* from vtm_activity_ins ai
  					where ai.ordersequence = :1)';
  execute IMMEDIATE strs using orderId;


  finishedTable := 'vtm_task'||postfix;
  strs := 'insert into ' || finishedTable || ' (select t.* from vtm_task t
  					where t.BOMINSID = :1 )';
  execute IMMEDIATE strs using orderId;



  finishedTable := 'VTM_RESUME_TASK'||postfix;
  strs := 'insert into ' || finishedTable || '(select rt.* from VTM_RESUME_TASK rt
  					where rt.BOMINSID = :1 )';
  execute IMMEDIATE strs using orderId;

  finishedTable := 'VTM_TASK_ERROR'||postfix;
  strs := 'insert into ' || finishedTable || '(select te.* from VTM_TASK_ERROR te
  					where te.BOMINSID =  :1 )';
  execute IMMEDIATE strs using orderId;

  finishedTable := 'VTM_URGENT'||postfix;
  strs := 'insert into ' || finishedTable || '(select u.* from VTM_URGENT u
  					where u.BOMINSTID = :1 )';
  execute IMMEDIATE strs using orderId;

  delete from vtm_resource_event re where exists (select t.taskid from vtm_task t, vtm_taskevent_history th
    where t.BOMINSID = orderId and th.TASKID = t.TASKID and th.EVENTID = re.EVENTID);

  execute immediate 'delete from VTM_STEP_HISTORY sh where exists (select * from vtm_activity_ins ai
    where ai.ordersequence = :1 and ai.PROCESSINSTID = sh.PROCESSINSTANCEID)' using orderId;

  delete from vtm_taskevent_history th where exists (select t.TASKID from vtm_task t
    where t.BOMINSID = orderId and th.TASKID = t.TASKID);

  delete from VTM_FORM_INS fi where fi.BOM_INST_SNBR = orderId;

  delete from vtm_notes n where exists (select t.TASKID from vtm_task t
    where t.BOMINSID = orderId and n.taskid = t.taskid);

  delete from vtm_task t where t.BOMINSID = orderId;

  execute immediate 'delete from vtm_activity_ins ai where ai.ordersequence = :1' using orderId;

  delete from VTM_RESUME_TASK rt where rt.BOMINSID = orderId;

  execute immediate 'delete from VTM_TASK_ERROR te where te.BOMINSID =:1'using  orderId;

  execute immediate 'delete from VTM_URGENT u where u.BOMINSTID =:1' using  orderId;

	returncode := '1';
	returninfo := 'Separate VTM Sucessful!';
/*	if autocommit then
		commit;
	else
		rollback;
	end if;
*/
end;
/

prompt
prompt Creating procedure SEPARATE_FINISHED_ORDER
prompt ==========================================
prompt
create or replace procedure Separate_Finished_Order
  ( orderId in varchar2,               --????
    postfix in varchar2 default '_F',              --??????.????,?????
    autocommit in int default 1,            --????????:1,?????:0.????,??????
    returncode out varchar2,            --????:1;????:0
    returninfo out varchar2            --????
    )
as
autocommit_def boolean;
postfix_def varchar2(30);
begin
-------confirm input para is valid
  if orderId is null or orderId ='' then
    returncode := '0';
    returninfo := 'The Order is null';
    return;
  end if;

  if postfix is null or postfix = '' then
    postfix_def := '_F';  --??????
  else
    postfix_def := postfix;
  end if;


  if autocommit = '1'  then
    autocommit_def := true;  --??????????
  else
    autocommit_def := false;
  end if;


  begin
    separate1order_vpe(orderId, postfix_def, autocommit_def,returncode,returninfo);
    separate1order_vtm(orderId, postfix_def, autocommit_def,returncode,returninfo);
    separate1order_bds(orderId, postfix_def, autocommit_def,returncode,returninfo);
    EXCEPTION
      WHEN   others THEN
	returninfo := sqlerrm;
        if autocommit_def then
          rollback;
        end if;
        returncode := '0';
        return;
  end;
  if autocommit_def then
    COMMIT;
  end if;
  returncode :='1';
  return;
end;
/

prompt
prompt Creating procedure SEPARATE_FINISHED_ORDER1
prompt ===========================================
prompt
create or replace procedure Separate_Finished_Order1
  ( orderId in varchar2,               --工单编号
    postfix in varchar2 default '_F',              --分离表的后缀.允许为空，将取默认值
    autocommit in int default 1,            --存储过程提交事务：1，不提交事务：0.允许为空，将取默认值。
    returncode out varchar2,            --分离成功：1；分离失败：0
    returninfo out varchar2            --备注信息
    )
as
autocommit_def boolean;
postfix_def varchar2(30);
begin
-------confirm input para is valid
  if orderId is null or orderId ='' then
    returncode := '0';
    returninfo := 'The Order is null';
    return;
  end if;

  if postfix is null or postfix = '' then
    postfix_def := '_F';  --设置缺省后缀
  else
    postfix_def := postfix;
  end if;


  if autocommit = '1'  then
    autocommit_def := true;  --缺省为数据库管理事务
  else
    autocommit_def := false;
  end if;


  begin
    separate1order_vpe_new(orderId, postfix_def, autocommit_def,returncode,returninfo);
    separate1order_vtm(orderId, postfix_def, autocommit_def,returncode,returninfo);
    ---separate1order_bds(orderId, postfix_def, autocommit_def,returncode,returninfo);
    EXCEPTION
      WHEN   others THEN
        if autocommit_def then
          dbms_output.put_line(sqlerrm);
          rollback;

        end if;
        returncode := '0';
        return;
  end;
  if autocommit_def then
    COMMIT;
  end if;
  returncode :='1';
  return;
end;
/

prompt
prompt Creating procedure SEPARATE_FINISHED_ORDER_BATCH
prompt ================================================
prompt
create or replace procedure Separate_Finished_Order_Batch
as
autocommit_def boolean;
postfix_def varchar2(30);
orderIdSet varchar2(4096);
rownums int;
returncode varchar2(30);
returninfo varchar2(256);
start_date date;
end_date date;
errors varchar2(256);
begin
	postfix_def := '_F';
	autocommit_def := true;

	rownums := 0;
	for orderIdSet in (select bom_inst_id orderId from bw_process_instance where rownum<1000 and status='1003') loop
			rownums := rownums + 1;

		  begin
		  	start_date := sysdate;
		    separate1order_vpe_new(orderIdSet.orderId, postfix_def, autocommit_def,returncode,returninfo);
        start_date := sysdate;
		    separate1order_vtm(orderIdSet.orderId, postfix_def, autocommit_def,returncode,returninfo);
        start_date := sysdate;
		    separate1order_bds(orderIdSet.orderId, postfix_def, autocommit_def,returncode,returninfo);
        end_date := sysdate;
        if autocommit_def then
          insert into vega_order_separation_log
            select SEPARATION_SEQUENCE.nextval,orderIdSet.orderId,datetolong(start_date),
                    returncode,returninfo,datetolong(end_date) from dual;
          COMMIT;
        end if;
		    EXCEPTION
	      WHEN   others THEN
	        if autocommit_def then
            errors :=sqlerrm;
	        	rollback;
            insert into vega_order_separation_log
	  			         select SEPARATION_SEQUENCE.nextval,orderIdSet.orderId,datetolong(start_date),
	  							        '0',returninfo||errors,datetolong(end_date) from dual;
            commit;
	        end if;
	  	end;

  end loop;
  returncode :='1';
  return;
end;
/

prompt
prompt Creating procedure TEST
prompt =======================
prompt
create or replace procedure test(orderId in varchar2) is
       table_name varchar2(64);
       bomId varchar2(64);
begin
     dbms_output.put_line('Input parameter:'||orderId);
		 --vega_boheader table
     --select t.BUSINESSTYPE into bomId from VEGA_BOHEADER t where t.e_id=orderId;

     dbms_output.put_line('Output parameter:'||bomId);

end test;
/

prompt
prompt Creating procedure UP_CLEAR_ORDER_SEQUENCE
prompt ==========================================
prompt
create or replace procedure UP_CLEAR_ORDER_SEQUENCE is
v_sql varchar2(1000);
begin

  v_sql:='DROP SEQUENCE ORDER_SEQUENCE';
  execute immediate v_sql;
  v_sql:='create sequence ORDER_SEQUENCE start with 1 increment by 1';
  execute immediate v_sql;
end UP_CLEAR_ORDER_SEQUENCE;
/

prompt
prompt Creating procedure UP_STATS_ORDERTYPE
prompt =====================================
prompt
create or replace procedure UP_STATS_ORDERTYPE
(
   avc_day in varchar2,  --统计日期 YYYYMMDD
   an_return out number,  -- 返回值（0 成功，-1 失败）
   avc_mess  out varchar2
) as
/****************************************************************************
* 中文名称：生成 工单类型 统计数据
* 用途：    生成 日期 avc_day 对应的 工单类型统计数据
         统计 完成工单数、未完成工单数、异常工单数、工单总数、回退工单数
* 作者：
* 时间:	2009-7-29
* 输入参数:见上参数表相对应的说明
* 输出值:	返回值（0－成功，－1－失败）
* 修改人:   何靖
* 修改时间: 调整原有存储过程，增加返回结果

* 简单说明:
***************************************************************************/
n_line number(10,0);

begin
	n_line :=10;
	avc_mess:='';
  an_return:=0;

  n_line := 20;
  --检查本日更新是否已经完成或有进程在执行，如果有，则退出

  n_line := 30;
  --删除统计表中对应日期的数据
  DELETE FROM STATS_ORDER_TYPE T WHERE T.STATS_DAY=avc_day;

  n_line := 40;
  --插入统计日期的空数据
  insert into stats_order_type
  SELECT avc_day,T.CODE,T.LABEL,0 N_FINISHED,0 N_UNFINISHED,0 N_ERROR,0 N_TOTAL,0 WITHDRAW
  FROM CEB_APP_TYPE_CODE T
  WHERE T.CATEGORY='WORKORDER_TYPE';


  n_line := 50;
  --更新 完成工单数  STATUS=9003
  UPDATE STATS_ORDER_TYPE T
  SET T.FINISHEDCOUNT = (
      SELECT COUNT(*)
      FROM VEGA_BOHEADER A
      WHERE TO_CHAR(A.REQUESTTIME,'YYYYMMDD')=avc_day
            AND A.STATUS=9003 AND A.BIZTYPECODE=T.WORKORDER_TYPE )
  WHERE T.STATS_DAY=AVC_DAY
      AND EXISTS ( SELECT 1
      FROM VEGA_BOHEADER A
      WHERE TO_CHAR(A.REQUESTTIME,'YYYYMMDD')=avc_day
            AND A.STATUS=9003 AND A.BIZTYPECODE=T.WORKORDER_TYPE );

  n_line := 60;
  --更新 未完成工单数 STATUS=9001 OR STATUS=9002
  UPDATE STATS_ORDER_TYPE T
  SET T.UNFINISHEDCOUNT = (
      SELECT COUNT(*)
      FROM VEGA_BOHEADER A
      WHERE TO_CHAR(A.REQUESTTIME,'YYYYMMDD')=avc_day
            AND (A.STATUS=9001 OR A.STATUS=9002) AND A.BIZTYPECODE=T.WORKORDER_TYPE )
  WHERE T.STATS_DAY=AVC_DAY
       AND EXISTS ( SELECT 1
      FROM VEGA_BOHEADER A
      WHERE TO_CHAR(A.REQUESTTIME,'YYYYMMDD')=avc_day
            AND (A.STATUS=9001 OR A.STATUS=9002) AND A.BIZTYPECODE=T.WORKORDER_TYPE );

  n_line := 70;
  --更新 异常工单数 STATUS IN (9005 9006 9007 9009 9010)
  UPDATE STATS_ORDER_TYPE T
  SET T.ERRORCOUNT = (
      SELECT COUNT(*)
      FROM VEGA_BOHEADER A
      WHERE TO_CHAR(A.REQUESTTIME,'YYYYMMDD')=avc_day
            AND A.STATUS IN (9005,9006,9007,9009,9010) AND A.BIZTYPECODE=T.WORKORDER_TYPE )
  WHERE T.STATS_DAY=AVC_DAY
       AND EXISTS ( SELECT 1
      FROM VEGA_BOHEADER A
      WHERE TO_CHAR(A.REQUESTTIME,'YYYYMMDD')=avc_day
            AND A.STATUS IN (9005,9006,9007,9009,9010) AND A.BIZTYPECODE=T.WORKORDER_TYPE );

  n_line := 80;
  --更新 总工单数
  UPDATE STATS_ORDER_TYPE T
  SET T.TOTALCOUNT = (
      SELECT COUNT(*)
      FROM VEGA_BOHEADER A
      WHERE TO_CHAR(A.REQUESTTIME,'YYYYMMDD')=avc_day
            AND A.BIZTYPECODE=T.WORKORDER_TYPE )
  WHERE T.STATS_DAY=AVC_DAY
       AND EXISTS ( SELECT 1
      FROM VEGA_BOHEADER A
      WHERE TO_CHAR(A.REQUESTTIME,'YYYYMMDD')=avc_day
            AND A.BIZTYPECODE=T.WORKORDER_TYPE );

  n_line := 90;
  --更新 回退工单数
  UPDATE STATS_ORDER_TYPE T
  SET T.WITHDRAWCOUNT = (
      SELECT COUNT(*)
      FROM VEGA_BOHEADER A
      WHERE TO_CHAR(A.REQUESTTIME,'YYYYMMDD')=avc_day
            AND A.BIZTYPECODE=T.WORKORDER_TYPE
            AND EXISTS
                (SELECT 1
                 FROM VTM_TASKEVENT_HISTORY T1,VTM_TASK T2,VTM_ACTIVITY_INS T3
                 WHERE T1.EVENTTYPEID='RETROVERSION_TASK' AND T1.TASKID=T2.TASKID
                       AND T2.AINSID=T3.INSTANCEID AND T3.BOMINSID=A.E_ID))
  WHERE T.STATS_DAY=AVC_DAY
       AND EXISTS ( SELECT 1
           FROM VEGA_BOHEADER A
           WHERE TO_CHAR(A.REQUESTTIME,'YYYYMMDD')=avc_day
            AND A.BIZTYPECODE=T.WORKORDER_TYPE
            AND EXISTS
                (SELECT 1
                 FROM VTM_TASKEVENT_HISTORY T1,VTM_TASK T2,VTM_ACTIVITY_INS T3
                 WHERE T1.EVENTTYPEID='RETROVERSION_TASK' AND T1.TASKID=T2.TASKID
                       AND T2.AINSID=T3.INSTANCEID AND T3.BOMINSID=A.E_ID));
  COMMIT;
  --更新日志（待补充）
  an_return:=0;
  avc_mess:='Success...';

EXCEPTION
  WHEN OTHERS THEN
    an_return:=-1;
    avc_mess := 'Line='||n_line||',OraError='||SQLCODE||','||SQLERRM(SQLCODE);
    --写日志信息（待补充）
    ROLLBACK;
    --记录错误信息（待补充）
    return;

end UP_STATS_ORDERTYPE;
/

prompt
prompt Creating procedure UP_STATS_REPLY_RESULT
prompt ========================================
prompt
create or replace procedure UP_STATS_REPLY_RESULT
(
   avc_day in varchar2,  --统计日期 YYYYMMDD
   an_return out number,  -- 返回值（0 成功，-1 失败）
   avc_mess  out varchar2
) as
/****************************************************************************
* 中文名称：生成 工单处理结果 统计数据
* 用途：    生成 日期 avc_day 对应的 工单处理结果统计数据
         统计 各类工单 处理结果（同意、不同意） 以及细类统计
* 作者： 何靖
* 时间:	2009-7-29
* 输入参数:见上参数表相对应的说明
* 输出值:	返回值（0－成功，－1－失败）
* 修改人:   何靖
* 修改时间:

* 简单说明: 调整原有存储过程，增加返回结果
***************************************************************************/
n_line number(10,0);

begin
  n_line := 0;
/*
insert into stats_replication_result(ordertypecode,ordertype,orderkind,agree,agreetype,disagree,disagreetype,day)
  (select t1.biztypecode,t1.biztypename, t1.bizinfo1, t2.agree_count,t2.agree_type, t3.disagree_count,t3.disagree_type,today
  from (select distinct (t.bizinfo1), t.biztypename,t.biztypecode
          from vega_boheader t
         where t.bizinfo11 is not null
           and t.biztypename is not null
           and to_date(to_char(t.requesttime, 'YYYY-MM-DD'), 'YYYY-MM-DD') =
               to_date(today, 'YYYY-MM-DD')) t1,
       (select t1.biztypename, t1.bizinfo1, count(t1.e_id) as agree_count,t2.label as agree_type
          from vega_boheader t1, ceb_result_type t2
         where t1.bizinfo11 = t2.code
           and t2.type = '同意'
           and to_date(to_char(t1.requesttime, 'YYYY-MM-DD'), 'YYYY-MM-DD') =
               to_date(today, 'YYYY-MM-DD')
         group by t1.biztypename, t1.bizinfo1,t2.label) t2,
       (select t1.biztypename, t1.bizinfo1, count(t1.e_id) as disagree_count,t2.label as disagree_type
          from vega_boheader t1, ceb_result_type t2
         where t1.bizinfo11 = t2.code
           and t2.type = '不同意'
           and to_date(to_char(t1.requesttime, 'YYYY-MM-DD'), 'YYYY-MM-DD') =
               to_date(today, 'YYYY-MM-DD')
         group by t1.biztypename, t1.bizinfo1,t2.label) t3
 where (t1.biztypename = t2.biztypename(+))
   and t1.biztypename = t3.biztypename(+));
   */

end UP_STATS_REPLY_RESULT;
/

prompt
prompt Creating procedure WRITE_LOG
prompt ============================
prompt
create or replace procedure write_log(msg in varchar2,complete_time in varchar2) is
begin
insert into movedata_log values ( msg,complete_time );
commit;
end write_log;
/


spool off
