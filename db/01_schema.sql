-- Mock tables for the IIRS demo (PostgreSQL)

CREATE TABLE IF NOT EXISTS materials (
  material       TEXT PRIMARY KEY,
  description    TEXT,
  material_type  TEXT,
  material_group TEXT,
  plant          TEXT,
  family         TEXT,
  mgd2           TEXT,
  upc            TEXT
);

CREATE TABLE IF NOT EXISTS iirs_customer_profiles (
  customer_id           TEXT PRIMARY KEY,
  customer_name         TEXT,
  customer_group        TEXT,
  order_frequency       TEXT,
  ordering_horizon_days INT,
  target_weeks_on_hand  INT,
  case_pack_preference  TEXT,
  preferred_brands      TEXT[],
  excluded_categories   TEXT[],
  seasonal_notes        TEXT,
  special_notes         TEXT,
  notes                 TEXT,
  min_recommended_qty   INT
);
