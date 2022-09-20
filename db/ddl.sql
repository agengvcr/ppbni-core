create table if not exists districts (
    districtsid serial primary key not null,
    districtsname varchar null,
    districtsvillagename varchar null,
    districtsactive bit(1) null,

    districtscreateddate timestamp without time zone not null,
    districtscreateduserid int not null,
    districtsmodifieddate timestamp without time zone null,
    districtsmodifieduserid int null,

    foreign key("districtscreateduserid") references "users"("id"),
    foreign key("districtsmodifieduserid") references "users"("id")
);

create table if not exists structure (
    structureid serial primary key not null,
    structurename varchar null,
    structureindex int null,

    structureactive bit(1) null,
    structurecreateddate timestamp without time zone not null,
    structurecreateduserid int not null,

    foreign key("structurecreateduserid") references "users"("id")
);

create table if not exists member(
    memberid serial primary key not null,
    membername varchar not null,
    memberposition varchar not null,
    memberplace varchar not null,
    memberplacedate date not null,
    membernumber1 varchar null,
    membernumber2 varchar null,

    memberreligion varchar null,

    memberdistrictsid int null,

    memberregion varchar not null,
    memberexpireddate date not null,

    memberaddress text null,

    memberactive bit(1) null,
    membercreateddate timestamp without time zone not null,
    membercreateduserid int not null,
    membermodifieddate timestamp without time zone null,
    membermodifieduserid int null,

    foreign key("membercreateduserid") references "users"("id"),
    foreign key("membersmodifieduserid") references "users"("id"),
    foreign key("memberdistrictsid") references "districts"("districtsid")
);