-- Table: public.inventory

-- DROP TABLE IF EXISTS public.inventory;

CREATE TABLE IF NOT EXISTS public.inventory
(
    productid character varying(10) COLLATE pg_catalog."default" NOT NULL,
    productname character varying(50) COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    categoryid character varying(10) COLLATE pg_catalog."default" NOT NULL,
    quantity integer NOT NULL,
    supplierid character varying(10) COLLATE pg_catalog."default" NOT NULL,
    reorderpoint integer NOT NULL,
    unitcost numeric(10,2) NOT NULL,
    sellingprice numeric(10,2) NOT NULL,
    lastrestockdate date NOT NULL,
    CONSTRAINT inventory_pkey PRIMARY KEY (productid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.inventory
    OWNER to postgres;