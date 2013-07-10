---------------------------------------------------
-- Export file for user CMBCTESTUSER             --
-- Created by Administrator on 2013-7-5, 0:12:17 --
---------------------------------------------------

spool cmbctestsql.log

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
start with 421
increment by 1
cache 20;

prompt
prompt Creating sequence CEBBPM_S1
prompt ===========================
prompt
create sequence CEBBPM_S1
minvalue 1
maxvalue 9999999999999999999
start with 141
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence CEB_M3O_ID
prompt ============================
prompt
create sequence CEB_M3O_ID
minvalue 1
maxvalue 9999999999999999999
start with 142561
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
start with 175321
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
start with 9919981831
increment by 1
cache 20;

prompt
prompt Creating sequence JOURNO
prompt ========================
prompt
create sequence JOURNO
minvalue 1
maxvalue 999999
start with 241
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
start with 185783
increment by 1
cache 20;

prompt
prompt Creating sequence ORDER_SEQUENCE
prompt ================================
prompt
create sequence ORDER_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 9919980491
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
prompt Creating sequence SEQ_EBANK
prompt ===========================
prompt
create sequence SEQ_EBANK
minvalue 1
maxvalue 10000
start with 7181
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
start with 222000
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
start with 9919980451
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
maxvalue 999999999999999
start with 4741
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
start with 17043
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
start with 181956
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
start with 1
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
start with 1221352
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
start with 1209372
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
start with 12250170
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
start with 1381000
increment by 1000
cache 20;

prompt
prompt Creating sequence VITRIA$TABLEID_SEQ
prompt ====================================
prompt
create sequence VITRIA$TABLEID_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 44195001
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
  order by vt.statustime desc;

prompt
prompt Creating view NOTIFICATIONBO
prompt ============================
prompt
create or replace view notificationbo as
(select vth.eventid,t.username as ResourceName,t.id as resourceid,vte.eventtypename as EventType,vt.taskid,va.activityname,vth.eventtime,vth.eventbody,vre.isread from vum_staff t,vtm_resource_event vre,vtm_taskevent_history vth, vtm_task vt, vtm_activity_ins vai,vmr_activity va,vmr_task_event vte where t.id=vre.resourceid and vre.eventid = vth.eventid and vth.taskid = vt.taskid and vt.ainsid= vai.instanceid and vai.activityid = va.activityid and vte.eventtypeid = vth.eventtypeid);

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
       vorg.label as deptlabel,
       vs.username,
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
       vte.errorstatus,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,
       bpi.step_out_state as orderstepoutstatus,
       bpi.time_out_state as ordertimeoutstatus,
       '0' as RetrovesionNum
  from vega_boheader t, vum_staff vs, vcm_app_status_code vasc, vmr_bom vb,bw_process_instance bpi,
  (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11002') vn1,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11003') vn2,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11001') vn3,
       (select distinct a.bominsid, 6002 as errorstatus
          from vtm_task_error a) vte,
   ( select vai.bominsid, vos.org_id, vo.label, row_number() over ( partition by vai.bominsid order by vai.bominsid) rn from vtm_task vt,vtm_activity_ins vai,Vum_Staff vr2,vum_org_staff vos,vum_org vo
        where   vt.ainsid = vai.instanceid   and vt.resourceid = vr2.id   and vt.resourceid = vos.staff_id   and vos.org_id = vo.id   and vt.status in ( 3001, 3002 )) vorg
         --vum_org vo,
   where t.e_id=vn1.bominstid(+)
   and t.e_id=vn2.bominstid(+)
   and t.e_id=vn3.bominstid(+)
   and t.e_id=vte.bominsid(+)
   and t.e_id=vorg.bominsid(+)
   and t.requestclient = vs.id
   and t.status = vasc.code
   and t.businesstype = vb.id
   and t.e_id = bpi.bom_inst_id(+)
   and ( vorg.rn < 2 or vorg.rn is null )
   order by t.requesttime desc;

prompt
prompt Creating view ORDERBO0515
prompt =========================
prompt
create or replace view orderbo0515 as
(
select t.e_id as id,
       t.orderid as orderid,
       t.priority,
       t.status,
       t.statustime as status_time,
       t.requesttime as create_time,
       t.requestclient as creator,
       t.requestdept as department,
       t.businesstype as bom_id,
       vs.username,
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
       vte.errorstatus,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,
       bpi.step_out_state as orderstepoutstatus,
       bpi.time_out_state as ordertimeoutstatus
  from vega_boheader t, vum_staff vs, vcm_app_status_code vasc, vmr_bom vb,bw_process_instance bpi,
  (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11002') vn1,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11003') vn2,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11001') vn3,
       (select distinct a.bominsid, 6002 as errorstatus
          from vtm_task_error a) vte
 where t.e_id=vn1.bominstid(+)
   and t.e_id=vn2.bominstid(+)
   and t.e_id=vn3.bominstid(+)
   and t.e_id=vte.bominsid(+)
   and t.requestclient = vs.id
   and t.status = vasc.code
   and t.businesstype = vb.id
   and t.e_id = bpi.bom_inst_id(+)
);

prompt
prompt Creating view ORDERBO0522
prompt =========================
prompt
create or replace view orderbo0522 as
(
select t.e_id as id,
       t.orderid as orderid,
       t.priority,
       t.status,
       t.statustime as status_time,
       t.requesttime as create_time,
       t.requestclient as creator,
       t.requestdept as department,
       t.businesstype as bom_id,
       vorg.label as deptlabel,
       vs.username,
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
       vte.errorstatus,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,
       bpi.step_out_state as orderstepoutstatus,
       bpi.time_out_state as ordertimeoutstatus
  from vega_boheader t, vum_staff vs, vcm_app_status_code vasc, vmr_bom vb,bw_process_instance bpi,
  (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11002') vn1,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11003') vn2,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11001') vn3,
       (select distinct a.bominsid, 6002 as errorstatus
          from vtm_task_error a) vte,
   ( select distinct vai.bominsid,vos.org_id,vo.label from vtm_task vt,vtm_activity_ins vai,Vum_Staff vr2,vum_org_staff vos,vum_org vo
        where   vt.ainsid = vai.instanceid   and vt.resourceid = vr2.id   and vt.resourceid = vos.staff_id   and vos.org_id = vo.id   and vt.status in ( 3001,3002,3064,3065)) vorg
         --vum_org vo,
 where t.e_id=vn1.bominstid(+)
   and t.e_id=vn2.bominstid(+)
   and t.e_id=vn3.bominstid(+)
   and t.e_id=vte.bominsid(+)
   and t.e_id=vorg.bominsid(+)
   and t.requestclient = vs.id
   and t.status = vasc.code
   and t.businesstype = vb.id
   and t.e_id = bpi.bom_inst_id(+)
   --and t.requestdept = vo.id
);

prompt
prompt Creating view ORDERBO0522_1
prompt ===========================
prompt
create or replace view orderbo0522_1 as
(
select t.e_id as id,
       t.orderid as orderid,
       t.priority,
       t.status,
       t.statustime as status_time,
       t.requesttime as create_time,
       t.requestclient as creator,
       t.requestdept as department,
       t.businesstype as bom_id,
       vorg.label as deptlabel,
       vs.username,
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
       vte.errorstatus,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,
       bpi.step_out_state as orderstepoutstatus,
       bpi.time_out_state as ordertimeoutstatus
  from vega_boheader t, vum_staff vs, vcm_app_status_code vasc, vmr_bom vb,bw_process_instance bpi,
  (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11002') vn1,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11003') vn2,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11001') vn3,
       (select distinct a.bominsid, 6002 as errorstatus
          from vtm_task_error a) vte,
   ( select vai.bominsid, vos.org_id, vo.label, row_number() over ( partition by vai.bominsid order by vai.bominsid) rn from vtm_task vt,vtm_activity_ins vai,Vum_Staff vr2,vum_org_staff vos,vum_org vo
        where   vt.ainsid = vai.instanceid   and vt.resourceid = vr2.id   and vt.resourceid = vos.staff_id   and vos.org_id = vo.id   and vt.status in ( 3001 )) vorg
         --vum_org vo,
 where t.e_id=vn1.bominstid(+)
   and t.e_id=vn2.bominstid(+)
   and t.e_id=vn3.bominstid(+)
   and t.e_id=vte.bominsid(+)
   and t.e_id=vorg.bominsid(+)
   and t.requestclient = vs.id
   and t.status = vasc.code
   and t.businesstype = vb.id
   and t.e_id = bpi.bom_inst_id(+)
   and vorg.rn < 2
   --and t.requestdept = vo.id
);

