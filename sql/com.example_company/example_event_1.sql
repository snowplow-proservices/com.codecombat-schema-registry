-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.2.0
-- Generated: 2016-12-21 15:51

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_example_company_example_event_1 (
    "schema_vendor"           VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_name"             VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_format"           VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_version"          VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "root_id"                 CHAR(36)         ENCODE RAW       NOT NULL,
    "root_tstamp"             TIMESTAMP        ENCODE LZO       NOT NULL,
    "ref_root"                VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "ref_tree"                VARCHAR(1500)    ENCODE RUNLENGTH NOT NULL,
    "ref_parent"              VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "example_integer_field"   INT              ENCODE LZO       NOT NULL,
    "example_string_field"    VARCHAR(255)     ENCODE LZO       NOT NULL,
    "example_numeric_field"   DOUBLE PRECISION ENCODE RAW,
    "example_timestamp_field" TIMESTAMP        ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_example_company_example_event_1 IS 'iglu:com.example_company/example_event/jsonschema/1-0-0';