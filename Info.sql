PGDMP          !                 {            Info    15.1    15.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    Info    DATABASE     �   CREATE DATABASE "Info" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Arab Emirates.1252';
    DROP DATABASE "Info";
                postgres    false            �            1259    16407    Info    TABLE     �   CREATE TABLE public."Info" (
    id integer NOT NULL,
    content character varying(200),
    date timestamp without time zone
);
    DROP TABLE public."Info";
       public         heap    postgres    false            �            1259    16406    Info_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Info_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Info_id_seq";
       public          postgres    false    215            �           0    0    Info_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Info_id_seq" OWNED BY public."Info".id;
          public          postgres    false    214            e           2604    16410    Info id    DEFAULT     f   ALTER TABLE ONLY public."Info" ALTER COLUMN id SET DEFAULT nextval('public."Info_id_seq"'::regclass);
 8   ALTER TABLE public."Info" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �          0    16407    Info 
   TABLE DATA           3   COPY public."Info" (id, content, date) FROM stdin;
    public          postgres    false    215   G
       �           0    0    Info_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Info_id_seq"', 5, true);
          public          postgres    false    214            g           2606    16412    Info Info_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Info"
    ADD CONSTRAINT "Info_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Info" DROP CONSTRAINT "Info_pkey";
       public            postgres    false    215            �   �   x�m��n�0�g�)n�����7�֡c:�e������˨����;�Qߥ���6��"\&���A虊��^JJ���;Zx��.3)z{��:q��I���)���&+��U�A�J�!E?�������G>6��|9t��銮{��^���Y�c����(`�8��:�4˃���B��V�c�:!n)��U����L�ľT�>�l���������v�[�ۯ��ul���4t      