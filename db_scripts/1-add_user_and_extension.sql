CREATE ROLE greenlight WITH LOGIN PASSWORD 'pa55word';
CREATE EXTENSION IF NOT EXISTS citext;

GRANT CREATE, USAGE ON SCHEMA public TO greenlight;
