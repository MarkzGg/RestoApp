PGDMP      +    
            |            RESTAURANTE    16.3    16.3 F               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    32768    RESTAURANTE    DATABASE     �   CREATE DATABASE "RESTAURANTE" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "RESTAURANTE";
                postgres    false            �            1259    32772    Delivery    TABLE     /  CREATE TABLE public."Delivery" (
    id_delivery integer[] NOT NULL,
    nombre_cliente character varying(32)[] NOT NULL,
    precio money[] NOT NULL,
    id_plato integer NOT NULL,
    id_guarniciones integer NOT NULL,
    id_bebidas integer NOT NULL,
    direccion character varying(50)[] NOT NULL
);
    DROP TABLE public."Delivery";
       public         heap    postgres    false            �            1259    41034    bebidas    TABLE     �   CREATE TABLE public.bebidas (
    id_bebida integer NOT NULL,
    name character varying(255) NOT NULL,
    precio money NOT NULL,
    creted_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.bebidas;
       public         heap    postgres    false            �            1259    41033    bebidas_id_bebida_seq    SEQUENCE     �   CREATE SEQUENCE public.bebidas_id_bebida_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.bebidas_id_bebida_seq;
       public          postgres    false    226                       0    0    bebidas_id_bebida_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.bebidas_id_bebida_seq OWNED BY public.bebidas.id_bebida;
          public          postgres    false    225            �            1259    41069    delivery    TABLE     �   CREATE TABLE public.delivery (
    id_delivery integer NOT NULL,
    numero integer NOT NULL,
    creted_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.delivery;
       public         heap    postgres    false            �            1259    41068    delivery_id_delivery_seq    SEQUENCE     �   CREATE SEQUENCE public.delivery_id_delivery_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.delivery_id_delivery_seq;
       public          postgres    false    230                       0    0    delivery_id_delivery_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.delivery_id_delivery_seq OWNED BY public.delivery.id_delivery;
          public          postgres    false    229            �            1259    41024    entrada    TABLE     �   CREATE TABLE public.entrada (
    id_entrada integer NOT NULL,
    name character varying(255) NOT NULL,
    precio money NOT NULL,
    creted_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.entrada;
       public         heap    postgres    false            �            1259    41023    entrada_id_entrada_seq    SEQUENCE     �   CREATE SEQUENCE public.entrada_id_entrada_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.entrada_id_entrada_seq;
       public          postgres    false    224                       0    0    entrada_id_entrada_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.entrada_id_entrada_seq OWNED BY public.entrada.id_entrada;
          public          postgres    false    223            �            1259    41014    guarniciones    TABLE     �   CREATE TABLE public.guarniciones (
    id_guarnicion integer NOT NULL,
    name character varying(255) NOT NULL,
    precio money NOT NULL,
    creted_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.guarniciones;
       public         heap    postgres    false            �            1259    41013    guarniciones_id_guarnicion_seq    SEQUENCE     �   CREATE SEQUENCE public.guarniciones_id_guarnicion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.guarniciones_id_guarnicion_seq;
       public          postgres    false    222                       0    0    guarniciones_id_guarnicion_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.guarniciones_id_guarnicion_seq OWNED BY public.guarniciones.id_guarnicion;
          public          postgres    false    221            �            1259    41059    mesa    TABLE     �   CREATE TABLE public.mesa (
    id_mesa integer NOT NULL,
    numero integer NOT NULL,
    creted_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mesa;
       public         heap    postgres    false            �            1259    41058    mesa_id_mesa_seq    SEQUENCE     �   CREATE SEQUENCE public.mesa_id_mesa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.mesa_id_mesa_seq;
       public          postgres    false    228                       0    0    mesa_id_mesa_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.mesa_id_mesa_seq OWNED BY public.mesa.id_mesa;
          public          postgres    false    227            �            1259    32786    orden    TABLE     7  CREATE TABLE public.orden (
    "id_ orden" integer NOT NULL,
    nombre_cliente character varying(32)[] NOT NULL,
    precio money[] NOT NULL,
    id_mesa integer NOT NULL,
    id_entrada integer NOT NULL,
    id_guarniciones integer NOT NULL,
    id_bebidas integer NOT NULL,
    id_plato integer NOT NULL
);
    DROP TABLE public.orden;
       public         heap    postgres    false            �            1259    40975    platos    TABLE     �   CREATE TABLE public.platos (
    id_plato integer NOT NULL,
    name character varying(255) NOT NULL,
    precio money NOT NULL,
    creted_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.platos;
       public         heap    postgres    false            �            1259    40974    platos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.platos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.platos_id_seq;
       public          postgres    false    220                       0    0    platos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.platos_id_seq OWNED BY public.platos.id_plato;
          public          postgres    false    219            �            1259    40962    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    creted_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    40961    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    218                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    217            H           2604    41037    bebidas id_bebida    DEFAULT     v   ALTER TABLE ONLY public.bebidas ALTER COLUMN id_bebida SET DEFAULT nextval('public.bebidas_id_bebida_seq'::regclass);
 @   ALTER TABLE public.bebidas ALTER COLUMN id_bebida DROP DEFAULT;
       public          postgres    false    225    226    226            L           2604    41072    delivery id_delivery    DEFAULT     |   ALTER TABLE ONLY public.delivery ALTER COLUMN id_delivery SET DEFAULT nextval('public.delivery_id_delivery_seq'::regclass);
 C   ALTER TABLE public.delivery ALTER COLUMN id_delivery DROP DEFAULT;
       public          postgres    false    230    229    230            F           2604    41027    entrada id_entrada    DEFAULT     x   ALTER TABLE ONLY public.entrada ALTER COLUMN id_entrada SET DEFAULT nextval('public.entrada_id_entrada_seq'::regclass);
 A   ALTER TABLE public.entrada ALTER COLUMN id_entrada DROP DEFAULT;
       public          postgres    false    223    224    224            D           2604    41017    guarniciones id_guarnicion    DEFAULT     �   ALTER TABLE ONLY public.guarniciones ALTER COLUMN id_guarnicion SET DEFAULT nextval('public.guarniciones_id_guarnicion_seq'::regclass);
 I   ALTER TABLE public.guarniciones ALTER COLUMN id_guarnicion DROP DEFAULT;
       public          postgres    false    222    221    222            J           2604    41062    mesa id_mesa    DEFAULT     l   ALTER TABLE ONLY public.mesa ALTER COLUMN id_mesa SET DEFAULT nextval('public.mesa_id_mesa_seq'::regclass);
 ;   ALTER TABLE public.mesa ALTER COLUMN id_mesa DROP DEFAULT;
       public          postgres    false    227    228    228            B           2604    40978    platos id_plato    DEFAULT     l   ALTER TABLE ONLY public.platos ALTER COLUMN id_plato SET DEFAULT nextval('public.platos_id_seq'::regclass);
 >   ALTER TABLE public.platos ALTER COLUMN id_plato DROP DEFAULT;
       public          postgres    false    219    220    220            @           2604    40965    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218                       0    32772    Delivery 
   TABLE DATA           {   COPY public."Delivery" (id_delivery, nombre_cliente, precio, id_plato, id_guarniciones, id_bebidas, direccion) FROM stdin;
    public          postgres    false    215   �O                 0    41034    bebidas 
   TABLE DATA           E   COPY public.bebidas (id_bebida, name, precio, creted_at) FROM stdin;
    public          postgres    false    226   �O                 0    41069    delivery 
   TABLE DATA           B   COPY public.delivery (id_delivery, numero, creted_at) FROM stdin;
    public          postgres    false    230   \P       	          0    41024    entrada 
   TABLE DATA           F   COPY public.entrada (id_entrada, name, precio, creted_at) FROM stdin;
    public          postgres    false    224   �P                 0    41014    guarniciones 
   TABLE DATA           N   COPY public.guarniciones (id_guarnicion, name, precio, creted_at) FROM stdin;
    public          postgres    false    222   �P                 0    41059    mesa 
   TABLE DATA           :   COPY public.mesa (id_mesa, numero, creted_at) FROM stdin;
    public          postgres    false    228   DQ                 0    32786    orden 
   TABLE DATA           �   COPY public.orden ("id_ orden", nombre_cliente, precio, id_mesa, id_entrada, id_guarniciones, id_bebidas, id_plato) FROM stdin;
    public          postgres    false    216   �Q                 0    40975    platos 
   TABLE DATA           C   COPY public.platos (id_plato, name, precio, creted_at) FROM stdin;
    public          postgres    false    220   �Q                 0    40962    users 
   TABLE DATA           ;   COPY public.users (id, name, email, creted_at) FROM stdin;
    public          postgres    false    218   QR                  0    0    bebidas_id_bebida_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.bebidas_id_bebida_seq', 3, true);
          public          postgres    false    225                       0    0    delivery_id_delivery_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.delivery_id_delivery_seq', 3, true);
          public          postgres    false    229                       0    0    entrada_id_entrada_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.entrada_id_entrada_seq', 2, true);
          public          postgres    false    223                        0    0    guarniciones_id_guarnicion_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.guarniciones_id_guarnicion_seq', 5, true);
          public          postgres    false    221            !           0    0    mesa_id_mesa_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mesa_id_mesa_seq', 5, true);
          public          postgres    false    227            "           0    0    platos_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.platos_id_seq', 8, true);
          public          postgres    false    219            #           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 12, true);
          public          postgres    false    217            O           2606    32799    Delivery Delivery_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Delivery"
    ADD CONSTRAINT "Delivery_pkey" PRIMARY KEY (id_delivery);
 D   ALTER TABLE ONLY public."Delivery" DROP CONSTRAINT "Delivery_pkey";
       public            postgres    false    215            Q           2606    32805    orden Mesa_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.orden
    ADD CONSTRAINT "Mesa_pkey" PRIMARY KEY ("id_ orden");
 ;   ALTER TABLE ONLY public.orden DROP CONSTRAINT "Mesa_pkey";
       public            postgres    false    216            b           2606    41042    bebidas bebidas_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.bebidas
    ADD CONSTRAINT bebidas_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.bebidas DROP CONSTRAINT bebidas_name_key;
       public            postgres    false    226            d           2606    41040    bebidas bebidas_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.bebidas
    ADD CONSTRAINT bebidas_pkey PRIMARY KEY (id_bebida);
 >   ALTER TABLE ONLY public.bebidas DROP CONSTRAINT bebidas_pkey;
       public            postgres    false    226            j           2606    41077    delivery delivery_numero_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT delivery_numero_key UNIQUE (numero);
 F   ALTER TABLE ONLY public.delivery DROP CONSTRAINT delivery_numero_key;
       public            postgres    false    230            l           2606    41075    delivery delivery_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT delivery_pkey PRIMARY KEY (id_delivery);
 @   ALTER TABLE ONLY public.delivery DROP CONSTRAINT delivery_pkey;
       public            postgres    false    230            ^           2606    41032    entrada entrada_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT entrada_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.entrada DROP CONSTRAINT entrada_name_key;
       public            postgres    false    224            `           2606    41030    entrada entrada_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT entrada_pkey PRIMARY KEY (id_entrada);
 >   ALTER TABLE ONLY public.entrada DROP CONSTRAINT entrada_pkey;
       public            postgres    false    224            Z           2606    41022 "   guarniciones guarniciones_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.guarniciones
    ADD CONSTRAINT guarniciones_name_key UNIQUE (name);
 L   ALTER TABLE ONLY public.guarniciones DROP CONSTRAINT guarniciones_name_key;
       public            postgres    false    222            \           2606    41020    guarniciones guarniciones_pkey1 
   CONSTRAINT     h   ALTER TABLE ONLY public.guarniciones
    ADD CONSTRAINT guarniciones_pkey1 PRIMARY KEY (id_guarnicion);
 I   ALTER TABLE ONLY public.guarniciones DROP CONSTRAINT guarniciones_pkey1;
       public            postgres    false    222            f           2606    41067    mesa mesa_numero_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT mesa_numero_key UNIQUE (numero);
 >   ALTER TABLE ONLY public.mesa DROP CONSTRAINT mesa_numero_key;
       public            postgres    false    228            h           2606    41065    mesa mesa_pkey1 
   CONSTRAINT     R   ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT mesa_pkey1 PRIMARY KEY (id_mesa);
 9   ALTER TABLE ONLY public.mesa DROP CONSTRAINT mesa_pkey1;
       public            postgres    false    228            X           2606    40981    platos platos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.platos
    ADD CONSTRAINT platos_pkey PRIMARY KEY (id_plato);
 <   ALTER TABLE ONLY public.platos DROP CONSTRAINT platos_pkey;
       public            postgres    false    220            T           2606    40972    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    218            V           2606    40970    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            R           1259    32835    fki_id_entrada    INDEX     F   CREATE INDEX fki_id_entrada ON public.orden USING btree (id_entrada);
 "   DROP INDEX public.fki_id_entrada;
       public            postgres    false    216            m           2606    41053    orden id_bebida    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden
    ADD CONSTRAINT id_bebida FOREIGN KEY (id_bebidas) REFERENCES public.bebidas(id_bebida) NOT VALID;
 9   ALTER TABLE ONLY public.orden DROP CONSTRAINT id_bebida;
       public          postgres    false    4708    226    216            n           2606    41043    orden id_entrada    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden
    ADD CONSTRAINT id_entrada FOREIGN KEY (id_entrada) REFERENCES public.entrada(id_entrada) NOT VALID;
 :   ALTER TABLE ONLY public.orden DROP CONSTRAINT id_entrada;
       public          postgres    false    216    4704    224            o           2606    41048    orden id_guarnicion    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden
    ADD CONSTRAINT id_guarnicion FOREIGN KEY (id_guarniciones) REFERENCES public.guarniciones(id_guarnicion) NOT VALID;
 =   ALTER TABLE ONLY public.orden DROP CONSTRAINT id_guarnicion;
       public          postgres    false    222    4700    216            p           2606    40986    orden id_plato    FK CONSTRAINT        ALTER TABLE ONLY public.orden
    ADD CONSTRAINT id_plato FOREIGN KEY (id_plato) REFERENCES public.platos(id_plato) NOT VALID;
 8   ALTER TABLE ONLY public.orden DROP CONSTRAINT id_plato;
       public          postgres    false    216    4696    220                   x������ � �         P   x�3���KN�M��I�46�10PxԴ�����D��L��P��������T�����Șˈ�9��S+#C=Ks3cK�=... J!_         ,   x�3�4�4202�50�52T00�20�22�313526����� uI<      	   <   x�3�I�M�I-Nc�GMk8��Lt�t�L�M��L����L�͹b���� ���         P   x�3��(��,I,�4�10PxԴ�����D��L��P��������L����Ąˈ3$171'�bs+cs=sCsc#�=... �y�         I   x�m�9�0�Z�"��N�,�# �m�Ņ�փ�X���]'i���n����!��[��5R��mF�U �3�            x������ � �         �   x��ͱ�0@��n��Xw�/qܥ�� 4��d�(�����	�/=}���)�>���	Dw��z<�����b�:F'�-�*Z�j��t�V��m	��tITs)���7�k$	-�>���x�<�A�j��A�7��5�         �   x���K
�0�ur�^�������((��M(�V[�+Oo���*��_|�B�����j�w߷Yc^�����@�f��u�ưY���j+���Ĝ�/E�N�|�O���ŷq�!,C�n`�hPv�d=�Z`0�9MD�������6���,n��lj�J ���/�_�fLS*l�I�� ŦM�w�6�JJ� J8wM     