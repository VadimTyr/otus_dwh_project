CREATE EXTENSION postgis;

CREATE TABLE green_taxi_tripdata (
  id bigserial primary key,
  vendor_id integer,
  lpep_pickup_datetime timestamp without time zone,
  lpep_dropoff_datetime timestamp without time zone,
  store_and_fwd_flag text,
  rate_code_id integer,
  dropoff_location_id integer,
  congestion_surcharge numeric,
  passenger_count integer,
  trip_distance numeric,
  fare_amount numeric,
  extra numeric,
  mta_tax numeric,
  tip_amount numeric,
  tolls_amount numeric,
  ehail_fee numeric,
  improvement_surcharge numeric,
  total_amount numeric,
  payment_type integer,
  trip_type integer,
  pickup_location_id integer
)
WITH (
  autovacuum_enabled = false,
  toast.autovacuum_enabled = false
);

CREATE TABLE yellow_taxi_tripdata (
  id bigserial primary key,
  vendor_id text,
  tpep_pickup_datetime timestamp without time zone,
  tpep_dropoff_datetime timestamp without time zone,
  passenger_count integer,
  trip_distance numeric,
  pickup_longitude numeric,
  pickup_latitude numeric,
  rate_code_id text,
  store_and_fwd_flag text,
  dropoff_longitude numeric,
  dropoff_latitude numeric,
  pickup_location_id integer,
  dropoff_location_id integer,
  payment_type text,
  fare_amount numeric,
  extra numeric,
  mta_tax numeric,
  tip_amount numeric,
  tolls_amount numeric,
  improvement_surcharge numeric,
  total_amount numeric,
  congestion_surcharge numeric,
  airport_fee numeric
)
WITH (
  autovacuum_enabled = false,
  toast.autovacuum_enabled = false
);



CREATE INDEX ON fhv_bases (dba_category);

