ALTER TABLE address

ADD COLUMN address VARCHAR(1000)

RENAME COLUMN province_code TO province
RENAME COLUMN district_code TO district
RENAME COLUMN sub_district_code TO sub_district

ALTER COLUMN province VARCHAR(200)
ALTER COLUMN district VARCHAR(200)
ALTER COLUMN sub_district VARCHAR(200);