prompt
prompt Creating view ORDERBOCMBC
prompt =========================
prompt
create or replace view orderbocmbc as
select distinct  t.e_id as id,
       t.orderid as orderid,
       t.priority,
       t.status,
       t.statustime as statustime,
       t.requesttime as createtime,
       t.requestclient as creator,
       t.requestdept as department,
       t.businesstype as bom_id,
      -- vo.label as deptlabel,
       ( select vo.label from vtm_task vt,vtm_activity_ins vai,vum_org_staff vos,vum_org vo
         where   vt.ainsid = vai.instanceid  and vt.resourceid = vos.staff_id   and vos.org_id = vo.id   and vt.status in ( 3001, 3002 ) and vai.bominsid = t.e_id and rownum = 1) as  deptlabel,
       vs.username,
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
       vte.errorstatus,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,
       bpi.step_out_state as orderstepoutstatus,
       bpi.time_out_state as ordertimeoutstatus,
      '' as RetrovesionNum
      --vt.status vtstatus
  from vega_boheader t, vum_staff vs, vcm_app_status_code vasc, vmr_bom vb,bw_process_instance bpi,
  (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11002') vn1,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11003') vn2,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11001') vn3,
       (select distinct a.bominsid, 6002 as errorstatus
          from vtm_task_error a) vte
       -- vtm_task vt,
       -- vtm_activity_ins vai,
      --  vum_org_staff vos,
       -- vum_org vo
 --  ( select vai.bominsid, vos.org_id, vo.label, row_number() over ( partition by vai.bominsid order by vai.bominsid) rn from vtm_task vt,vtm_activity_ins vai,Vum_Staff vr2,vum_org_staff vos,vum_org vo
  --      where   vt.ainsid = vai.instanceid   and vt.resourceid = vr2.id   and vt.resourceid = vos.staff_id   and vos.org_id = vo.id   and vt.status in ( 3001, 3002 )) vorg
         --vum_org vo,
   where t.e_id=vn1.bominstid(+)
   and t.e_id=vn2.bominstid(+)
   and t.e_id=vn3.bominstid(+)
   and t.e_id=vte.bominsid(+)
   --and vt.ainsid = vai.instanceid
   --and vt.resourceid = vos.staff_id
   --and vo.id=vos.org_id
  -- and vt.status in ( 3001, 3002 )
   --and t.e_id = vai.bominsid
   --and t.e_id=vorg.bominsid(+)
   and t.requestclient = vs.id
   and t.status = vasc.code
   and t.businesstype = vb.id
   and t.e_id = bpi.bom_inst_id(+)
   --and ( vorg.rn < 2 or vorg.rn is null )
   --order by t.requesttime desc;

prompt
prompt Creating view ORDERBO_0617
prompt ==========================
prompt
create or replace view orderbo_0617 as
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
       bpi.step_out_state as orderstepoutstatus,
       bpi.time_out_state as ordertimeoutstatus,
       --( select vo.label from vtm_task vt,vtm_activity_ins vai,vum_org_staff vos,vum_org vo
        -- where   vt.ainsid = vai.instanceid  and vt.resourceid = vos.staff_id   and vos.org_id = vo.id   and vt.status in ( 3001, 3002 ) and vai.bominsid = t.e_id and rownum = 1) as  deptlabel,
     ( select vt.departmentlabel from vtm_task vt
         where  vt.status in ( 3001, 3002 ) and vt.bominsid = t.e_id and rownum = 1) as  deptlabel,
      -- vte.errorstatus,
       (select 6002 as errorstatus from vtm_task_error a where a.bominsid = t.e_id and rownum = 1) as errorstatus,
      -- vn1.type as urgency,
       (select a.type from vtm_urgent a  where type = '11002' and a.bominstid = t.e_id and rownum = 1) as urgency,
       --vn2.type as supplement,
       (select a.type from vtm_urgent a  where type = '11003' and a.bominstid = t.e_id and rownum = 1) as supplement,
      -- vn3.type as remarks,
       (select a.type from vtm_urgent a  where type = '11001' and a.bominstid = t.e_id and rownum = 1) as remarks,
     -- '' as RetrovesionNum
    (select count(*) from vtm_form_ins tt where tt.task_id like 'Retrovesion%' and tt.bom_inst_snbr=t.e_id) as RetrovesionNum
      --vt.status vtstatus
  from vega_boheader t,bw_process_instance bpi,/* vum_staff vs,*/ vcm_app_status_code vasc, vmr_bom vb
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
   and t.e_id = bpi.bom_inst_id(+)
   --and ( vorg.rn < 2 or vorg.rn is null )
   order by t.requesttime desc,t.orderid desc
   --order by t.e_id desc;

prompt
prompt Creating view ORDERBO_0818
prompt ==========================
prompt
create or replace view orderbo_0818 as
select t.e_id as id,
       t.orderid as orderid,
       t.priority,
       t.status,
       t.statustime as statustime,
       t.requesttime as createtime,
       t.requestclient as creator,
       t.requestdept as department,
       t.businesstype as bom_id,
       vorg.label as deptlabel,
       vs.username,
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
       vte.errorstatus,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,
       bpi.step_out_state as orderstepoutstatus,
       bpi.time_out_state as ordertimeoutstatus,
       (select count(*) from vtm_form_ins tt where tt.task_id like 'Retrovesion%' and tt.bom_inst_snbr=t.e_id) as RetrovesionNum
  from vega_boheader t, vum_staff vs, vcm_app_status_code vasc, vmr_bom vb,bw_process_instance bpi,
  (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11002') vn1,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11003') vn2,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11001') vn3,
       (select distinct a.bominsid, 6002 as errorstatus
          from vtm_task_error a) vte,
   ( select vai.bominsid, vos.org_id, vo.label, row_number() over ( partition by vai.bominsid order by vai.bominsid) rn from vtm_task vt,vtm_activity_ins vai,Vum_Staff vr2,vum_org_staff vos,vum_org vo
        where   vt.ainsid = vai.instanceid   and vt.resourceid = vr2.id   and vt.resourceid = vos.staff_id   and vos.org_id = vo.id   and vt.status in ( 3001, 3002 )) vorg
         --vum_org vo,
   where t.e_id=vn1.bominstid(+)
   and t.e_id=vn2.bominstid(+)
   and t.e_id=vn3.bominstid(+)
   and t.e_id=vte.bominsid(+)
   and t.e_id=vorg.bominsid(+)
   and t.requestclient = vs.id
   and t.status = vasc.code
   and t.businesstype = vb.id
   and t.e_id = bpi.bom_inst_id(+)
   and ( vorg.rn < 2 or vorg.rn is null )
   order by t.priority desc,t.orderid desc;

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
  order by t.requesttime desc, t.orderid desc;

prompt
prompt Creating view ORG_STAFF_VIEW
prompt ============================
prompt
create or replace view org_staff_view as
(
select vos.staff_id,
       vs.username,
       vos.org_id curorgid,
       nvl(nvl(nvl(nvl(vo5.label,vo4.label),vo3.label),vo2.label),vo1.label) curorglabel,
       vo1.id l1,
       vo2.id l2,
       vo3.id l3,
       vo4.id l4,
       vo5.id l5,
       vo1.label label1,
       vo2.label label2,
       vo3.label label3,
       vo4.label label4,
       vo5.label label5
  from vum_org_staff vos,
       vum_staff     vs,
       vum_org       vo1,
       vum_org       vo2,
       vum_org       vo3,
       vum_org       vo4,
       vum_org       vo5
 where vos.staff_id=vs.id
   and vo1.id like 'CMBC'
   and decode(TRUNC(length(vos.org_id) / 4),
              0,
              null,
              substr(vos.org_id, 0, 4)) = vo1.id(+)
   and decode(TRUNC(length(vos.org_id) / 7),
              0,
              null,
              substr(vos.org_id, 0, 7)) = vo2.id(+)
   and decode(TRUNC(length(vos.org_id) / 10),
              0,
              null,
              substr(vos.org_id, 0, 10)) = vo3.id(+)
   and decode(TRUNC(length(vos.org_id) / 12),
              0,
              null,
              substr(vos.org_id, 0, 12)) = vo4.id(+)
   and decode(TRUNC(length(vos.org_id) / 14),
              0,
              null,
              substr(vos.org_id, 0, 14)) = vo5.id(+)
);

prompt
prompt Creating view ORG_STAFF_VIEW_LQ2
prompt ================================
prompt
create or replace view org_staff_view_lq2 as
(select tmp.label1,tmp.label2,tmp.label3,tmp.label4,tmp.label5,
        tmp.curorglabel||tmp.username orgsttaff
 from
    (select vos.staff_id,
           vs.username username,
           vos.org_id curorgid,
           nvl(nvl(nvl(nvl(vo5.label,vo4.label),vo3.label),vo2.label),vo1.label) curorglabel,
           vo1.id l1,
           vo2.id l2,
           vo3.id l3,
           vo4.id l4,
           vo5.id l5,
           vo1.label label1,
           vo2.label label2,
           vo3.label label3,
           vo4.label label4,
           vo5.label label5
      from vum_org_staff vos,
           vum_staff     vs,
           vum_org       vo1,
           vum_org       vo2,
           vum_org       vo3,
           vum_org       vo4,
           vum_org       vo5
           --vum_org       vo6
           --vum_org       vo7,
           --vum_org       vo8,
           --vum_org       vo9,
           --vum_org       vo10,
     where vos.staff_id=vs.id
       and vo1.id like 'CMBC'
       and decode(TRUNC(length(vos.org_id) / 4),
                  0,
                  null,
                  substr(vos.org_id, 0, 4)) = vo1.id(+)
       and decode(TRUNC(length(vos.org_id) / 7),
                  0,
                  null,
                  substr(vos.org_id, 0, 7)) = vo2.id(+)
       and decode(TRUNC(length(vos.org_id) / 10),
                  0,
                  null,
                  substr(vos.org_id, 0, 10)) = vo3.id(+)
       and decode(TRUNC(length(vos.org_id) / 12),
                  0,
                  null,
                  substr(vos.org_id, 0, 12)) = vo4.id(+)
       and decode(TRUNC(length(vos.org_id) / 14),
                  0,
                  null,
                  substr(vos.org_id, 0, 14)) = vo5.id(+)
    ) tmp
);

