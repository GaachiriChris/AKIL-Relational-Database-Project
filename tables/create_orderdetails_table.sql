-- Table: public.orderdetails

-- DROP TABLE IF EXISTS public.orderdetails;

CREATE TABLE IF NOT EXISTS public.orderdetails
(
    orderid character varying(255) COLLATE pg_catalog."default" NOT NULL,
    productid character varying(255) COLLATE pg_catalog."default" NOT NULL,
    quantity integer,
    unitprice numeric(10,2),
    CONSTRAINT orderdetails_pkey PRIMARY KEY (orderid, productid),
    CONSTRAINT orderdetails_orderid_fkey FOREIGN KEY (orderid)
        REFERENCES public.orders (orderid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT orderdetails_productid_fkey FOREIGN KEY (productid)
        REFERENCES public.inventory (productid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.orderdetails
    OWNER to postgres;
