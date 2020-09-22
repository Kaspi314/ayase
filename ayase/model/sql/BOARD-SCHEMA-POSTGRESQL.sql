CREATE TABLE "%%BOARD%%_threads" (
	"thread_num" integer NOT NULL,
	"time_op" integer NOT NULL,
	"time_last" integer NOT NULL,
	"time_bump" integer NOT NULL,
	"time_ghost" integer,
	"time_ghost_bump" integer,
	"time_last_modified" integer NOT NULL,
	"nreplies" integer NOT NULL DEFAULT '0',
	"nimages" integer NOT NULL DEFAULT '0',
	"sticky" BOOLEAN NOT NULL DEFAULT 'false',
	"locked" BOOLEAN NOT NULL DEFAULT 'false',
	CONSTRAINT "%%BOARD%%_threads_pk" PRIMARY KEY ("thread_num")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "%%BOARD%%_users" (
	"user_id" serial NOT NULL,
	"name" character varying(100) NOT NULL UNIQUE,
	"trip" character varying(25) NOT NULL UNIQUE,
	"firstseen" integer NOT NULL,
	"postcount" integer NOT NULL,
	CONSTRAINT "%%BOARD%%_users_pk" PRIMARY KEY ("user_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "%%BOARD%%_images" (
	"media_id" serial NOT NULL,
	"media_hash" character varying(25) NOT NULL UNIQUE,
	"media" character varying(20),
	"preview_op" character varying(20),
	"preview_reply" character varying(20),
	"total" integer NOT NULL DEFAULT '0',
	"banned" smallint NOT NULL DEFAULT '0',
	CONSTRAINT "%%BOARD%%_images_pk" PRIMARY KEY ("media_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "%%BOARD%%_daily" (
	"" integer NOT NULL,
	"posts" integer NOT NULL,
	"images" integer NOT NULL,
	"sage" integer NOT NULL,
	"anons" integer NOT NULL,
	"trips" integer NOT NULL,
	"names" integer NOT NULL,
	CONSTRAINT "%%BOARD%%_daily_pk" PRIMARY KEY ("")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "%%BOARD%%" (
	"doc_id" serial NOT NULL,
	"media_id" integer,
	"poster_ip" numeric(39.0,0.0) NOT NULL DEFAULT '0',
	"num" integer NOT NULL UNIQUE,
	"subnum" integer NOT NULL UNIQUE,
	"thread_num" integer NOT NULL DEFAULT '0',
	"op" BOOLEAN NOT NULL DEFAULT 'false',
	"timestamp" integer NOT NULL,
	"timestamp_expired" integer NOT NULL,
	"preview_orig" character varying(20),
	"preview_w" integer NOT NULL DEFAULT '0',
	"preview_h" integer NOT NULL DEFAULT '0',
	"media_filename" TEXT,
	"media_w" integer NOT NULL DEFAULT '0',
	"media_h" integer NOT NULL DEFAULT '0',
	"media_size" integer NOT NULL DEFAULT '0',
	"media_hash" character varying(25),
	"media_orig" character varying(20),
	"spoiler" BOOLEAN NOT NULL DEFAULT 'false',
	"deleted" BOOLEAN NOT NULL DEFAULT 'false',
	"capcode" character varying(1) NOT NULL DEFAULT 'N',
	"email" character varying(100),
	"name" character varying(100),
	"trip" character varying(25),
	"title" character varying(100),
	"" TEXT,
	"delpass" TEXT,
	"sticky" BOOLEAN NOT NULL DEFAULT 'false',
	"locked" BOOLEAN NOT NULL DEFAULT 'false',
	"poster_hash" character varying(8),
	"poster_country" character varying(2),
	"exif" TEXT,
	CONSTRAINT "%%BOARD%%_pk" PRIMARY KEY ("doc_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "%%BOARD%%_deleted" (
	"doc_id" serial NOT NULL,
	"media_id" integer,
	"poster_ip" numeric(39.0,0.0) NOT NULL DEFAULT '0',
	"num" integer NOT NULL UNIQUE,
	"subnum" integer NOT NULL UNIQUE,
	"thread_num" integer NOT NULL DEFAULT '0',
	"op" BOOLEAN NOT NULL DEFAULT 'false',
	"timestamp" integer NOT NULL,
	"timestamp_expired" integer NOT NULL,
	"preview_orig" character varying(20),
	"preview_w" integer NOT NULL DEFAULT '0',
	"preview_h" integer NOT NULL DEFAULT '0',
	"media_filename" TEXT,
	"media_w" integer NOT NULL DEFAULT '0',
	"media_h" integer NOT NULL DEFAULT '0',
	"media_size" integer NOT NULL DEFAULT '0',
	"media_hash" character varying(25),
	"media_orig" character varying(20),
	"spoiler" BOOLEAN NOT NULL DEFAULT 'false',
	"deleted" BOOLEAN NOT NULL DEFAULT 'false',
	"capcode" character varying(1) NOT NULL DEFAULT 'N',
	"email" character varying(100),
	"name" character varying(100),
	"trip" character varying(25),
	"title" character varying(100),
	"" TEXT,
	"delpass" TEXT,
	"sticky" BOOLEAN NOT NULL DEFAULT 'false',
	"locked" BOOLEAN NOT NULL DEFAULT 'false',
	"poster_hash" character varying(8),
	"poster_country" character varying(2),
	"exif" TEXT,
	CONSTRAINT "%%BOARD%%_deleted_pk" PRIMARY KEY ("doc_id")
) WITH (
  OIDS=FALSE
);







ALTER TABLE "%%BOARD%%" ADD CONSTRAINT "%%BOARD%%_fk0" FOREIGN KEY ("media_id") REFERENCES "%%BOARD%%_images"("media_id");

ALTER TABLE "%%BOARD%%_deleted" ADD CONSTRAINT "%%BOARD%%_deleted_fk0" FOREIGN KEY ("media_id") REFERENCES "%%BOARD%%_images"("media_id");