prompt
prompt Creating view ORG_VIEW
prompt ======================
prompt
create or replace view org_view as
(
select vo.id curorgid,
       vo1.id l1,
       vo2.id l2,
       vo3.id l3,
       vo4.id l4,
       vo5.id l5,
       vo1.label label1,
       vo2.label label2,
       vo3.label label3,
       vo4.label label4,
       vo5.label label5
  from vum_org       vo,
       vum_org       vo1,
       vum_org       vo2,
       vum_org       vo3,
       vum_org       vo4,
       vum_org       vo5
 where vo1.id like 'CMBC'
   and decode(TRUNC(length(vo.id) / 4),0,null,substr(vo.id, 0, 4)) = vo1.id(+)
   and decode(TRUNC(length(vo.id) / 7),0,null,substr(vo.id, 0, 7)) = vo2.id(+)
   and decode(TRUNC(length(vo.id) / 10),0,null,substr(vo.id, 0, 10)) = vo3.id(+)
   and decode(TRUNC(length(vo.id) / 12),0,null,substr(vo.id, 0, 12)) = vo4.id(+)
   and decode(TRUNC(length(vo.id) / 14),0,null,substr(vo.id, 0, 14)) = vo5.id(+)
);

prompt
prompt Creating view QUEST_SOO_AT_EXECUTION_PLAN_V
prompt ===========================================
prompt
CREATE OR REPLACE VIEW QUEST_SOO_AT_EXECUTION_PLAN_V AS
SELECT trace_file_id, ep.sql_id, ep.parse_id, ep.ID, ep.cnt, ep.pid,
          ep.pos, ep.obj, ep.cr, ep.pr, ep.pw, ep.time_us,
          o.operation_string op
     FROM quest_soo_at_execution_plan ep JOIN quest_soo_at_operations o
          USING (trace_file_id, operation_id);

prompt
prompt Creating view QUEST_SOO_AT_SQL_WAITS_V
prompt ======================================
prompt
CREATE OR REPLACE VIEW QUEST_SOO_AT_SQL_WAITS_V AS
SELECT *
  FROM quest_soo_at_sql_waits
  JOIN quest_soo_at_wait_names USING (event_id);

prompt
prompt Creating view REPORT_ORDER_TASK_VIEW
prompt ====================================
prompt
create or replace view report_order_task_view as
(
   select vt."TASKID",
          vt."PTASKID",
          vt."AINSID",
          vt."PRIORITY",
          vt."STATUS",
          vt."STATUSTIME",
          vt."CREATEDTIME",
          vt."OWNER",
          vt."RESOURCEID",
          vt."PARENTRESOURCEID",
          vt."TIMEOUTSTATUS",
          vt."SUSPENDPRESTATUS",
          vt."SCORE",
          vt."SCOREDETAIL",
          vt."OVERTIME",
          vt."FIRSTTIMEOUTDATE",
          vt."SECONDTIMEOUTDATE",
          vt."THIRDTIMEOUTDATE",
          vt."FOURTHTIMEOUTDATE",
          vt."FIFTHTIMEOUTDATE",
          vt."PERFORMANCE",
          vt.ainsid activity_inst_id,
          vt.bominsid,
          vt.retroversioncount,
          va.activityid,
          va.activitylabel ,
          head.biztypecode bizType,
          head.status order_status,
          head.orderid,
          head.requestdept,
          head.biztypename,
          dbt.id,
          dbt.name,
          dbt.label,
          dbt.category_id,
          dbt.score taskscore
     from vtm_task            vt,
          vmr_activity va,
          vega_boheader       head,
          CMBC_DICT_CUSTOMER_BUSI_TYPE dbt,
          bw_process_instance_data   pi
    where (vt.activityid <> 'FSWF_CC_CSR_BOM01_INITTASK' and vt.activityid <> 'FSWF_CC_CSR_BOM02_INITTASK')
      and vt.activityid = va.activityid
      and head.biztypecode = dbt.id
      and pi.bom_inst_id = head.e_id
      and vt.bominsid = head.e_id
  );

prompt
prompt Creating view REPORT_ORDER_TASK_VIEW_INIT
prompt =========================================
prompt
create or replace view report_order_task_view_init as
(
   select vt."TASKID",
          vt."PTASKID",
          vt."AINSID",
          vt."PRIORITY",
          vt."STATUS",
          vt."STATUSTIME",
          vt."CREATEDTIME",
          vt."OWNER",
          vt."RESOURCEID",
          vt."PARENTRESOURCEID",
          vt."TIMEOUTSTATUS",
          vt."SUSPENDPRESTATUS",
          vt."SCORE",
          vt."SCOREDETAIL",
          vt."OVERTIME",
          vt."FIRSTTIMEOUTDATE",
          vt."SECONDTIMEOUTDATE",
          vt."THIRDTIMEOUTDATE",
          vt."FOURTHTIMEOUTDATE",
          vt."FIFTHTIMEOUTDATE",
          vt."PERFORMANCE",
          vai.instanceid activity_inst_id,
          vai.bominsid,
          va.activityid,
          va.activitylabel ,
          bo.biztypecode bizType,
          head.status order_status
     from vtm_task            vt,
          vtm_activity_ins    vai,
          vmr_activity va,
          FSWF_CC_CSR_BOM01   bom_inst,
          FSWF_CC_CSR_BOM01_2 bo,
          vega_boheader       head,
          CMBC_DICT_CUSTOMER_BUSI_TYPE dbt,
          bw_process_instance   pi
    where  vai.instanceid = vt.ainsid
      and va.activityid=vai.activityid
      and dbt.id = bo.bizTypeCode
      and pi.bom_inst_id = head.e_id
      and bom_inst.e_id = vai.bominsid
      and bom_inst.fswfcccsrbom011_body_e_id = bo.e_id
      and bom_inst.vegaboheader_head_e_id = head.e_id
  );

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
 order by vb.biztypecode;

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
 where vt.ainsid = vai.instanceid
   and vai.bominsid = vh.e_id(+)
  -- and vt.resourceid = vs.id
 --  and vt.resourceid = vos.staff_id
 --  and vos.org_id = vo.id
   and vt.status = vasc.code
   and vai.activityid = va.activityid
   and vt.taskid = vte.taskid(+)
   --and vt.bominsid = vn1.bominstid (+)
   and vt.taskid=vn1.taskid (+)
   --and vai.BOMINSID = vte.bominsid(+)
   --and vai.BOMINSID = vn1.bominstid(+)
   and vt.status <> '3004';

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
  --     crt.type result,  --处理结果
  --    vt.taskid,       --任务号
 --      vt.status,       --状态
 --      vasc.label taskstatuslabel , --任务状态
  --     vasc1.label orderstatuslabel, --工单状态
   --    vt.statustime,    --发起时间
   --    vt.createdtime,   --创建时间
       vt.resourceid processorid,
       vt.resourcelabel processorname,  --处理人
    --   (select vo.id from vum_org vo,vum_org_staff vos where vos.org_id=vo.id and vt.resourceid=vos.staff_id) depid,
    --   (select vo.label from vum_org vo,vum_org_staff vos where vos.org_id=vo.id and vt.resourceid=vos.staff_id) deplabel,
       vo.id depid, --处理人所在部门id
       vo.label deplabel,--处理人所在部门
    --   vt.departmentid depid,           --处理人所在部门id
     --  vt.departmentname deplabel,     --处理人所在部门
 /*      decode( vt.timeoutstatus,4001,'未超时','超时')  as timeoutstatus,*/
       va."ACTIVITYLABEL" ,  --步骤名称
       (select '差错' as errorstatus from vtm_task_error a where a.bominsid = vh.e_id and rownum = 1) as errorstatus,
       (select '催办' from vtm_urgent a  where type = '11002' and a.bominstid = vh.e_id and rownum = 1) as urgency,
       case when va.activitylabel like '%重填%'
            then '重填'
            else ''
        end refill,
       vt.retroversioncount as RetrovesionNum --回退次数
  from
       vtm_task vt,
       vega_boheader vh,
  --     vtm_activity_ins vai,
       vmr_activity va ,
       vum_org vo,
       vum_org_staff vos
    --   vcm_app_status_code vasc,
    --   vcm_app_status_code vasc1
   --   ceb_result_type crt*/
 /*      (select distinct a.taskid, a.type
          from vtm_urgent a
         where a.type = '11002') vn1,
       (select distinct a.taskid, 6002 as errorstatus
          from vtm_task_error a) vte
*/
 where
   vt.bominsid = vh.e_id(+)
 --  and vt.status = vasc.code
  -- and vh.status = vasc1.code
   and vt.activityid = va.activityid
   and vt.resourceid = vos.staff_id
   and vos.org_id = vo.id
/*   and vh.bizinfo11 = crt.code(+)*/
   and vt.status <> '3004';

prompt
prompt Creating view REPORT_TASK_REMARK_BAK
prompt ====================================
prompt
create or replace view report_task_remark_bak as
select vb.e_id,vb.orderid,
      vb.requesttime,
      vb.biztypecode as ordertypecode,
      vb.biztypename as ordertype,
       vb.bizinfo1,--工单小类
       --vb.bizinfo5,--重填次数
       vb.status,
       vte.owner,--差错人id
       vte.ownername,--拆错id
       (select vo.label from vum_org vo,vum_org_staff vos where vos.staff_id=vte.owner and vos.org_id=vo.id) deptname,
       (select vo.id from vum_org vo,vum_org_staff vos where vos.staff_id=vte.owner and vos.org_id=vo.id) deptid,
       '差错' remarkstatus
  from vtm_task_error vte, vega_boheader vb
 where vte.bominsid = vb.e_id
 union
 select vb.e_id,vb.orderid,
      vb.requesttime,
      vb.biztypecode as ordertypecode,
      vb.biztypename as ordertype,
       vb.bizinfo1,--工单小类
       --vb.bizinfo5,--重填次数
       vb.status,
       vu.charger,--被催id
       vu.chargername,--被催人
       (select vo.label from vum_org vo,vum_org_staff vos where vos.staff_id=vu.charger and vos.org_id=vo.id) deptname,
       (select vo.id from vum_org vo,vum_org_staff vos where vos.staff_id=vu.charger and vos.org_id=vo.id) deptid,
       '催办' remarkstatus
  from vtm_urgent vu, vega_boheader vb
 where vu.bominstid=vb.e_id and vu.type = '11002'
