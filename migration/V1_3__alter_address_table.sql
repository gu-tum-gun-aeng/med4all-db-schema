ALTER TABLE address ADD COLUMN address_detail VARCHAR(1000);

ALTER TABLE address RENAME COLUMN province_code TO province;
ALTER TABLE address RENAME COLUMN district_code TO district;
ALTER TABLE address RENAME COLUMN sub_district_code TO sub_district;
ALTER TABLE address RENAME COLUMN bangkok_zone_code TO bangkok_zone;

ALTER TABLE address ALTER COLUMN province TYPE VARCHAR(200);
ALTER TABLE address ALTER COLUMN district TYPE VARCHAR(200);
ALTER TABLE address ALTER COLUMN sub_district TYPE VARCHAR(200);
ALTER TABLE address ALTER COLUMN bangkok_zone TYPE VARCHAR(200);