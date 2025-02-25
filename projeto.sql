PGDMP         3                {            ebac    13.2    13.2 2    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    ebac    DATABASE     d   CREATE DATABASE ebac WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE ebac;
                postgres    false                        2615    16395    store    SCHEMA        CREATE SCHEMA store;
    DROP SCHEMA store;
                postgres    false            �            1259    16420    costumer_order_1    TABLE     U   CREATE TABLE public.costumer_order_1 (
    id integer NOT NULL,
    value integer
);
 $   DROP TABLE public.costumer_order_1;
       public         heap    postgres    false            �            1259    16418    costumer_order_1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.costumer_order_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.costumer_order_1_id_seq;
       public          postgres    false    202            �           0    0    costumer_order_1_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.costumer_order_1_id_seq OWNED BY public.costumer_order_1.id;
          public          postgres    false    201            �            1259    16561    customer    TABLE     �   CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    joined_at timestamp without time zone NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16559    customer_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public          postgres    false    204            �           0    0    customer_customer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;
          public          postgres    false    203            �            1259    16634    customer_order    TABLE     �   CREATE TABLE public.customer_order (
    customer_order_id integer NOT NULL,
    customer_id integer NOT NULL,
    amount integer NOT NULL,
    order_date timestamp without time zone NOT NULL
);
 "   DROP TABLE public.customer_order;
       public         heap    postgres    false            �            1259    16632 $   customer_order_customer_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_customer_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.customer_order_customer_order_id_seq;
       public          postgres    false    210            �           0    0 $   customer_order_customer_order_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.customer_order_customer_order_id_seq OWNED BY public.customer_order.customer_order_id;
          public          postgres    false    209            �            1259    16647 
   order_item    TABLE     �   CREATE TABLE public.order_item (
    order_item_id integer NOT NULL,
    customer_order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL
);
    DROP TABLE public.order_item;
       public         heap    postgres    false            �            1259    16645    order_item_order_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_item_order_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.order_item_order_item_id_seq;
       public          postgres    false    212            �           0    0    order_item_order_item_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.order_item_order_item_id_seq OWNED BY public.order_item.order_item_id;
          public          postgres    false    211            �            1259    16582    product    TABLE     j   CREATE TABLE public.product (
    product_id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16580    product_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public          postgres    false    206            �           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;
          public          postgres    false    205            �            1259    16590    stock    TABLE     }   CREATE TABLE public.stock (
    stock_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL
);
    DROP TABLE public.stock;
       public         heap    postgres    false            �            1259    16588    stock_stock_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.stock_stock_id_seq;
       public          postgres    false    208            �           0    0    stock_stock_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.stock_stock_id_seq OWNED BY public.stock.stock_id;
          public          postgres    false    207            A           2604    16423    costumer_order_1 id    DEFAULT     z   ALTER TABLE ONLY public.costumer_order_1 ALTER COLUMN id SET DEFAULT nextval('public.costumer_order_1_id_seq'::regclass);
 B   ALTER TABLE public.costumer_order_1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    202    202            B           2604    16564    customer customer_id    DEFAULT     |   ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    203    204    204            E           2604    16637     customer_order customer_order_id    DEFAULT     �   ALTER TABLE ONLY public.customer_order ALTER COLUMN customer_order_id SET DEFAULT nextval('public.customer_order_customer_order_id_seq'::regclass);
 O   ALTER TABLE public.customer_order ALTER COLUMN customer_order_id DROP DEFAULT;
       public          postgres    false    209    210    210            F           2604    16650    order_item order_item_id    DEFAULT     �   ALTER TABLE ONLY public.order_item ALTER COLUMN order_item_id SET DEFAULT nextval('public.order_item_order_item_id_seq'::regclass);
 G   ALTER TABLE public.order_item ALTER COLUMN order_item_id DROP DEFAULT;
       public          postgres    false    211    212    212            C           2604    16585    product product_id    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    206    205    206            D           2604    16593    stock stock_id    DEFAULT     p   ALTER TABLE ONLY public.stock ALTER COLUMN stock_id SET DEFAULT nextval('public.stock_stock_id_seq'::regclass);
 =   ALTER TABLE public.stock ALTER COLUMN stock_id DROP DEFAULT;
       public          postgres    false    207    208    208            �          0    16420    costumer_order_1 
   TABLE DATA           5   COPY public.costumer_order_1 (id, value) FROM stdin;
    public          postgres    false    202   %9       �          0    16561    customer 
   TABLE DATA           G   COPY public.customer (customer_id, name, email, joined_at) FROM stdin;
    public          postgres    false    204   B9       �          0    16634    customer_order 
   TABLE DATA           \   COPY public.customer_order (customer_order_id, customer_id, amount, order_date) FROM stdin;
    public          postgres    false    210   %:       �          0    16647 
   order_item 
   TABLE DATA           \   COPY public.order_item (order_item_id, customer_order_id, product_id, quantity) FROM stdin;
    public          postgres    false    212   �:       �          0    16582    product 
   TABLE DATA           3   COPY public.product (product_id, name) FROM stdin;
    public          postgres    false    206   ;       �          0    16590    stock 
   TABLE DATA           ?   COPY public.stock (stock_id, product_id, quantity) FROM stdin;
    public          postgres    false    208   >;       �           0    0    costumer_order_1_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.costumer_order_1_id_seq', 1, false);
          public          postgres    false    201            �           0    0    customer_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customer_customer_id_seq', 12, true);
          public          postgres    false    203            �           0    0 $   customer_order_customer_order_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_customer_order_id_seq', 14, true);
          public          postgres    false    209            �           0    0    order_item_order_item_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.order_item_order_item_id_seq', 9, true);
          public          postgres    false    211            �           0    0    product_product_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_product_id_seq', 3, true);
          public          postgres    false    205            �           0    0    stock_stock_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.stock_stock_id_seq', 3, true);
          public          postgres    false    207            N           2606    16639 "   customer_order customer_order_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.customer_order
    ADD CONSTRAINT customer_order_pkey PRIMARY KEY (customer_order_id);
 L   ALTER TABLE ONLY public.customer_order DROP CONSTRAINT customer_order_pkey;
       public            postgres    false    210            H           2606    16566    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    204            P           2606    16652    order_item order_item_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_pkey PRIMARY KEY (order_item_id);
 D   ALTER TABLE ONLY public.order_item DROP CONSTRAINT order_item_pkey;
       public            postgres    false    212            J           2606    16587    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    206            L           2606    16595    stock stock_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (stock_id);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_pkey;
       public            postgres    false    208            R           2606    16640 .   customer_order customer_order_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_order
    ADD CONSTRAINT customer_order_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id) ON UPDATE CASCADE;
 X   ALTER TABLE ONLY public.customer_order DROP CONSTRAINT customer_order_customer_id_fkey;
       public          postgres    false    210    2888    204            S           2606    16653 ,   order_item order_item_customer_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_customer_order_id_fkey FOREIGN KEY (customer_order_id) REFERENCES public.customer_order(customer_order_id) ON UPDATE CASCADE;
 V   ALTER TABLE ONLY public.order_item DROP CONSTRAINT order_item_customer_order_id_fkey;
       public          postgres    false    2894    210    212            T           2606    16658 %   order_item order_item_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id) ON UPDATE CASCADE;
 O   ALTER TABLE ONLY public.order_item DROP CONSTRAINT order_item_product_id_fkey;
       public          postgres    false    2890    212    206            Q           2606    16596    stock stock_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id) ON UPDATE CASCADE;
 E   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_product_id_fkey;
       public          postgres    false    206    208    2890            �      x������ � �      �   �   x������@E��W���aV�Cަ}/M@D��	`�Hdso�M
�tH�q���N�-SߑW
�;��7� ����fSl	�U�UF�vj��tbdOI;ku�M��9�E�m?�rp=�:�7R
Bx�o�~�wA
H!��7�,��.���ϹƆ'�fgK���V�ju�q�Gx[Р�?1�_pG�4�?�
��Kf�<��}      �   �   x�}���0Eѵ]�ϟj��:�df��ʹ����BX�h��n�Ê��K���l���E�N�\D8ފ�*η;J=���/|uX&�/������Ux���M�A�w�����7�a��@u�fߙv���>L�ۙ5Luر2��TKX      �   5   x�ȹ  �x�$����@>M6AuJhPB��OҿX�����r��I�c�	+      �   #   x�3�L�M����2�SƜ��)��
`N� �>	=      �      x�3�4�45�2R�\�@�Ā+F��� -�R     