union
 select vb.e_id,vb.orderid,
      vb.requesttime,
      vb.biztypecode as ordertypecode,
      vb.biztypename as ordertype,
       vb.bizinfo1,--工单小类
       --vb.bizinfo5,--重填次数
       vb.status,
       vfi.operator,--差错人id
       vfi.operatorname,--拆错id
       (select vo.label from vum_org vo,vum_org_staff vos where vos.staff_id=vfi.operator and vos.org_id=vo.id) deptname,
       (select vo.id from vum_org vo,vum_org_staff vos where vos.staff_id=vfi.operator and vos.org_id=vo.id) deptid,
       '回退' remarkstatus
  from vtm_form_ins vfi, vega_boheader vb
 where vfi.bom_inst_snbr=vb.e_id and task_id like 'Retrovesion%'
 union
 select vb.e_id,vb.orderid,
      vb.requesttime,
      vb.biztypecode as ordertypecode,
      vb.biztypename as ordertype,
       vb.bizinfo1,--工单小类
       --vb.bizinfo5,--重填次数
       vb.status,
       vb.requestclient,--被重填人id
       --vu.charger,--被催id
       vb.requestclientlabel,--被重填人
       --vu.chargername,--被催人
       vb.requestdeptlabel deptname,
       vb.requestdept,
       --(select vo.label from vum_org vo,vum_org_staff vos where vos.staff_id=vu.charger and vos.org_id=vo.id) deptname,
       case when vb.bizinfo5='0' or vb.bizinfo5 =''
            then ''
            else '重填'
        end remarkstatus
       --'重填' remarkstatus
  from vega_boheader vb
 --where vu.bominstid=vb.e_id;

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
       '' as ACTIVITYNAME,
       '' as ACTIVITYPRIORITY,
       '' as ACTIVITYWORKLOAD,
       '' as ASSIGNMENTID,
       vt.formid as ACTIVITYFORMID,
       va."ACTIVITYLABEL", --vmr_activity
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
       vmr_activity va,
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
   vt.activityid = va.activityid
   --and va.ACTIVITYBOMID = vb.id
   and vt.BOMINSID = vh.e_id(+)
/*
   and vt.BOMINSID = vte.bominsid(+)
   and vt.BOMINSID = vn1.bominstid(+)
   and vt.BOMINSID = vn2.bominstid(+)
   and vt.BOMINSID = vn3.bominstid(+)
   */
   and vt.BOMINSID = bpia.bom_inst_id(+)
   --and vt.taskid = vfi.task_id(+)
  -- )
  order by vt.statustime desc;

prompt
prompt Creating view TASKBO_0509
prompt =========================
prompt
create or replace view taskbo_0509 as
(
select t."TASKID",
       t."PTASKID",
       t."AINSID",
       t."PRIORITY",
       t."STATUS",
       t."STATUSTIME",
       t."CREATEDTIME",
       t."OWNER",
       t."RESOURCEID",
       t."TIMEOUTSTATUS",
       t."CODE",
       t."USERNAME",
       t."ORDERSEQUENCE",
       t."ACTIVITYNAME",
       t."ACTIVITYPRIORITY",
       t."ACTIVITYWORKLOAD",
       t."ASSIGNMENTID",
       t.firsttimeoutdate,
       t."ACTIVITYFORMID",
       t."ACTIVITYLABEL",
       t."ACTIVITYBOMID",
       t."BOMINSID",
       t."ACTIVITYID",
       t.score,
       t.scoredetail,
       t.performance,
       t.deptid,
       t.departmentid,
       vte.errorstatus,
       vr.username as ownername,
       vb.name as bomname,
       vb.label as bomlabel,
       vh.status as orderstatus,
       vh.orderabstract,
       vh.orderduedate,
       vh.orderlt,
       vh.currentstepcode,
       vh.currentstepname,
       vh.currentsteplabel,
       vh.currentstepduedate,
       vh.stepstarttime,
       vh.currentsteplt,
       vh.biztypecode,
       vh.biztypename,
       vh.bizinfo1,
       vh.bizinfo2,
       vh.bizinfo3,
       vh.bizinfo4,
       vh.bizinfo5,
       vh.orderid,
       vn1.type as urgency,
       vn2.type as supplement,
       vn3.type as remarks,
       bpi.step_count as stepcount,
       bpi.time_out_state as ordertimeoutstatus,
       bpi.step_out_state as orderstepoutstatus,
       vfi.process_suggestion as suggestion
  from (select t.taskid,
               t.ptaskid,
               t.ainsid,
               t.priority,
               t.status,
               t.statustime,
               t.createdtime,
               t.score,
               t.scoredetail,
               t.performance,
               t.owner,
               t.resourceid,
               t.timeoutstatus,
               t.errorstatus,
               t.firsttimeoutdate,
               t.departmentid,
               vr.code,
               vr.username,
               vai.ordersequence,
               va.activityname,
               va.activitypriority,
               va.activityworkload,
               va.assignmentid,
               va.activityformid,
               va.activitylabel,
               va.activitybomid,
               vai.bominsid,
               vai.activityid,
               vos.org_id as deptid
          from vtm_task         t,
               vtm_activity_ins vai,
               vmr_activity     va,
               Vum_Staff        vr,
               vum_org_staff    vos
         where t.ainsid = vai.instanceid
           and vai.activityid = va.activityid
           and t.resourceid = vr.id
           and t.resourceid = vos.staff_id) t,
       Vum_Staff vr,
       vmr_bom vb,
       vega_boheader vh,
       bw_process_instance bpi,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11002') vn1,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11003') vn2,
       (select distinct a.bominstid, a.type
          from vtm_urgent a
         where type = '11001') vn3,
       (select *
          from vtm_form_ins m
         where m.form_def_id is not null
           and rownum = 1
         order by m.operate_time desc) vfi,
       (select distinct a.bominsid, 6002 as errorstatus
          from vtm_task_error a) vte
 where t.taskid = vfi.task_id(+)
   and t.BOMINSID = bpi.bom_inst_id
   and t.owner = vr.id
   and t.ACTIVITYBOMID = vb.id
   and t.BOMINSID = vh.e_id
   and t.BOMINSID = vn1.bominstid(+)
   and t.BOMINSID = vn2.bominstid(+)
   and t.BOMINSID = vn3.bominstid(+)
   and t.BOMINSID = vte.bominsid(+)
);

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
   and va.ACTIVITYBOMID = vb.id
   and vt.BOMINSID = vh.e_id(+)
/*
   and vt.BOMINSID = vte.bominsid(+)
   and vt.BOMINSID = vn1.bominstid(+)
   and vt.BOMINSID = vn2.bominstid(+)
   and vt.BOMINSID = vn3.bominstid(+)
   */
   and vt.BOMINSID = bpi.bom_inst_id(+)
   --and vt.taskid = vfi.task_id(+)
  -- )
  order by vt.statustime desc;

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
  order by vt.statustime desc;

prompt
prompt Creating view TASKBO_CHENGDC
prompt ============================
prompt
create or replace view taskbo_chengdc as
(
select
       vt."TASKID", --vtm_task
       vt.intodepttimes,
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
       va."ACTIVITYNAME", --vmr_activity
       va."ACTIVITYPRIORITY", --vmr_activity
       va."ACTIVITYWORKLOAD", --vmr_activity
       va."ASSIGNMENTID", --vmr_activity
       va."ACTIVITYFORMID", --vmr_activity
       va."ACTIVITYLABEL", --vmr_activity
       va."ACTIVITYBOMID" , --vmr_activity
       vai."BOMINSID", --vtm_activity_inst
       vai."ACTIVITYID", --vtm_activity_inst
       vai."ORDERSEQUENCE", --vtm_activity_inst
       vr1.username as ownername, --Vum_Staff
       vr2."CODE", --vum_staff
       vr2."USERNAME", --vum_staff
       vos.org_id as deptid, --vum_org_staff
       vte.errorstatus, --vtm_task_error
       vb.name as bomname, --vmr_bom
       vb.label as bomlabel, --vmr_bom
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
       vn1.type as urgency, --vtm_urgent
       vn2.type as supplement, --vtm_urgent
       vn3.type as remarks, --vtm_urgent
       bpi.step_count as stepcount, --bw_process_instance
       bpi.time_out_state as ordertimeoutstatus, --bw_process_instance
       bpi.step_out_state as orderstepoutstatus, --bw_process_instance
       '' as suggestion, --vtm_form_ins*/
       '0' as RETROVESIONNUM
  from vtm_task vt,
       vtm_activity_ins vai,
       vmr_activity va ,
       Vum_Staff vr1,
       Vum_Staff vr2,
       vum_org_staff vos,
       (select distinct a.bominsid, 6002 as errorstatus from vtm_task_error a) vte,
       vmr_bom vb,
       vega_boheader vh ,
       (select b.* from bw_process_bpo c, bw_process_instance b where c.processinstance$vtoid = b.vtoid ) bpi,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11002') vn1,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11003') vn2,
       (select distinct a.bominstid, a.type from vtm_urgent a where type = '11001') vn3
 where vt.ainsid = vai.instanceid
   and vt.owner = vr1.id
   and vt.resourceid = vr2.id
   and vt.resourceid = vos.staff_id
   and vai.activityid = va.activityid
   and vai.BOMINSID = vte.bominsid(+)
   and va.ACTIVITYBOMID = vb.id
   and vai.BOMINSID = vh.e_id(+)
   and vai.BOMINSID = vn1.bominstid(+)
   and vai.BOMINSID = vn2.bominstid(+)
   and vai.BOMINSID = vn3.bominstid(+)
   and vai.BOMINSID = bpi.bom_inst_id(+)
   )
   --order by vt.firsttimeoutdate, vt.priority desc, vt.createdtime desc, vt.taskid desc;

