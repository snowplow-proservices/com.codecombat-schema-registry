-- WARNING: only apply this file to your database if the following SQL returns the expected:
--
-- SELECT pg_catalog.obj_description(c.oid) FROM pg_catalog.pg_class c WHERE c.relname = 'com_codecombat_view_load_1';
--  obj_description
-- -----------------
--  iglu:com.codecombat/view_load/jsonschema/1-0-0
--  (1 row)

BEGIN TRANSACTION;

  ALTER TABLE atomic.com_codecombat_view_load_1
    ADD COLUMN "tag" VARCHAR(64) ENCODE LZO;

  COMMENT ON TABLE atomic.com_codecombat_view_load_1 IS 'iglu:com.codecombat/view_load/jsonschema/1-0-2';

END TRANSACTION;
