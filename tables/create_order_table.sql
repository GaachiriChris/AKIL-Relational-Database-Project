-- Table: public.orders

-- DROP TABLE IF EXISTS public.orders;

CREATE TABLE IF NOT EXISTS public.orders
(
    orderid character varying(10) COLLATE pg_catalog."default" NOT NULL,
    customerid character varying(10) COLLATE pg_catalog."default",
    orderdate date,
    deliveryaddress character varying(255) COLLATE pg_catalog."default",
    totalamount numeric(10,2),
    orderstatus character varying(50) COLLATE pg_catalog."default",
    createdby character varying(10) COLLATE pg_catalog."default",
    CONSTRAINT orders_pkey PRIMARY KEY (orderid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.orders
    OWNER to postgres;