prompt
prompt Creating view TASKHISTORYFORHANDLER_VIEW
prompt ========================================
prompt
create or replace view taskhistoryforhandler_view as
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
       --'挂起' as rowno,
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
 order by ttime;

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
 --order by ttime desc;

prompt
prompt Creating view TASKHISTORYFORVIEWER_VIEW
prompt =======================================
prompt
create or replace view taskhistoryforviewer_view as
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
   and t81.id = t91.staff_id;

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
   order by ttime;

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
 --order by ttime desc;

prompt
prompt Creating type QUEST_SOO_ALERTTRACE_LINE_TYP
prompt ===========================================
prompt
CREATE OR REPLACE TYPE quest_soo_alerttrace_line_typ IS OBJECT (linedate DATE, linetext VARCHAR2(4000), filestatus NUMBER )
/

prompt
prompt Creating type QUEST_SOO_ALERTTRACE_LOG_TYP
prompt ==========================================
prompt
CREATE OR REPLACE TYPE quest_soo_alerttrace_log_typ IS TABLE OF quest_soo_alerttrace_line_typ
/

prompt
prompt Creating package QUEST_SOO_ALERTTRACE
prompt =====================================
prompt
CREATE OR REPLACE PACKAGE quest_soo_alerttrace
AS
/******************************************************************************
   NAME:       quest_soo_alerttrace
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/10/2007  Joe Tyrrell      Initial Creation
******************************************************************************/

   --initializeLines
   PROCEDURE initializelines (p_lines NUMBER, p_chunksize NUMBER);

   --  Readfile

   -- Input paramters:
   --   p_filename
   --       NULL -- Alert Log File Name
   --
   --   p_nav
   --       0  --  previous,
   --       1  --  forward.
   --       2  --  Search by Bytes
   --      -1  --  reset a file.
   --      -2  --  reset all the files position.
   --     100  --  Start of the file
   --     101  --  End of the file
   --
   --   p_search
   --       NULL - No search
   --       If p_nav is 2 then it must be numeric.
   --
   --   p_casesensitive
   --       0 - No Case Sensitive
   --       1 - Case Sensitive
   --   r_read_seconds
   --       5 - Default number of seconds a string search
   --           will be performed on file.
   --           If no values are found in allocated time
   --           1 row will be returned with position, date, and 'STRING NOT FOUND' text

   FUNCTION readfile (
      p_filename        VARCHAR2 DEFAULT NULL,
      p_nav             NUMBER   DEFAULT 101,
      p_search          VARCHAR2 DEFAULT NULL,
      p_casesensitive   NUMBER   DEFAULT 0,
      p_read_seconds    NUMBER 	 DEFAULT 5
   )
      RETURN quest_soo_alerttrace_log_typ;

END quest_soo_alerttrace;
/

prompt
prompt Creating package QUEST_SOO_PKG
prompt ==============================
prompt
CREATE OR REPLACE PACKAGE QUEST_SOO_PKG
IS
--
-- This package contains routines to support Spotlight On Oracle
--
-- Person      Date    Comments
-- ---------   ------  -----------------------------------------------
-- Guy         7oct98  Initial
-- Megh        20Jun99 Added procedures obj_keep, obj_unkeep and
--                     flush_shared_pool. Also added function obj_type
-- Han B Xie   Jun2000 - now.

    -- Global indicating that the object cache is initialized
    g_object_cache_initialized     NUMBER:=0;
    g_debug                        NUMBER:=0;

    -- And make them global accessible
    /* -------------------------------------------------------------
    || The following statements define the "segment cache".  This
    || comprises a number of PL/SQL tables which contain details
    || of file/block ranges for all existing segments.
    ||
    || get_segname uses a binary chop to find the appropriate entry
    */ -------------------------------------------------------------
    TYPE object_cache_numtype       IS TABLE OF NUMBER      INDEX BY BINARY_INTEGER;
    TYPE object_cache_tabtype       IS TABLE OF VARCHAR(61) INDEX BY BINARY_INTEGER;

    object_cache_fileno             object_cache_numtype;
    object_cache_extno              object_cache_numtype;
    object_cache_blockno            object_cache_numtype;
    object_cache_length             object_cache_numtype;
    object_cache_segname            object_cache_tabtype;
    object_cache_count              NUMBER := 0;

    object_cache                    object_cache_tabtype;

    --
    -- Function to format SQL
    --
    Function format_sql ( p_sql_text IN varchar2,
                          p_max_len  IN number:=256)
             RETURN  varchar2;
    PRAGMA restrict_references(format_sql, WNDS, RNDS, WNPS, RNPS);

    --
    -- Event_category returns the event "category" so we can group
    -- like categories.  It's overloaded to accept either a event anme
    -- or the INDX from X$KSLEI
    --
    FUNCTION event_category(p_event varchar2, tag VARCHAR2 := 'pre 4.0') RETURN varchar2;
    PRAGMA   RESTRICT_REFERENCES (event_category, WNDS, RNDS, WNPS);

    FUNCTION event_category(p_indx number, tag VARCHAR2 := 'pre 4.0') RETURN varchar2;
    PRAGMA   RESTRICT_REFERENCES (event_category, WNDS, RNDS, WNPS);

    FUNCTION latch_category(p_latch_name varchar2) RETURN varchar2;
    PRAGMA   RESTRICT_REFERENCES (latch_category, WNDS, RNDS, WNPS);

    FUNCTION obj_type(object_t varchar2) RETURN char;
    PRAGMA   RESTRICT_REFERENCES (obj_type, WNDS, RNDS, WNPS);

    FUNCTION IsSpOk RETURN number;
    PRAGMA   RESTRICT_REFERENCES (IsSpOk, WNDS, WNPS);

    FUNCTION SgaOther RETURN number;
    PRAGMA   RESTRICT_REFERENCES (SgaOther, WNDS, WNPS);

    --
    -- Procedure initialize to initialize PL/SQL tables , etc
    --
    PROCEDURE initialize;

    -- Quick but essential initialize
    PROCEDURE initialize_fast;
    -- Slower initialize which can be defered until main screen collected
    PROCEDURE initialize_objects;

    -- Print the current lock-tree
    PROCEDURE locktree(p_agent_id VARCHAR2 DEFAULT 'N/A');

    -- Set a normal trace on for the session
    PROCEDURE set_trace(p_sid NUMBER, p_serial NUMBER, p_level NUMBER);

    -- overload for backward compatibility
    PROCEDURE set_trace(p_sid NUMBER, p_serial NUMBER, p_mode boolean);

    -- Kill the nominated session
    PROCEDURE kill_session(p_sid NUMBER, p_serial NUMBER);

    -- Turn timed statistics on
    PROCEDURE set_timed_statistics;

    -- Keep object in shared pool
    -- PROCEDURE obj_keep(name in varchar2, type in varchar2);

    -- Unkeep object from shared pool
    -- PROCEDURE obj_unkeep(name in varchar2, type in varchar2);

    -- Flush shared pool
    PROCEDURE flush_shared_pool;

    --
    -- Translate values in the form 999{K|M} to byte values so
    -- instance monitor can deal with them
    --

    FUNCTION TRANSLATE_PARAMETER( p_value VARCHAR2) RETURN  varchar2;

    PRAGMA  RESTRICT_REFERENCES (translate_parameter, WNDS, RNDS, WNPS);

    --
    -- These routines support the "show locked row" facility
    --
    --Published procedures
    --Show the row locks being waited for by the specified sid
    FUNCTION show_locked_row(lsid in number) return varchar2;
    FUNCTION toRadixString(num in number, radix in number) return varchar2;
    PRAGMA   restrict_references(toRadixString, WNDS, WNPS, RNDS, RNPS);
    FUNCTION digitToString(num in number) return varchar2;
    PRAGMA   restrict_references(digitToString, WNDS, WNPS, RNDS, RNPS);

    FUNCTION sga_cat(p_pool VARCHAR2, p_name VARCHAR2) RETURN VARCHAR2;
    PRAGMA   restrict_references(sga_cat, WNDS, RNDS, WNPS, RNPS);

    FUNCTION sga_cat2(p_pool VARCHAR2, p_name VARCHAR2) RETURN VARCHAR2;
    PRAGMA   restrict_references(sga_cat2, WNDS, RNDS, WNPS, RNPS);

    FUNCTION sga_pool7(p_name VARCHAR2) RETURN VARCHAR2;
    PRAGMA   restrict_references(sga_pool7, WNDS, RNDS, WNPS, RNPS);

    FUNCTION sga_area7(p_name VARCHAR2) RETURN VARCHAR2;
    PRAGMA   restrict_references(sga_area7, WNDS, RNDS, WNPS, RNPS);

    -- Stuff for getting full SQL text
    -- FUNCTION exact_db_version(p_major OUT NUMBER,
    --                          p_minor1 OUT NUMBER,
    --                          p_minor2 OUT NUMBER)
    --         RETURN VARCHAR2;
    --

    FUNCTION get_long_sqltext(p_hash_value NUMBER,
                              p_address RAW)
             RETURN VARCHAR2;

    FUNCTION get_session_long_sqltext(p_sid NUMBER)
             RETURN VARCHAR2;

    -- Decode lock details: TYPE, MODE, REQUEST
    FUNCTION lock_type_decode(type_p VARCHAR2, id2_p NUMBER default -1)
             RETURN VARCHAR2;
    PRAGMA restrict_references(lock_type_decode, WNDS, WNPS, RNPS);

    FUNCTION lock_mode_decode(mode_p NUMBER) RETURN VARCHAR2;
    PRAGMA   restrict_references(lock_mode_decode, WNDS, WNPS, RNPS);

    FUNCTION event_detail ( event_p  IN VARCHAR2,
                            p1text_p IN VARCHAR2, p1_p IN NUMBER,
                            p2text_p IN VARCHAR2 DEFAULT '', p2_p IN NUMBER DEFAULT 0,
                            p3text_p IN VARCHAR2 DEFAULT '', p3_p IN NUMBER DEFAULT 0) RETURN VARCHAR2;

    -- wait_detail is a quicker version of event_detail to be used in SELECT cluase.
    FUNCTION wait_detail ( event_p  IN VARCHAR2,
                           p1text_p IN VARCHAR2, p1_p IN NUMBER,
                           p2text_p IN VARCHAR2 DEFAULT '', p2_p IN NUMBER DEFAULT 0,
                           p3text_p IN VARCHAR2 DEFAULT '', p3_p IN NUMBER DEFAULT 0) RETURN VARCHAR2;
    PRAGMA   RESTRICT_REFERENCES (wait_detail, WNDS, WNPS);

    FUNCTION dataobj_object(dataobj_p NUMBER) RETURN VARCHAR2;

    FUNCTION job_interval(next_date_p DATE, interval_p VARCHAR2) RETURN DATE;

    --
    -- I18N versions
    --
    PROCEDURE locktree_41(p_agent_id VARCHAR2 DEFAULT 'N/A');
    FUNCTION show_locked_row_41(lsid in number) return varchar2;

    FUNCTION lock_type_decode_41(type_p VARCHAR2, id2_p NUMBER default -1)
             RETURN VARCHAR2;
    PRAGMA restrict_references(lock_type_decode_41, WNDS, WNPS, RNPS);

    FUNCTION lock_mode_decode_41(mode_p NUMBER) RETURN VARCHAR2;
    PRAGMA   restrict_references(lock_mode_decode_41, WNDS, WNPS, RNPS);

    FUNCTION event_detail_41 ( event_p  IN VARCHAR2,
                            p1text_p IN VARCHAR2, p1_p IN NUMBER,
                            p2text_p IN VARCHAR2 DEFAULT '', p2_p IN NUMBER DEFAULT 0,
                            p3text_p IN VARCHAR2 DEFAULT '', p3_p IN NUMBER DEFAULT 0) RETURN VARCHAR2;

    FUNCTION wait_detail_41 ( event_p  IN VARCHAR2,
                           p1text_p IN VARCHAR2, p1_p IN NUMBER,
                           p2text_p IN VARCHAR2 DEFAULT '', p2_p IN NUMBER DEFAULT 0,
                           p3text_p IN VARCHAR2 DEFAULT '', p3_p IN NUMBER DEFAULT 0) RETURN VARCHAR2;
    PRAGMA   RESTRICT_REFERENCES (wait_detail_41, WNDS, WNPS);

  PROCEDURE populate_event_table;
