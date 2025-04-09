-- Table: public.suppliers

-- DROP TABLE IF EXISTS public.suppliers;

CREATE TABLE IF NOT EXISTS public.suppliers
(
    supplierid character varying(10) COLLATE pg_catalog."default" NOT NULL,
    name character varying(100) COLLATE pg_catalog."default",
    contact character varying(20) COLLATE pg_catalog."default",
    contactperson character varying(50) COLLATE pg_catalog."default",
    email character varying(50) COLLATE pg_catalog."default",
    address character varying(100) COLLATE pg_catalog."default",
    leadtime integer,
    CONSTRAINT suppliers_pkey PRIMARY KEY (supplierid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.suppliers
    OWNER to postgres;