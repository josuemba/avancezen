BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "usuario" (
    "id" serial PRIMARY KEY,
    "idNetzen" integer,
    "nombre" text,
    "apaterno" text,
    "amaterno" text,
    "usuario" text,
    "contrasena" text,
    "estatus" boolean,
    "urlFoto" text,
    "rfc" text,
    "curp" text,
    "fechaNacimiento" timestamp without time zone
);


--
-- MIGRATION VERSION FOR avance
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('avance', '20240417210306582', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240417210306582', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
