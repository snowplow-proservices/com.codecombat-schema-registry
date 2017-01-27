-- WARNING: only apply this file to your database if the following SQL returns the expected:
--
-- SELECT pg_catalog.obj_description(c.oid) FROM pg_catalog.pg_class c WHERE c.relname = 'com_codecombat_saw_victory_1';
--  obj_description
-- -----------------
--  iglu:com.codecombat/saw_victory/jsonschema/1-0-0
--  (1 row)

BEGIN TRANSACTION;

  ALTER TABLE atomic.com_codecombat_saw_victory_1
    ADD COLUMN "playtime" INT ENCODE LZO;

  COMMENT ON TABLE atomic.com_codecombat_saw_victory_1 IS 'iglu:com.codecombat/saw_victory/jsonschema/1-0-1';

END TRANSACTION;
