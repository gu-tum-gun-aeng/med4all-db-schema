CREATE TABLE IF NOT EXISTS "patient"
(
    "patient_id"          SERIAL PRIMARY KEY,
    "certificate_id"      varchar(200) NOT NULL,
    "certificate_type"    integer      NOT NULL,
    "name"                varchar(200) NOT NULL,
    "surname"             varchar(200) NOT NULL,
    "gender"              integer      NOT NULL,
    "age_year"            integer      NOT NULL,
    "patient_phone"       varchar(200) NOT NULL,
    "custodian_phone"     varchar(200),
    "weight_kg"           integer      NOT NULL,
    "height_cm"           integer      NOT NULL,
    "medical_info"        JSONB        NOT NULL,
    "check_in_date"       timestamptz,
    "check_out_date"      timestamptz,
    "patient_data_source" integer,
    "admitted_to"         varchar(200),
    "health_coverage"     integer,
    "line_id"             varchar(200),
    "home_town"           integer,
    "equipments"          text,
    "volunteer_id"        integer      NOT NULL,
    "last_modified_by"    varchar(100),
    "last_modified_when"  timestamptz,
    "created_by"          varchar(100),
    "created_when"        timestamptz
);

CREATE TABLE IF NOT EXISTS "certificate_type"
(
    "certificate_type_id" SERIAL PRIMARY KEY,
    "certificate_type"    varchar(100),
    "last_modified_by"    varchar(100),
    "last_modified_when"  timestamptz,
    "created_by"          varchar(100),
    "created_when"        timestamptz
);

CREATE TABLE IF NOT EXISTS "address"
(
    "address_id"         SERIAL PRIMARY KEY,
    "patient_id"         integer NOT NULL,
    "province_code"      integer,
    "district_code"      integer,
    "sub_district_code"  integer,
    "moo"                varchar(200),
    "road"               varchar(200),
    "alley"              varchar(200),
    "soi"                varchar(200),
    "village"            varchar(200),
    "bangkok_zone_code"  integer,
    "zip_code"           integer,
    "building"           varchar(200),
    "note"               varchar(1000),
    "last_modified_by"   varchar(100),
    "last_modified_when" timestamptz,
    "created_by"         varchar(100),
    "created_when"       timestamptz
);


CREATE TABLE IF NOT EXISTS "volunteer"
(
    "volunteer_id"        SERIAL PRIMARY KEY,
    "name"                varchar(1000)      NOT NULL,
    "volunteer_team_id"   integer            NOT NULL,
    "mobile_phone_number" varchar(50) UNIQUE NOT NULL,
    "is_active"           boolean,
    "last_modified_by"    varchar(100),
    "last_modified_when"  timestamptz,
    "created_by"          varchar(100),
    "created_when"        timestamptz
);

CREATE TABLE IF NOT EXISTS "volunteer_token"
(
    "volunteer_token_id" SERIAL PRIMARY KEY,
    "token"              text UNIQUE NOT NULL,
    "valid_until"        timestamptz,
    "last_modified_by"   varchar(100),
    "last_modified_when" timestamptz,
    "created_by"         varchar(100),
    "created_when"       timestamptz
);

CREATE TABLE IF NOT EXISTS "volunteer_team"
(
    "volunteer_team_id"   SERIAL PRIMARY KEY,
    "volunteer_team_name" varchar(1000),
    "last_modified_by"    varchar(100),
    "last_modified_when"  timestamptz,
    "created_by"          varchar(100),
    "created_when"        timestamptz
);

