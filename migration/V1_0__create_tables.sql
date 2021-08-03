
CREATE TABLE IF NOT EXISTS "patient" (
    "patient_id" SERIAL PRIMARY KEY,
    "name" varchar(1000) NOT NULL,
    "age" integer NOT NULL,
    "weight_kg" integer NOT NULL,
    "height_cm" integer NOT NULL,
    "certificate_id" varchar(50) UNIQUE NOT NULL,
    "certificate_type_id" integer,
    "certificate_picture_url" varchar(2083),
    "covid_test_picture_url" varchar(2083),
    "medical_info" JSONB,
    "diagnostic_status_id" integer,
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

CREATE TABLE IF NOT EXISTS "diagnostic_status" (
    "diagnostic_status_id" SERIAL PRIMARY KEY,
    "diagnostic_status" varchar(100),
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

CREATE TABLE IF NOT EXISTS "certificate_type" (
    "certificate_type_id" SERIAL PRIMARY KEY,
    "certificate_type" varchar(100),
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

CREATE TABLE IF NOT EXISTS "address" (
    "address_id" SERIAL PRIMARY KEY,
    "patient_id" integer NOT NULL,
    "address" varchar(2000) NOT NULL,
    "district" varchar(200),
    "province" varchar(200),
    "zip_code" integer NOT NULL,
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

CREATE TABLE IF NOT EXISTS "doctor" (
    "doctor_id" SERIAL PRIMARY KEY,
    "name" varchar(1000) NOT NULL,
    "medical_license_id" varchar(50) UNIQUE NOT NULL,
    "mobile_phone_number" varchar(50) UNIQUE NOT NULL,
    "is_active" boolean,
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

CREATE TABLE IF NOT EXISTS "doctor_token" (
    "doctor_token_id" SERIAL PRIMARY KEY,
    "token" text UNIQUE NOT NULL,
    "valid_until" timestamptz,
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

CREATE TABLE IF NOT EXISTS "patient_result" (
    "patient_result_id" SERIAL PRIMARY KEY,
    "patient_id" integer,
    "doctor_id" integer,
    "is_approved" boolean,
    "reject_reason_id" integer,
    "remark" text,
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

CREATE TABLE IF NOT EXISTS "reject_reason" (
    "reject_reason_id" SERIAL PRIMARY KEY,
    "reject_reason" varchar(100),
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