END;
/

prompt
prompt Creating package QUEST_SOO_SCHEMA_MGR
prompt =====================================
prompt
CREATE OR REPLACE PACKAGE QUEST_SOO_SCHEMA_MGR
IS
   -- Check that a table exists
   FUNCTION table_exists (p_table_name VARCHAR2)
      RETURN BOOLEAN;

   -- Get the version of an SOO schema
   FUNCTION get_version (p_schema_id VARCHAR2)
      RETURN NUMBER;

   -- Set the version of an SOO schema
   PROCEDURE set_version (p_schema_id VARCHAR2, p_version NUMBER);

   -- initialize the package objects (tables, etc)
   PROCEDURE init;
END;
/

prompt
prompt Creating package QUEST_SOO_SQLTRACE
prompt ===================================
prompt
CREATE OR REPLACE PACKAGE QUEST_SOO_SQLTRACE
IS
   /*-------------------------------------------------------------------------
   ** Package for loading a SQL trace file in the USER_DUMP_DEST into spotlight
   ** tables
   ** Default usage:
   **   load_trace(file_name=>'Sid_Pid.trc')
   **
   ** Revision History:
   **
   **    Guy Harrison    July 2007   Initial
   *--------------------------------------------------------------------------*/

   /*-------------------------------------------------------------------------
   ** Load the nominated trace file
   **   The named file must exist in the USER_DUMP_DEST
   **   File name is case sensitive on UNIX
   **
   ** Revision History:
   **
   **    Guy Harrison    July 2007   Initial
   *--------------------------------------------------------------------------*/
   PROCEDURE aaatestit;       -- temporary entry point for convenient testing

   -- Return text description for a given Oracle error code
   FUNCTION ERROR_TEXT (ERROR_CODE NUMBER)
      RETURN VARCHAR2;

   --
   -- Set tracing on for the nominated session and take a guess at the
   -- trace name (might be wrong if tracefile_identifier set)
   --
   FUNCTION set_trace (p_sid NUMBER, p_serial NUMBER, p_level NUMBER)
      RETURN VARCHAR2;

   --
   -- Run load trace as a background (DBMS_JOB) job
   --
   FUNCTION background_load_trace (
      file_name        VARCHAR2,
      process_waits    INTEGER := 1 /*process wait lines*/,
      process_binds    INTEGER := 1 /* process bind info*/,
      load_recursive   INTEGER := 1 /* load/process recursive SQL*/,
      line_limit       INTEGER := NULL /* # of lines to read: -1 for all */,
      comment_text     VARCHAR2 := NULL,
      debug_level      INTEGER := 0,
      pga_limit        NUMBER := NULL
   )
      RETURN NUMBER;

   --
   -- Process every row scheduled for background processing
   --
   PROCEDURE background_loadjob;

   --
   -- Foreground load trace
   --
   PROCEDURE load_trace (
      file_name        VARCHAR2,
      load_all_lines   BOOLEAN
            := TRUE /*load individual FETCH and WAIT lines */,
      process_waits    INTEGER := 1 /*process wait lines*/,
      process_binds    INTEGER := 1 /* process bind info*/,
      load_recursive   INTEGER := 1 /* load/process recursive SQL*/,
      line_limit       INTEGER := NULL /* # of lines to read: -1 for all */,
      comment_text     VARCHAR2 := NULL,
      debug_level      INTEGER := 0,
      pga_limit        NUMBER := NULL
   );
END;
/

prompt
prompt Creating package QUEST_SOO_USER_MANAGER
prompt =======================================
prompt
CREATE OR REPLACE PACKAGE QUEST_SOO_USER_MANAGER
IS
--
-- This package contains routines for user management, mostly for QCO
--
-- Person      Date    Comments
-- ---------   ------  -----------------------------------------------
-- Han B Xie   May2001 Created.

    PROCEDURE grant_user    (user_p VARCHAR2);
    PROCEDURE revoke_user   (user_p VARCHAR2);
    FUNCTION  validate_user (user_p VARCHAR2) RETURN INTEGER;

END; -- QUEST_SOO_USER_MANAGER
/

prompt
prompt Creating package QUEST_SOO_UTIL
prompt ===============================
prompt
CREATE OR REPLACE PACKAGE quest_soo_util
AS
--
-- This package contains utility routines to support Spotlight On Oracle
--
-- Person      Date         Comments
-- ---------   -----------  -----------------------------------------------
-- Joe T       14-Jan-2008  Initial

   -- Get details about events on system.
   -- Replacement for quest_soo_pkb.event_detail_41 and wait_detail_41
   FUNCTION event_detail (
      p_event    VARCHAR2,
      p_p1text   VARCHAR2,
      p_p1       NUMBER,
      p_p2text   VARCHAR2,
      p_p2       NUMBER,
      p_p3text   VARCHAR2,
      p_p3       NUMBER,
      p_type     PLS_INTEGER DEFAULT 1               -- 1 is Event, 2 is Wait
   )
      RETURN VARCHAR2;

   -- Do some transformation and return a lock type description
   FUNCTION get_lock_type_desc (p_lock_type VARCHAR2, p_id2 NUMBER DEFAULT -1)
      RETURN VARCHAR2;

   -- Get lock mode description
   -- It's a number so use indexing from 0 to 6
   FUNCTION get_lock_mode_desc (p_idx PLS_INTEGER)
      RETURN VARCHAR2;

   -- Get lock mode description
   -- If part of Q, X, N etc then will be ok
   FUNCTION get_lock_mode_desc (p_idx VARCHAR2)
      RETURN VARCHAR2;

END quest_soo_util;
/

prompt
prompt Creating package UP_QUERYCUSTINFO_SET
prompt =====================================
prompt
CREATE OR REPLACE Package UP_QUERYCUSTINFO_set
AS
       TYPE queryResult IS REF CURSOR;
end UP_QUERYCUSTINFO_set;
/

prompt
prompt Creating type T_RET_TABLE
prompt =========================
prompt
create or replace type t_ret_table is table of varchar2(1000)
/

prompt
prompt Creating function CACULATEORDERSTATUSCOUNT
prompt ==========================================
prompt
create or replace function caculateOrderStatusCount(timeout in varchar2,urgency in varchar2,type in varchar2)

  return   number
  as
  begin
  --超时催办
  if(type='TU')then
    if   (timeout=4004 or timeout=4014)and urgency='11002' then return 1;end if;
  end if;

  --超时未催办
  if(type='TW')then
    if   (timeout=4004 or timeout=4014) and (urgency<>'11002' or urgency is null)  then return 1;end if;
  end if;

  --未超时未催办
  if(type='WW')then
    if    (timeout<>4004 and timeout<>4014) and (urgency<>'11002' or urgency is null) then return 1;end if;
  end if;
  --未超时催办
  if(type='WU')then
    if   (timeout<>4004 and timeout<>4014) and urgency='11002' then return 1; end if;
  end if;
  return 0;
