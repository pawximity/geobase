-- geobase.utah_trails_ugrc definition
-- Drop table
-- DROP TABLE geobase.utah_trails_ugrc;
CREATE TABLE geobase.utah_trails_ugrc (
    gid serial4 NOT NULL,
    objectid int4 NULL,
    primaryname varchar NULL,
    id varchar NULL,
    status varchar NULL,
    designateduses varchar NULL,
    surfacetype varchar NULL,
    "class" varchar NULL,
    cartocode varchar NULL,
    otherrestrictions varchar NULL,
    horseallowed varchar NULL,
    motorizedallowed varchar NULL,
    hikedifficulty varchar NULL,
    bikedifficulty varchar NULL,
    adaaccessible varchar NULL,
    ownersteward varchar NULL,
    county varchar NULL,
    recreationarea varchar NULL,
    systemname varchar NULL,
    transnetwork varchar NULL,
    "comments" varchar NULL,
    datasource varchar NULL,
    unique_id varchar NULL,
    created_user varchar NULL,
    created_date varchar NULL,
    last_edited_user varchar NULL,
    last_edited_date varchar NULL,
    geom public.GEOMETRY(multilinestring, 26912) NULL,
    CONSTRAINT utah_trails_ugrc_pkey PRIMARY KEY (gid)
);

CREATE INDEX utah_trails_ugrc_geom_geom_idx ON geobase.utah_trails_ugrc USING gist (geom);