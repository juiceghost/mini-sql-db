ALTER TABLE "public"."kkj_project_person" DROP CONSTRAINT "FK_kkj_project_person_project_id";
ALTER TABLE "public"."kkj_project_person" DROP CONSTRAINT "FK_kkj_person_project_person_id";
DROP TABLE IF EXISTS "public"."kkj_project";
DROP TABLE IF EXISTS "public"."kkj_person";
DROP TABLE IF EXISTS "public"."kkj_project_person";
CREATE TABLE "public"."kkj_project" ( 
  "id" SERIAL,
  "project_name" VARCHAR(50) NOT NULL,
  CONSTRAINT "kkj_project_pkey" PRIMARY KEY ("id")
);
CREATE TABLE "public"."kkj_person" ( 
  "id" SERIAL,
  "person_name" VARCHAR(25) NOT NULL,
  CONSTRAINT "kkj_person_pkey" PRIMARY KEY ("id")
);
CREATE TABLE "public"."kkj_project_person" ( 
  "id" SERIAL,
  "project_id" INTEGER NOT NULL,
  "person_id" INTEGER NOT NULL,
  "hours" INTEGER NOT NULL,
  CONSTRAINT "kkj_project_person_pkey" PRIMARY KEY ("id")
);
ALTER TABLE "public"."kkj_project_person" ADD CONSTRAINT "FK_kkj_project_person_project_id" FOREIGN KEY ("project_id") REFERENCES "public"."kkj_project" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."kkj_project_person" ADD CONSTRAINT "FK_kkj_person_project_person_id" FOREIGN KEY ("person_id") REFERENCES "public"."kkj_person" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
