CREATE TABLE IF NOT EXISTS "patient"
  (
     "patient_id"              SERIAL PRIMARY KEY,
     "certificate_id"          VARCHAR(200) UNIQUE NOT NULL,
     "certificate_type"        INTEGER NOT NULL,
     "name"                    VARCHAR(200) NOT NULL,
     "surname"                 VARCHAR(200) NOT NULL,
     "gender"                  INTEGER,
     "age_year"                INTEGER,
     "patient_phone"           VARCHAR(200) NOT NULL,
     "custodian_phone"         VARCHAR(200),
     "weight_kg"               INTEGER,
     "height_cm"               INTEGER,
     "medical_info"            JSONB NOT NULL,
     "check_in_date"           TIMESTAMPTZ,
     "check_out_date"          TIMESTAMPTZ,
     "patient_data_source"     INTEGER,
     "source_location"         VARCHAR(200),
     "admitted_to"             VARCHAR(200),
     "health_coverage"         INTEGER,
     "line_id"                 VARCHAR(200),
     "home_town"               INTEGER,
     "equipments"              TEXT,
     "volunteer_id"            INTEGER NOT NULL,
     "certificate_picture_url" VARCHAR(2083),
     "covid_test_picture_url"  VARCHAR(2083),
     "is_medicine_requested"   BOOLEAN,
     "is_bypass_screening"     BOOLEAN,
     "last_modified_by"        VARCHAR(100),
     "last_modified_when"      TIMESTAMPTZ,
     "created_by"              VARCHAR(100),
     "created_when"            TIMESTAMPTZ
  );

CREATE TABLE IF NOT EXISTS "certificate_type"
  (
     "certificate_type_id" SERIAL PRIMARY KEY,
     "certificate_type"    VARCHAR(100),
     "last_modified_by"    VARCHAR(100),
     "last_modified_when"  TIMESTAMPTZ,
     "created_by"          VARCHAR(100),
     "created_when"        TIMESTAMPTZ
  );

CREATE TABLE IF NOT EXISTS "address"
  (
     "address_id"         SERIAL PRIMARY KEY,
     "patient_id"         INTEGER NOT NULL,
     "province_code"      INTEGER,
     "district_code"      INTEGER,
     "sub_district_code"  INTEGER,
     "moo"                VARCHAR(200),
     "road"               VARCHAR(200),
     "alley"              VARCHAR(200),
     "soi"                VARCHAR(200),
     "village"            VARCHAR(200),
     "bangkok_zone_code"  INTEGER,
     "zip_code"           INTEGER,
     "building"           VARCHAR(200),
     "note"               VARCHAR(1000),
     "last_modified_by"   VARCHAR(100),
     "last_modified_when" TIMESTAMPTZ,
     "created_by"         VARCHAR(100),
     "created_when"       TIMESTAMPTZ
  );

CREATE TABLE IF NOT EXISTS "volunteer"
  (
     "volunteer_id"        SERIAL PRIMARY KEY,
     "name"                VARCHAR(1000) NOT NULL,
     "volunteer_team_id"   INTEGER NOT NULL,
     "mobile_phone_number" VARCHAR(50) UNIQUE NOT NULL,
     "is_active"           BOOLEAN,
     "last_modified_by"    VARCHAR(100),
     "last_modified_when"  TIMESTAMPTZ,
     "created_by"          VARCHAR(100),
     "created_when"        TIMESTAMPTZ
  );

CREATE TABLE IF NOT EXISTS "volunteer_token"
  (
     "volunteer_token_id" SERIAL PRIMARY KEY,
     "token"              TEXT UNIQUE NOT NULL,
     "valid_until"        TIMESTAMPTZ,
     "last_modified_by"   VARCHAR(100),
     "last_modified_when" TIMESTAMPTZ,
     "created_by"         VARCHAR(100),
     "created_when"       TIMESTAMPTZ
  );

CREATE TABLE IF NOT EXISTS "volunteer_team"
  (
     "volunteer_team_id"   SERIAL PRIMARY KEY,
     "volunteer_team_name" VARCHAR(1000),
     "last_modified_by"    VARCHAR(100),
     "last_modified_when"  TIMESTAMPTZ,
     "created_by"          VARCHAR(100),
     "created_when"        TIMESTAMPTZ
  ); 
