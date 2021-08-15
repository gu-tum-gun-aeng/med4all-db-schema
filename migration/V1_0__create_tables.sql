
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
    "volunteer_id" integer NOT NULL,
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


CREATE TABLE IF NOT EXISTS "volunteer" (
    "volunteer_id" SERIAL PRIMARY KEY,
    "name" varchar(1000) NOT NULL,
    "volunteer_team_id" integer NOT NULL,
    "mobile_phone_number" varchar(50) UNIQUE NOT NULL,
    "is_active" boolean,
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

CREATE TABLE IF NOT EXISTS "volunteer_token" (
    "volunteer_token_id" SERIAL PRIMARY KEY,
    "token" text UNIQUE NOT NULL,
    "valid_until" timestamptz,
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

CREATE TABLE IF NOT EXISTS "volunteer_team" (
    "volunteer_team_id" SERIAL PRIMARY KEY,
    "volunteer_team_name" varchar(1000),
    "last_modified_by" varchar(100),
    "last_modified_when" timestamptz,
    "created_by" varchar(100),
    "created_when" timestamptz
);