end;
/

prompt
prompt Creating function CACULATEOVERTIMELENGTH
prompt ========================================
prompt
create or replace function caculateOverTimeLength(len in number)

  return   number
  as
  begin

  if   (len-trunc(len))>0 then
  return trunc(len)+1;
  else
  return  trunc(len);
  end   if;
end;
/

prompt
prompt Creating function CACULATETIMELENGTH
prompt ====================================
prompt
create or replace function caculateTimeLength(len in number)

  return   number
  as
  begin
  if len is null then return null;
  end if;

  if   (len-trunc(len))>0 then
  return trunc(len)+1;
  else
  return  trunc(len);
  end   if;
end;
/

prompt
prompt Creating function CALCULATEORDERTIMESTEP
prompt ========================================
prompt
create or replace function calculateOrderTimeStep(timeout in varchar2,stepout in varchar2,status in varchar2,type in varchar2)
return   number
  as
  begin
  --超时处理中
   if(type='TP')then
    if   timeout=4014 and status=9002 then return 1;end if;
    end if;

  --超时已完成
   if(type='TF')then
    if   timeout=4014 and status=9003 then return 1;end if;
   end if;

  --超步骤处理中
   if(type='SP')then
    if   stepout=4014 and status=9002 then return 1;end if;
   end if;
  --超步骤已完成
    if(type='SF')then
    if   stepout=4014 and status=9003 then return 1; end if;
   end if;
  return 0;
