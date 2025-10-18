-- Drop table
-- DROP TABLE geobase.utah_county_boundary_ugrc;
CREATE TABLE geobase.utah_county_boundary_ugrc (
    ogc_fid serial4 NOT NULL,
    geom public.GEOMETRY(multipolygon, 26912) NULL,
    object_id int4 NULL,
    countynbr varchar NULL,
    entitynbr int4 NULL,
    entityyr int4 NULL,
    "name" varchar NULL,
    fips int4 NULL,
    stateplane varchar NULL,
    pop_lastcensus int4 NULL,
    pop_currestimate int4 NULL,
    global_id varchar NULL,
    fips_str varchar NULL,
    color4 int4 NULL,
    CONSTRAINT utah_county_boundary_ugrc_pk PRIMARY KEY (ogc_fid)
);

CREATE INDEX utah_county_boundary_ugrc_geom_gix ON geobase.utah_county_boundary_ugrc USING gist (geom);

-- Drop table
-- DROP TABLE geobase.utah_lakes_hydrography_ugrc;
CREATE TABLE geobase.utah_lakes_hydrography_ugrc (
    ogc_fid serial4 NOT NULL,
    geom public.GEOMETRY(multipolygon, 26912) NULL,
    object_id int4 NULL,
    permanent_identifier varchar NULL,
    fdate varchar NULL,
    resolution int4 NULL,
    gnis_id varchar NULL,
    gnis_name varchar NULL,
    areasqkm float8 NULL,
    elevation float8 NULL,
    reachcode varchar NULL,
    ftype int4 NULL,
    ftype_text varchar NULL,
    fcode int4 NULL,
    fcode_text varchar NULL,
    inutah int4 NULL,
    ismajor int4 NULL,
    CONSTRAINT utah_lakes_hydrography_ugrc_pk PRIMARY KEY (ogc_fid)
);

CREATE INDEX utah_lakes_hydrography_ugrc_geom_gix ON geobase.utah_lakes_hydrography_ugrc USING gist (geom);

-- Drop table
-- DROP TABLE geobase.utah_roads_osm;
CREATE TABLE geobase.utah_roads_osm (
    ogc_fid serial4 NOT NULL,
    geom public.GEOMETRY(multilinestring, 26912) NULL,
    osm_id varchar(12) NULL,
    code numeric(4) NULL,
    fclass varchar(28) NULL,
    "name" varchar(100) NULL,
    "ref" varchar(20) NULL,
    oneway varchar(1) NULL,
    maxspeed numeric(3) NULL,
    layer numeric(12) NULL,
    bridge varchar(1) NULL,
    tunnel varchar(1) NULL,
    CONSTRAINT utah_roads_osm_pk PRIMARY KEY (ogc_fid)
);

CREATE INDEX utah_roads_osm_geom_gix ON geobase.utah_roads_osm USING gist (geom);

-- Drop table
-- DROP TABLE geobase.utah_springs_hydrography_ugrc;
CREATE TABLE geobase.utah_springs_hydrography_ugrc (
    ogc_fid serial4 NOT NULL,
    geom public.GEOMETRY(multipoint, 26912) NULL,
    object_id int4 NULL,
    permanent_identifier varchar NULL,
    fdate varchar NULL,
    resolution int4 NULL,
    gnis_id varchar NULL,
    gnis_name varchar NULL,
    reachcode varchar NULL,
    ftype int4 NULL,
    ftype_text varchar NULL,
    fcode int4 NULL,
    fcode_text varchar NULL,
    inutah int4 NULL,
    CONSTRAINT utah_springs_hydrography_ugrc_pk PRIMARY KEY (ogc_fid)
);

CREATE INDEX utah_springs_hydrography_ugrc_geom_gix ON geobase.utah_springs_hydrography_ugrc USING gist (geom);

-- Drop table
-- DROP TABLE geobase.utah_state_boundary_ugrc;
CREATE TABLE geobase.utah_state_boundary_ugrc (
    ogc_fid serial4 NOT NULL,
    geom public.GEOMETRY(multipolygon, 26912) NULL,
    object_id int4 NULL,
    state varchar NULL,
    global_id varchar NULL,
    CONSTRAINT utah_state_boundary_ugrc_pk PRIMARY KEY (ogc_fid)
);

CREATE INDEX utah_state_boundary_ugrc_geom_gix ON geobase.utah_state_boundary_ugrc USING gist (geom);

-- Drop table
-- DROP TABLE geobase.utah_streams_hydrography_ugrc;
CREATE TABLE geobase.utah_streams_hydrography_ugrc (
    ogc_fid serial4 NOT NULL,
    geom public.GEOMETRY(multilinestring, 26912) NULL,
    object_id int4 NULL,
    permanent_identifier varchar NULL,
    fdate varchar NULL,
    resolution int4 NULL,
    gnis_id varchar NULL,
    gnis_name varchar NULL,
    lengthkm float8 NULL,
    reachcode varchar NULL,
    flowdir int4 NULL,
    wbarea_permanent_identifier varchar NULL,
    ftype int4 NULL,
    ftype_text varchar NULL,
    fcode int4 NULL,
    fcode_text varchar NULL,
    enabled int4 NULL,
    inutah int4 NULL,
    ismajor int4 NULL,
    submerged int4 NULL,
    CONSTRAINT utah_streams_hydrography_ugrc_pk PRIMARY KEY (ogc_fid)
);

CREATE INDEX utah_streams_hydrography_ugrc_geom_gix ON geobase.utah_streams_hydrography_ugrc USING gist (geom);

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

