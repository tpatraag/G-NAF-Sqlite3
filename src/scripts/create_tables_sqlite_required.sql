-- ********************************************************************************************
-- ********************************************************************************************
-- Create Sqlite3 tables 
-- ********************************************************************************************
-- ********************************************************************************************

CREATE TABLE ADDRESS_DETAIL (
 address_detail_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_last_modified date,
 date_retired date,
 building_name varchar(200),
 lot_number_prefix varchar(2),
 lot_number varchar(5),
 lot_number_suffix varchar(2),
 flat_type_code varchar(7),
 flat_number_prefix varchar(2),
 flat_number numeric(5),
 flat_number_suffix varchar(2),
 level_type_code varchar(4),
 level_number_prefix varchar(2),
 level_number numeric(3),
 level_number_suffix varchar(2),
 number_first_prefix varchar(3),
 number_first numeric(6),
 number_first_suffix varchar(2),
 number_last_prefix varchar(3),
 number_last numeric(6),
 number_last_suffix varchar(2),
 street_locality_pid varchar(15),
 location_description varchar(45),
 locality_pid varchar(15) NOT NULL,
 alias_principal char(1),
 postcode varchar(4),
 private_street varchar(75),
 legal_parcel_id varchar(20),
 confidence numeric(1),
 address_site_pid varchar(15) NOT NULL,
 level_geocoded_code numeric(2) NOT NULL,
 property_pid varchar(15),
 gnaf_property_pid varchar(15),
 primary_secondary varchar(1)
);

CREATE TABLE STREET_LOCALITY (
 street_locality_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 street_class_code char(1) NOT NULL,
 street_name varchar(100) NOT NULL,
 street_type_code varchar(15),
 street_suffix_code varchar(15),
 locality_pid varchar(15) NOT NULL,
 gnaf_street_pid varchar(15),
 gnaf_street_confidence numeric(1),
 gnaf_reliability_code numeric(1) NOT NULL
);

CREATE TABLE LOCALITY (
 locality_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 locality_name varchar(100) NOT NULL,
 primary_postcode varchar(4),
 locality_class_code char(1) NOT NULL,
 state_pid varchar(15) NOT NULL,
 gnaf_locality_pid varchar(15),
 gnaf_reliability_code numeric(1) NOT NULL
);

CREATE TABLE STATE (
 state_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 state_name varchar(50) NOT NULL,
 state_abbreviation varchar(3) NOT NULL
);

CREATE TABLE ADDRESS_DEFAULT_GEOCODE (
 address_default_geocode_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 address_detail_pid varchar(15) NOT NULL,
 geocode_type_code varchar(4) NOT NULL,
 longitude numeric(11,8),
 latitude numeric(10,8)
);

CREATE TABLE STREET_TYPE_AUT (
 code varchar(15) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(15)
);

CREATE TABLE STREET_CLASS_AUT (
 code char(1) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(200)
);

CREATE TABLE STREET_SUFFIX_AUT (
 code varchar(15) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(30)
);

CREATE TABLE LEVEL_TYPE_AUT (
 code varchar(4) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(30)
);

CREATE TABLE FLAT_TYPE_AUT (
 code varchar(7) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(30)
);

CREATE TABLE GEOCODE_TYPE_AUT (
 code varchar(4) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(250)
);

CREATE TABLE GEOCODED_LEVEL_TYPE_AUT (
 code numeric(2) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(70)
);