end;
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
prompt Creating function GETINITFORMLEVEL
prompt ==================================
prompt
create or replace function getInitFormLevel ( currentNode in varchar2 )
return number
is
v_level number;
begin
 select level into v_level from vmr_init_form_category t where t.id=currentNode Connect by Prior t.id = t.pid Start With t.pid is null ;
 return v_level;
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
prompt Creating function GETLNORGLABEL
prompt ===============================
prompt
create or replace function getLnOrgLabel (currentNode in varchar2,
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
    select distinct t.label
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
     postlink:='@dblink';
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
     relate_table_name:='FSWF_CC_CSR_BOM01_2';

     table_name:='FSWF-CC-CSR-VOC0001';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r where r.FSWFCCCSRVC0001_WRKRDRINF_ID=t.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0002';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r where r.FSWFCCCSRVC0002_PRSNLCSTMR_D=t.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0003';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r where r.FSWFCCCSRVC0003_CMPNYCSTMR_D=t.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     --voc0005 inner
     table_name:='FSWF-CC-CSR-VOC0004';
     his_table_name:='his_'||table_name||'_'||postfix;
     second_r_table_name:='FSWF-CC-CSR-VOC0005';
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0004_PERATEINF_ID=t.e_id and r.FSWFCCCSRVC0005_FEDBCKINF_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0005';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r where r.FSWFCCCSRVC0005_FEDBCKINF_ID=t.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0004';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r where (r.FSWFCCCSRVOC0004_INSPECT_ID=t.e_id or r.FSWFCCCSRVC0004_DSPTCHINF_ID=t.e_id or r.FSWFCCCSRVC0004_PRCESSINF_ID=t.e_id) and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0007';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r where r.FSWFCCCSRVOC0007_STEPINFO_ID=t.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0008';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r where r.FSWFCCCSRVOC0008_THERINFO_ID=t.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0009';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r where r.FSWFCCCSRVC0009_RVISRTINF_ID=t.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     --voc0006 inner
     --voc006 inner variable second_r_table_name
     second_r_table_name:='FSWF-CC-CSR-VOC0006';

     table_name:='FSWF-CC-CSR-VOC0101';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC010_MDFYCSTMRNF_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0102';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0102_CRDHNDLNG_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0103';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVOC0103_ATHORIZE_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0104';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0104_LINMNGMNT_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0105';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0105_CCNTSTATS_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0106';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC01_CNCLCRDRQSTN_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0107';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC01_CSTMRCNSLTNG_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0108';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0108_CLENPDEBT_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0109';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0109_FXPPLYFRM_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0110';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC011_NRMLSRVCTHR_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0201';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC020_PRDCTNTRRVL_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0202';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0202_WRNGACCNT_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0203';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC020_PPLYNFNSPCT_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0204';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0204_RSKINSPCT_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0205';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0_NTRSTCHRGPRB_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0206';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0_SCRNSTLLMNTP_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0207';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVOC0207_CUISHOU_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0208';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVOC0208_HOTSPOTS_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0209';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0209_PRDCTFNCTN_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0210';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0210_SYSTMISSS_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0211';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0_CRDNTVLBLCHN_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR_VOC0212';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC021_SPCLSRVCTHR_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0301';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC030_BSNSSCRDRDR_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR_0401';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSR0401_INTERNLRDER_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR_VOC0111';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where (s.FSWFCCCSRVC0111_VLDDDSRVC_ID=t.e_id or s.FSWFCCCSRVOC0111_INVOICE_ID=t.e_id) and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR_VOC0112';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVOC0112_BILLPOST_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR_VOC0113';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0113_MRGNCYSRVC_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR_VOC0114';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC011_CHNGCRDTCRD_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR_VOC0115';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0_VLDDDSRVCNDM_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR_VOC0116';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0116_THRDPRTYBZ_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR_VOC0213';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVOC0213_NLINEBIZ_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR_VOC0214';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0214_STFFSRVCQS_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR_VOC0215';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0_SNDCNFRMDNTT_D=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR_VOC0216';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r, "'||upper(second_r_table_name)||'" s where s.FSWFCCCSRVC0216_BILLPRBLM_ID=t.e_id and r.FSWFCCCSRVOC0006_BIZINFO_ID=s.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR-VOC0006';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r where r.FSWFCCCSRVOC0006_BIZINFO_ID=t.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF-CC-CSR_VOC1000';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t, "'||upper(relate_table_name)||'" r where r.FSWFCCCSRVC10_CMMNSSSTBZNF_D=t.e_id and r.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF_CC_CSR_BOM01_2';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t where t.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF_CC_CSR_BOM01';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t where t.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF_CC_CSR_BOM02_2';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t where t.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

     table_name:='FSWF_CC_CSR_BOM02';
     his_table_name:='his_'||table_name||'_'||postfix;
     select_data_sql:=' (select t.* from "'||upper(table_name)||'" t where t.e_id='||orderId;
     insert_data_sql:='insert into "'||upper(his_table_name)||'"'||postlink||select_data_sql||')';
     delete_data_sql:='delete from "'||upper(table_name)||'" d where exists '||select_data_sql|| ' and d.e_id=t.e_id)';
     execute immediate insert_data_sql;
     execute immediate delete_data_sql;

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
linkName := '@dblink';
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
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bni_nvi.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

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
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bti_til.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

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
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpi_pie.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

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
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpi_pil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance$nilist';
hisTable := 'his_bw_process_inst$ni_'||postfix||linkName;
strs:= ' (select bpi_nil.* from '||tableName||' bpi_nil, bw_process_instance bpi where bpi_nil.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpi_nil.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

tableName := 'bw_process_instance$tilist';
hisTable := 'his_bw_process_inst$ti_'||postfix||linkName;
strs:= ' (select bpi_til.* from '||tableName||' bpi_til, bw_process_instance bpi where bpi_til.K$$vtoid=bpi.vtoid and bpi.order_id='||orderIdstr;
stri := 'insert into '|| hisTable || strs||')';
strd := 'delete from '||tableName||' t where exists '||strs|| ' and t.vtoid=bpi_til.vtoid)';
execute IMMEDIATE stri;
execute IMMEDIATE strd;

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
prompt Creating procedure BACKUP1ORDER_VTM
prompt ===================================
prompt
create or replace procedure backup1order_vtm(orderId in varchar2, postfix in varchar2) is
hisTable varchar2(64);
strs varchar2(4096);
linkName varchar2(64);
orderIdstr varchar2(100);
begin
linkName := '@dblink';
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

  delete from VTM_URGENT u where u.BOMINSTID = orderId;

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
prompt Creating procedure CREATEHISTABLE_BDS
prompt =====================================
prompt
create or replace procedure createHisTable_bds(postfix in varchar2,create_drop_flag in varchar2 default '0') Authid Current_User is
       --postfix varchar2(32):='0721';
       --create_drop_flag varchar2(1):='0';
       table_prefix varchar2(32):='FSWF%';
       row_index number(10):=0;
       create_table_sql varchar2(255);
       drop_table_sql varchar2(255);
begin
     create_table_sql:= 'create table '||upper('his_vega_boheader_'||postfix)||' as select * from '||upper('vega_boheader')||' where 1=2';
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
         create_table_sql:= 'create table "'||upper('his_'||current_table.table_name||'_'||postfix)||'" as select * from "'||upper(current_table.table_name)||'" where 1=2';
         drop_table_sql:='drop table "'||upper('his_'||current_table.table_name||'_'||postfix)||'"';
         if create_drop_flag ='0' then
            dbms_output.put_line('output sql:'||row_index||' '||create_table_sql);
            execute immediate create_table_sql;
         else
             dbms_output.put_line('output sql:'||row_index||' '||drop_table_sql);
             execute immediate drop_table_sql;
         end if;
     end loop;
end createHisTable_bds;
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

end createHisTable_vpe;
/

prompt
prompt Creating procedure CREATEHISTABLE_VTM
prompt =====================================
prompt
create or replace procedure createHisTable_vtm(postfix in varchar2) Authid Current_User is
begin

execute IMMEDIATE 'create table HIS_VTM_ACTIVITY_INS_'||postfix||'        as select * from VTM_ACTIVITY_INS                    where 1=2';
execute IMMEDIATE 'create table HIS_VTM_TASK_'||postfix||'        				as select * from VTM_TASK				                     where 1=2';
execute IMMEDIATE 'create table HIS_VTM_NOTES_'||postfix||'   			      as select * from VTM_NOTES			                     where 1=2';
execute IMMEDIATE 'create table HIS_VTM_RESOURCE_EVENT_'||postfix||'      as select * from VTM_RESOURCE_EVENT                  where 1=2';
execute IMMEDIATE 'create table HIS_VTM_STEP_HISTORY_'||postfix||'        as select * from VTM_STEP_HISTORY                    where 1=2';
execute IMMEDIATE 'create table HIS_VTM_TASKEVENT_HISTORY_'||postfix||'   as select * from VTM_TASKEVENT_HISTORY               where 1=2';
execute IMMEDIATE 'create table HIS_VTM_FORM_INS_'||postfix||'   		      as select * from VTM_FORM_INS                    		 where 1=2';

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
prompt Creating procedure DISABLEALLCONSTRAINTS
prompt ========================================
prompt
create or replace procedure disableAllConstraints(isSuccess out varchar2) Authid Current_User  is
begin
    for c in (select 'ALTER TABLE "'||TABLE_NAME||'" DISABLE CONSTRAINT '||constraint_name||' ' as v_sql from user_constraints where CONSTRAINT_TYPE='R') loop
    begin
     EXECUTE IMMEDIATE c.v_sql;
     exception when others then
       isSuccess:='0';
       return;
     end;
    end loop;
    isSuccess:='1';
    return;
end disableAllConstraints;
/

prompt
prompt Creating procedure ENABLEALLCONSTRAINTS
prompt =======================================
prompt
create or replace procedure enableAllConstraints(isSuccess out varchar2) Authid Current_User  is
begin
    for c in (select 'ALTER TABLE "'||TABLE_NAME||'" ENABLE CONSTRAINT '||constraint_name||' ' as v_sql from user_constraints where CONSTRAINT_TYPE='R') loop
    begin
     EXECUTE IMMEDIATE c.v_sql;
     exception when others then
       isSuccess:='0';
       return;
     end;
    end loop;
    isSuccess:='1';
    return;
end enableAllConstraints;
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
prompt Creating procedure INSERT_AUTH_RECORED
prompt ======================================
prompt
create or replace procedure INSERT_AUTH_RECORED(formidd in varchar2) is
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
end INSERT_AUTH_RECORED;
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
create or replace procedure orderBackup(orderId in varchar2, postfix in varchar2,isSuccess out varchar2) Authid Current_User  is

begin

--backup data

    begin
     backup1order_vpe(orderId, postfix);
     backup1order_vtm(orderId, postfix);
     backup1order_bds(orderId, postfix);
     EXCEPTION
     WHEN   others   THEN
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
prompt Creating procedure ORDERBACKUP1
prompt ===============================
prompt
create or replace procedure orderBackup1(orderId in varchar2, postfix in varchar2,isSuccess out varchar2) Authid Current_User  is

begin

--backup data

    begin
     dbms_output.put_line('backup1order_vpe');
     backup1order_vpe(orderId, postfix);
     dbms_output.put_line('backup1order_vtm');
     backup1order_vtm(orderId, postfix);
      dbms_output.put_line('backup1order_bds');
     backup1order_bds(orderId, postfix);
     EXCEPTION
     WHEN   others   THEN
      Rollback;
      isSuccess:='0';
      return;
     end;
     COMMIT;
     isSuccess:='1';
     return;
end orderBackup1;
/

prompt
prompt Creating procedure ORDERCOLUMNSETTING
prompt =====================================
prompt
create or replace procedure OrderColumnSetting(input_id in varchar2) is
CURSOR cur IS select * from vpm_app_data_display vac where vac.data_id='WO_HANDLING';
id varchar2(500);
seq number(10);
timestr varchar2(50) ;
begin
  seq:=0;
  timestr:=to_char(sysdate,'YYYYMMDDHHmmss');
  delete vpm_app_data_display vi where vi.data_id=input_id;

      for cur_item in cur Loop
      begin
        seq:=seq+1;
        insert into vpm_app_data_display(ID,DATA_ID,NAME,LABEL,TYPE,DECORATION,DISPLAY_SEQ,FITER,VARIABLE,WIDTH)
        values(timestr||seq,input_id,cur_item.NAME,cur_item.LABEL,cur_item.TYPE,cur_item.DECORATION,cur_item.DISPLAY_SEQ,cur_item.FITER,cur_item.VARIABLE,cur_item.WIDTH);
      end;
      end loop;
end OrderColumnSetting;
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
prompt Creating procedure SELECTTASKHIS
prompt ================================
prompt
create or replace procedure SelectTaskHis(bominstid number in) is
begin
  select to_char(rownum) as rowno,
       aa.ACTIVITYLABEL,
       aa.username,
       aa.orglabel,
       aa.ttime,
       aa.suggestion,
       aa.forminstid,
       aa.document
  from (select distinct ACTIVITYLABEL,
                        username,
                        orglabel,
                        ttime,
                        suggestion,
                        forminstid,
                        document
          from (select a.*,
                       row_number() over(partition by taskid order by taskid) rn --排除一个task有多个Form或多条记录的情况
                  from (select t1.task_id as taskid,
                               va.label AS ACTIVITYLABEL,
                               t2.USERNAME as username,
                               t3.label as orglabel,
                               to_char(t1.operate_time,
                                       'yyyy-MM-dd HH24:mi:ss') as ttime,
                               to_char(t1.process_suggestion) as suggestion,
                               to_char(t1.id) as forminstid,
                               t1.document as document
                          from vtm_form_ins     t1,
                               pmr_process_node va,
                               vtm_task         vt,
                               vtm_activity_ins vai,
                               vum_org          t3,
                               vum_org_staff    vos,
                               vum_staff        t2
                         where t1.bom_inst_snbr = 1006085
                           and t1.task_id != 'InitialForm'
                           and vai.nodeid = va.id(+)
                           and t1.task_id = vt.taskid
                           and vt.ainsid = vai.instanceid
                           and vt.resourceid = vos.staff_id
                           and vos.org_id = t3.id
                           and vt.resourceid = t2.id
                        union
                        select vta.taskid,
                               ppn.label AS ACTIVITYLABEL,
                               '' as username,
                               vog.label as orglabel,
                               '' as ttime,
                               '' as suggestion,
                               '' as forminstid,
                               '' as document
                          from pmr_process_node ppn,
                               (select distinct (vt.departmentid),
                                                vt.taskid,
                                                vai.nodeid
                                  from vtm_task vt, vtm_activity_ins vai
                                 where vt.ainsid = vai.instanceid
                                   and vai.bominsid = 1006085
                                   and (vt.status = 3001 or vt.status = 3002 or
                                       vt.status = 3003)) vta,
                               vum_org vog
                         where vta.nodeid = ppn.id(+)
                           and vta.departmentid = vog.id) a)
         where rn < 2
            or rn is null
         order by ttime) aa
union
select '' as rowno,
       t5.step AS ACTIVITYLABEL,
       t5.Operatorlabel,
       t5.Deptlabel,
       to_char(t5.opertime, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t5.content),
       null as forminstid,
       null as document
  from vtm_urgent t5
 where t5.bominstid = 1006085
union
select '' as rowno,
       '挂起' as ACTIVITYLABEL,
       t8.username,
       t7.label,
       to_char(t6.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t6.process_suggestion),
       null as forminstid,
       null as document
  from vtm_form_ins t6, vum_org t7, vum_staff t8, vum_org_staff t9
 where t6.bom_inst_snbr = 1006085
   and t6.task_id like 'Suspend%'
   and t8.id = t6.operator
   and t7.id = t9.org_id
   and t8.id = t9.staff_id
union
select '' as rowno,
       '任务撤回' as ACTIVITYLABEL,
       t81.username,
       t71.label,
       to_char(t61.operate_time, 'yyyy-MM-dd HH24:mi:ss') as ttime,
       to_char(t61.process_suggestion),
       null as forminstid,
       null as document
  from vtm_form_ins t61, vum_org t71, vum_staff t81, vum_org_staff t91
 where t61.bom_inst_snbr = 1006085
   and t61.task_id like 'Withdraw%'
   and t81.id = t61.operator
   and t71.id = t91.org_id
   and t81.id = t91.staff_id
 order by ttime;
end SelectTaskHis;
/

prompt
prompt Creating procedure TASKCOLUMNSETTING
prompt ====================================
prompt
create or replace procedure TaskColumnSetting(input_id in varchar2) is
CURSOR cur IS select * from vpm_app_data_display vac where vac.data_id='FSWF-TASK-INDIVIDEUL-04';
id varchar2(500);
seq number(10);
timestr varchar2(50) ;
begin
  seq:=0;
  timestr:=to_char(sysdate,'YYYYMMDDHHmmss');
  delete vpm_app_data_display vi where vi.data_id=input_id;

      for cur_item in cur Loop
      begin
        seq:=seq+1;
        insert into vpm_app_data_display(ID,DATA_ID,NAME,LABEL,TYPE,DECORATION,DISPLAY_SEQ,FITER,VARIABLE,WIDTH)
        values(timestr||seq,input_id,cur_item.NAME,cur_item.LABEL,cur_item.TYPE,cur_item.DECORATION,cur_item.DISPLAY_SEQ,cur_item.FITER,cur_item.VARIABLE,cur_item.WIDTH);
      end;
      end loop;
end TaskColumnSetting;
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


spool off
