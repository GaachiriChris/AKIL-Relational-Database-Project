-- Table: public.CUSTOMER

-- DROP TABLE IF EXISTS public."CUSTOMER";

CREATE TABLE IF NOT EXISTS public."CUSTOMER"
(
    "CUSTOMERID" character varying(255) COLLATE pg_catalog."default" NOT NULL,
    "NAME" character varying(255) COLLATE pg_catalog."default",
    "CONTACT" integer,
    "EMAIL" character varying(255) COLLATE pg_catalog."default",
    "ADDRESSES" character varying(255) COLLATE pg_catalog."default",
    "DATE REGISTERED" date,
    CONSTRAINT "CUSTOMER_pkey" PRIMARY KEY ("CUSTOMERID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CUSTOMER"
    OWNER to postgres;
