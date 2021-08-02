
CREATE TABLE IF NOT EXISTS "patient" (
    "patient_id" integer PRIMARY KEY,
    "name" varchar(1000),
    "age" integer,
    "weight_kg" integer,
    "height_cm" integer,
    "certificate_id" varchar(50),
    "certificate_type_id" integer,
    "certificate_picture_url" varchar(2083),
    "covid_test_picture_url" varchar(2083),
    "medical_info" JSONB,
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

CREATE TABLE IF NOT EXISTS "certificate_type" (
    "certificate_type_id" integer PRIMARY KEY,
    "certificate_type" varchar(100),
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

CREATE TABLE IF NOT EXISTS "address" (
    "address_id" integer PRIMARY KEY,
    "patient_id" integer,
    "address" varchar(2000),
    "district" varchar(200),
    "province" varchar(200),
    "zip_code" integer,
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

