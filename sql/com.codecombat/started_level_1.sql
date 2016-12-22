-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.2.0
-- Generated: 2016-12-22 14:39

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_codecombat_started_level_1 (
    "schema_vendor"  VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"    VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"  VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version" VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"        CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"    TIMESTAMP     ENCODE LZO       NOT NULL,
    "ref_root"       VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"       VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"     VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "level_id"       VARCHAR(24)   ENCODE LZO       NOT NULL,
    "level_slug"     VARCHAR(128)  ENCODE LZO       NOT NULL,
    "user"           VARCHAR(24)   ENCODE LZO       NOT NULL,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_codecombat_started_level_1 IS 'iglu:com.codecombat/started_level/jsonschema/1-0-0';
