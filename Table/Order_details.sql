-- Table: public.order_details_1

-- DROP TABLE IF EXISTS public.order_details_1;

CREATE TABLE IF NOT EXISTS public.order_details_1
(
    orderid character varying(10) COLLATE pg_catalog."default" NOT NULL,
    productid character varying(20) COLLATE pg_catalog."default" NOT NULL,
    quantity integer,
    unitprice numeric(10,2),
    CONSTRAINT order_details_1_pkey PRIMARY KEY (orderid, productid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.order_details_1
    OWNER to postgres;