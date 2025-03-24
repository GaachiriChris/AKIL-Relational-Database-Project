-- Table: public.transactions

-- DROP TABLE IF EXISTS public.transactions;

CREATE TABLE IF NOT EXISTS public.transactions
(
    transactionid character varying(10) COLLATE pg_catalog."default" NOT NULL,
    orderid character varying(10) COLLATE pg_catalog."default" NOT NULL,
    amount numeric(10,2) NOT NULL,
    transactiondate date NOT NULL,
    paymentmethod character varying(50) COLLATE pg_catalog."default" NOT NULL,
    processedby character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT transactions_pkey PRIMARY KEY (transactionid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.transactions
    OWNER to postgres;