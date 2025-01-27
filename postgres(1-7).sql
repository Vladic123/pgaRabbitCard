PGDMP     #                     z            postgres #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)    14.1 �    J           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            K           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            L           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            M           1262    13427    postgres    DATABASE     Y   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';
    DROP DATABASE postgres;
                postgres    false            N           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3149            �            1259    16638    courses    TABLE     �   CREATE TABLE public.courses (
    course_number integer NOT NULL,
    name character varying(255),
    location character varying(255),
    par_value integer,
    total_yardage integer
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    16644    cttp    TABLE     �   CREATE TABLE public.cttp (
    id integer NOT NULL,
    t_id integer,
    g_id integer,
    round integer,
    hole integer,
    group_id integer,
    won boolean,
    p_id integer
);
    DROP TABLE public.cttp;
       public         heap    postgres    false            �            1259    16647    cttp_id_seq    SEQUENCE     |   CREATE SEQUENCE public.cttp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 "   DROP SEQUENCE public.cttp_id_seq;
       public          postgres    false    211            O           0    0    cttp_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cttp_id_seq OWNED BY public.cttp.id;
          public          postgres    false    212            �            1259    16649    cttp_results    TABLE     �   CREATE TABLE public.cttp_results (
    p_id integer,
    t_id integer,
    round integer,
    hole integer,
    distance double precision,
    primary_key integer NOT NULL
);
     DROP TABLE public.cttp_results;
       public         heap    postgres    false            �            1259    16880    cttp_results_primary_key_seq    SEQUENCE     �   ALTER TABLE public.cttp_results ALTER COLUMN primary_key ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cttp_results_primary_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    213            �            1259    16825    golfer_stats    TABLE     �  CREATE TABLE public.golfer_stats (
    p_id integer,
    year integer,
    birdie_conversion character varying(255),
    bc_rank integer,
    driving_accuracy character varying(255),
    da_rank integer,
    approach_100125 character varying(255),
    a100_rank integer,
    approach_125150 character varying(255),
    a125_rank integer,
    approach_150175 character varying(255),
    a150_rank integer,
    approach_175200 character varying(255),
    a175_rank integer,
    approach_200 character varying(255),
    a200_rank integer,
    scrambling_perc character varying(255),
    sp_rank integer,
    sand_save character varying(255),
    ss_rank integer,
    putting_perc character varying(255),
    pp_rank integer
);
     DROP TABLE public.golfer_stats;
       public         heap    postgres    false            �            1259    16658    golfers    TABLE     4  CREATE TABLE public.golfers (
    p_id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    country character varying(255),
    middle_name character varying(255),
    nick_name character varying(255),
    height double precision,
    weight double precision,
    birthdate character varying(255),
    tour_winnings character varying(255),
    current_season_highlight character varying(2000),
    special_interests character varying(255),
    fun_fact character varying(255),
    birthplace character varying(255)
);
    DROP TABLE public.golfers;
       public         heap    postgres    false            �            1259    16664 	   groupings    TABLE     �   CREATE TABLE public.groupings (
    id integer NOT NULL,
    group_id integer,
    t_id integer,
    p_id integer,
    round integer,
    tee_time timestamp(6) without time zone,
    hole integer DEFAULT 0
);
    DROP TABLE public.groupings;
       public         heap    postgres    false            �            1259    16668    groupings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groupings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE public.groupings_id_seq;
       public          postgres    false    215            P           0    0    groupings_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.groupings_id_seq OWNED BY public.groupings.id;
          public          postgres    false    216            �            1259    16841 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    run_on timestamp without time zone NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16839    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    238            Q           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    237            �            1259    16670    rabbitcard_rankings    TABLE        CREATE TABLE public.rabbitcard_rankings (
    id integer NOT NULL,
    user_id integer,
    t_id integer,
    score integer
);
 '   DROP TABLE public.rabbitcard_rankings;
       public         heap    postgres    false            �            1259    16673    rabbitcard_rankings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rabbitcard_rankings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 1   DROP SEQUENCE public.rabbitcard_rankings_id_seq;
       public          postgres    false    217            R           0    0    rabbitcard_rankings_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.rabbitcard_rankings_id_seq OWNED BY public.rabbitcard_rankings.id;
          public          postgres    false    218            �            1259    16396    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16675    roles_id_seq    SEQUENCE     }   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    204            S           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    219            �            1259    16677 
   scoreboard    TABLE     P  CREATE TABLE public.scoreboard (
    id integer NOT NULL,
    t_id integer,
    p_id integer,
    round integer,
    status character varying(255),
    start_hole integer,
    group_id integer,
    "position" character varying(255),
    total character varying(255),
    today character varying(255),
    thru character varying(255)
);
    DROP TABLE public.scoreboard;
       public         heap    postgres    false            �            1259    16683    scoreboard_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scoreboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 (   DROP SEQUENCE public.scoreboard_id_seq;
       public          postgres    false    220            T           0    0    scoreboard_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.scoreboard_id_seq OWNED BY public.scoreboard.id;
          public          postgres    false    221            �            1259    16685 
   scorecards    TABLE     �   CREATE TABLE public.scorecards (
    id integer NOT NULL,
    t_id integer,
    p_id integer,
    round integer,
    thru character varying(255),
    hole_number integer,
    par integer,
    strokes integer,
    status character varying(255)
);
    DROP TABLE public.scorecards;
       public         heap    postgres    false            �            1259    16691    scorecards_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scorecards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 (   DROP SEQUENCE public.scorecards_id_seq;
       public          postgres    false    222            U           0    0    scorecards_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.scorecards_id_seq OWNED BY public.scorecards.id;
          public          postgres    false    223            �            1259    16693    tournament_field    TABLE     f   CREATE TABLE public.tournament_field (
    id integer NOT NULL,
    t_id integer,
    p_id integer
);
 $   DROP TABLE public.tournament_field;
       public         heap    postgres    false            �            1259    16696    tournament_field_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tournament_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 .   DROP SEQUENCE public.tournament_field_id_seq;
       public          postgres    false    224            V           0    0    tournament_field_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tournament_field_id_seq OWNED BY public.tournament_field.id;
          public          postgres    false    225            �            1259    16698    tournament_holes    TABLE     �   CREATE TABLE public.tournament_holes (
    hole_number integer,
    t_id integer,
    course_number integer,
    par integer,
    yardage integer,
    id integer NOT NULL
);
 $   DROP TABLE public.tournament_holes;
       public         heap    postgres    false            �            1259    16701    tournament_holes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tournament_holes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 .   DROP SEQUENCE public.tournament_holes_id_seq;
       public          postgres    false    226            W           0    0    tournament_holes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tournament_holes_id_seq OWNED BY public.tournament_holes.id;
          public          postgres    false    227            �            1259    16703    tournament_hosts    TABLE     o   CREATE TABLE public.tournament_hosts (
    t_id integer,
    course_number integer,
    id integer NOT NULL
);
 $   DROP TABLE public.tournament_hosts;
       public         heap    postgres    false            �            1259    16706    tournament_hosts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tournament_hosts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 .   DROP SEQUENCE public.tournament_hosts_id_seq;
       public          postgres    false    228            X           0    0    tournament_hosts_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tournament_hosts_id_seq OWNED BY public.tournament_hosts.id;
          public          postgres    false    229            �            1259    16708    tournaments_completed    TABLE     ]  CREATE TABLE public.tournaments_completed (
    t_id integer NOT NULL,
    name character varying(255),
    season integer,
    played_year integer,
    sequence_number integer,
    start_date timestamp(6) without time zone,
    end_date timestamp(6) without time zone,
    purse integer,
    completed boolean,
    rounds_official_money integer
);
 )   DROP TABLE public.tournaments_completed;
       public         heap    postgres    false            �            1259    16403    user_pick_cttps    TABLE     �   CREATE TABLE public.user_pick_cttps (
    id integer NOT NULL,
    user_id integer,
    cttp_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public.user_pick_cttps;
       public         heap    postgres    false            �            1259    16401    user_pick_cttps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_pick_cttps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.user_pick_cttps_id_seq;
       public          postgres    false    206            Y           0    0    user_pick_cttps_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.user_pick_cttps_id_seq OWNED BY public.user_pick_cttps.id;
          public          postgres    false    205            �            1259    16411    user_rabbitcards    TABLE     P  CREATE TABLE public.user_rabbitcards (
    id integer NOT NULL,
    user_id integer,
    t_id integer,
    round integer,
    notification boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    tie_feet integer,
    tie_inches integer,
    state integer DEFAULT 1 NOT NULL
);
 $   DROP TABLE public.user_rabbitcards;
       public         heap    postgres    false            �            1259    16409    user_rabbitcards_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_rabbitcards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.user_rabbitcards_id_seq;
       public          postgres    false    208            Z           0    0    user_rabbitcards_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.user_rabbitcards_id_seq OWNED BY public.user_rabbitcards.id;
          public          postgres    false    207            �            1259    16417 
   user_roles    TABLE     �   CREATE TABLE public.user_roles (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "roleId" integer NOT NULL,
    "userId" integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    16711    user_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 (   DROP SEQUENCE public.user_roles_id_seq;
       public          postgres    false            �            1259    16387    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    reset_password_token character varying(255),
    device_token character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16385    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    203            [           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    202            �            1259    16714    winners    TABLE     �   CREATE TABLE public.winners (
    id integer NOT NULL,
    t_id integer,
    p_id integer,
    total_score integer,
    money_earned integer,
    fedex_points_earned integer
);
    DROP TABLE public.winners;
       public         heap    postgres    false            �            1259    16717    winners_id_seq    SEQUENCE        CREATE SEQUENCE public.winners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 %   DROP SEQUENCE public.winners_id_seq;
       public          postgres    false    232            \           0    0    winners_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.winners_id_seq OWNED BY public.winners.id;
          public          postgres    false    233            �            1259    16719    worldgolfrankings    TABLE     �   CREATE TABLE public.worldgolfrankings (
    id integer NOT NULL,
    p_id integer,
    rank integer,
    year integer,
    prev_rank integer
);
 %   DROP TABLE public.worldgolfrankings;
       public         heap    postgres    false            �            1259    16722    worldgolfrankings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.worldgolfrankings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 /   DROP SEQUENCE public.worldgolfrankings_id_seq;
       public          postgres    false    234            ]           0    0    worldgolfrankings_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.worldgolfrankings_id_seq OWNED BY public.worldgolfrankings.id;
          public          postgres    false    235            g           2604    16809    cttp id    DEFAULT     b   ALTER TABLE ONLY public.cttp ALTER COLUMN id SET DEFAULT nextval('public.cttp_id_seq'::regclass);
 6   ALTER TABLE public.cttp ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            i           2604    16810    groupings id    DEFAULT     l   ALTER TABLE ONLY public.groupings ALTER COLUMN id SET DEFAULT nextval('public.groupings_id_seq'::regclass);
 ;   ALTER TABLE public.groupings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            r           2604    16844    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            j           2604    16811    rabbitcard_rankings id    DEFAULT     �   ALTER TABLE ONLY public.rabbitcard_rankings ALTER COLUMN id SET DEFAULT nextval('public.rabbitcard_rankings_id_seq'::regclass);
 E   ALTER TABLE public.rabbitcard_rankings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            c           2604    16812    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    204            k           2604    16813    scoreboard id    DEFAULT     n   ALTER TABLE ONLY public.scoreboard ALTER COLUMN id SET DEFAULT nextval('public.scoreboard_id_seq'::regclass);
 <   ALTER TABLE public.scoreboard ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            l           2604    16814    scorecards id    DEFAULT     n   ALTER TABLE ONLY public.scorecards ALTER COLUMN id SET DEFAULT nextval('public.scorecards_id_seq'::regclass);
 <   ALTER TABLE public.scorecards ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            m           2604    16815    tournament_field id    DEFAULT     z   ALTER TABLE ONLY public.tournament_field ALTER COLUMN id SET DEFAULT nextval('public.tournament_field_id_seq'::regclass);
 B   ALTER TABLE public.tournament_field ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            n           2604    16816    tournament_holes id    DEFAULT     z   ALTER TABLE ONLY public.tournament_holes ALTER COLUMN id SET DEFAULT nextval('public.tournament_holes_id_seq'::regclass);
 B   ALTER TABLE public.tournament_holes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            o           2604    16817    tournament_hosts id    DEFAULT     z   ALTER TABLE ONLY public.tournament_hosts ALTER COLUMN id SET DEFAULT nextval('public.tournament_hosts_id_seq'::regclass);
 B   ALTER TABLE public.tournament_hosts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            d           2604    16818    user_pick_cttps id    DEFAULT     x   ALTER TABLE ONLY public.user_pick_cttps ALTER COLUMN id SET DEFAULT nextval('public.user_pick_cttps_id_seq'::regclass);
 A   ALTER TABLE public.user_pick_cttps ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206            e           2604    16819    user_rabbitcards id    DEFAULT     z   ALTER TABLE ONLY public.user_rabbitcards ALTER COLUMN id SET DEFAULT nextval('public.user_rabbitcards_id_seq'::regclass);
 B   ALTER TABLE public.user_rabbitcards ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    208    208            b           2604    16820    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            p           2604    16821 
   winners id    DEFAULT     h   ALTER TABLE ONLY public.winners ALTER COLUMN id SET DEFAULT nextval('public.winners_id_seq'::regclass);
 9   ALTER TABLE public.winners ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            q           2604    16822    worldgolfrankings id    DEFAULT     |   ALTER TABLE ONLY public.worldgolfrankings ALTER COLUMN id SET DEFAULT nextval('public.worldgolfrankings_id_seq'::regclass);
 C   ALTER TABLE public.worldgolfrankings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            *          0    16638    courses 
   TABLE DATA           Z   COPY public.courses (course_number, name, location, par_value, total_yardage) FROM stdin;
    public          postgres    false    210   ��       +          0    16644    cttp 
   TABLE DATA           P   COPY public.cttp (id, t_id, g_id, round, hole, group_id, won, p_id) FROM stdin;
    public          postgres    false    211   r�       -          0    16649    cttp_results 
   TABLE DATA           V   COPY public.cttp_results (p_id, t_id, round, hole, distance, primary_key) FROM stdin;
    public          postgres    false    213   ��       D          0    16825    golfer_stats 
   TABLE DATA           7  COPY public.golfer_stats (p_id, year, birdie_conversion, bc_rank, driving_accuracy, da_rank, approach_100125, a100_rank, approach_125150, a125_rank, approach_150175, a150_rank, approach_175200, a175_rank, approach_200, a200_rank, scrambling_perc, sp_rank, sand_save, ss_rank, putting_perc, pp_rank) FROM stdin;
    public          postgres    false    236   ��       .          0    16658    golfers 
   TABLE DATA           �   COPY public.golfers (p_id, first_name, last_name, country, middle_name, nick_name, height, weight, birthdate, tour_winnings, current_season_highlight, special_interests, fun_fact, birthplace) FROM stdin;
    public          postgres    false    214         /          0    16664 	   groupings 
   TABLE DATA           T   COPY public.groupings (id, group_id, t_id, p_id, round, tee_time, hole) FROM stdin;
    public          postgres    false    215   ,Y      F          0    16841 
   migrations 
   TABLE DATA           6   COPY public.migrations (id, name, run_on) FROM stdin;
    public          postgres    false    238   �m      1          0    16670    rabbitcard_rankings 
   TABLE DATA           G   COPY public.rabbitcard_rankings (id, user_id, t_id, score) FROM stdin;
    public          postgres    false    217   ^n      $          0    16396    roles 
   TABLE DATA           C   COPY public.roles (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    204   {n      4          0    16677 
   scoreboard 
   TABLE DATA           y   COPY public.scoreboard (id, t_id, p_id, round, status, start_hole, group_id, "position", total, today, thru) FROM stdin;
    public          postgres    false    220   �n      6          0    16685 
   scorecards 
   TABLE DATA           d   COPY public.scorecards (id, t_id, p_id, round, thru, hole_number, par, strokes, status) FROM stdin;
    public          postgres    false    222   iv      8          0    16693    tournament_field 
   TABLE DATA           :   COPY public.tournament_field (id, t_id, p_id) FROM stdin;
    public          postgres    false    224   Kp      :          0    16698    tournament_holes 
   TABLE DATA           ^   COPY public.tournament_holes (hole_number, t_id, course_number, par, yardage, id) FROM stdin;
    public          postgres    false    226   �r      <          0    16703    tournament_hosts 
   TABLE DATA           C   COPY public.tournament_hosts (t_id, course_number, id) FROM stdin;
    public          postgres    false    228   Ы      >          0    16708    tournaments_completed 
   TABLE DATA           �   COPY public.tournaments_completed (t_id, name, season, played_year, sequence_number, start_date, end_date, purse, completed, rounds_official_money) FROM stdin;
    public          postgres    false    230   R�      &          0    16403    user_pick_cttps 
   TABLE DATA           Y   COPY public.user_pick_cttps (id, user_id, cttp_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    206   ��      (          0    16411    user_rabbitcards 
   TABLE DATA           �   COPY public.user_rabbitcards (id, user_id, t_id, round, notification, "createdAt", "updatedAt", tie_feet, tie_inches, state) FROM stdin;
    public          postgres    false    208   K�      )          0    16417 
   user_roles 
   TABLE DATA           R   COPY public.user_roles ("createdAt", "updatedAt", "roleId", "userId") FROM stdin;
    public          postgres    false    209   a�      #          0    16387    users 
   TABLE DATA           �   COPY public.users (id, email, password, first_name, last_name, reset_password_token, device_token, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    203   ~�      @          0    16714    winners 
   TABLE DATA           a   COPY public.winners (id, t_id, p_id, total_score, money_earned, fedex_points_earned) FROM stdin;
    public          postgres    false    232   *�      B          0    16719    worldgolfrankings 
   TABLE DATA           L   COPY public.worldgolfrankings (id, p_id, rank, year, prev_rank) FROM stdin;
    public          postgres    false    234   ��      ^           0    0    cttp_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cttp_id_seq', 4468, true);
          public          postgres    false    212            _           0    0    cttp_results_primary_key_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.cttp_results_primary_key_seq', 192, true);
          public          postgres    false    239            `           0    0    groupings_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.groupings_id_seq', 1426, true);
          public          postgres    false    216            a           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 3, true);
          public          postgres    false    237            b           0    0    rabbitcard_rankings_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.rabbitcard_rankings_id_seq', 2, false);
          public          postgres    false    218            c           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 7, true);
          public          postgres    false    219            d           0    0    scoreboard_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scoreboard_id_seq', 2316, true);
          public          postgres    false    221            e           0    0    scorecards_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.scorecards_id_seq', 26354, true);
          public          postgres    false    223            f           0    0    tournament_field_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tournament_field_id_seq', 2536, true);
          public          postgres    false    225            g           0    0    tournament_holes_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tournament_holes_id_seq', 5869, true);
          public          postgres    false    227            h           0    0    tournament_hosts_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tournament_hosts_id_seq', 1000, true);
          public          postgres    false    229            i           0    0    user_pick_cttps_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.user_pick_cttps_id_seq', 1773, true);
          public          postgres    false    205            j           0    0    user_rabbitcards_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.user_rabbitcards_id_seq', 854, true);
          public          postgres    false    207            k           0    0    user_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.user_roles_id_seq', 37, true);
          public          postgres    false    231            l           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 51, true);
          public          postgres    false    202            m           0    0    winners_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.winners_id_seq', 699, true);
          public          postgres    false    233            n           0    0    worldgolfrankings_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.worldgolfrankings_id_seq', 15989, true);
          public          postgres    false    235            ~           2606    16739    cttp cttp_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cttp
    ADD CONSTRAINT cttp_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cttp DROP CONSTRAINT cttp_pkey;
       public            postgres    false    211            �           2606    16886    cttp_results cttp_results_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.cttp_results
    ADD CONSTRAINT cttp_results_pkey PRIMARY KEY (primary_key);
 H   ALTER TABLE ONLY public.cttp_results DROP CONSTRAINT cttp_results_pkey;
       public            postgres    false    213            �           2606    16741    golfers golfers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.golfers
    ADD CONSTRAINT golfers_pkey PRIMARY KEY (p_id);
 >   ALTER TABLE ONLY public.golfers DROP CONSTRAINT golfers_pkey;
       public            postgres    false    214            �           2606    16743    groupings groupings_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.groupings
    ADD CONSTRAINT groupings_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.groupings DROP CONSTRAINT groupings_pkey;
       public            postgres    false    215            �           2606    16846    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    238            �           2606    16745 ,   rabbitcard_rankings rabbitcard_rankings_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.rabbitcard_rankings
    ADD CONSTRAINT rabbitcard_rankings_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.rabbitcard_rankings DROP CONSTRAINT rabbitcard_rankings_pkey;
       public            postgres    false    217            v           2606    16400    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    204            �           2606    16747    scoreboard scoreboard_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.scoreboard
    ADD CONSTRAINT scoreboard_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.scoreboard DROP CONSTRAINT scoreboard_pkey;
       public            postgres    false    220            �           2606    16749    scorecards scorecards_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.scorecards
    ADD CONSTRAINT scorecards_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.scorecards DROP CONSTRAINT scorecards_pkey;
       public            postgres    false    222            �           2606    16751 &   tournament_field tournament_field_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tournament_field
    ADD CONSTRAINT tournament_field_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tournament_field DROP CONSTRAINT tournament_field_pkey;
       public            postgres    false    224            �           2606    16753 &   tournament_holes tournament_holes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tournament_holes
    ADD CONSTRAINT tournament_holes_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tournament_holes DROP CONSTRAINT tournament_holes_pkey;
       public            postgres    false    226            �           2606    16755 &   tournament_hosts tournament_hosts_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tournament_hosts
    ADD CONSTRAINT tournament_hosts_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tournament_hosts DROP CONSTRAINT tournament_hosts_pkey;
       public            postgres    false    228            �           2606    16757 0   tournaments_completed tournaments_completed_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.tournaments_completed
    ADD CONSTRAINT tournaments_completed_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY public.tournaments_completed DROP CONSTRAINT tournaments_completed_pkey;
       public            postgres    false    230            x           2606    16408 $   user_pick_cttps user_pick_cttps_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.user_pick_cttps
    ADD CONSTRAINT user_pick_cttps_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.user_pick_cttps DROP CONSTRAINT user_pick_cttps_pkey;
       public            postgres    false    206            z           2606    16416 &   user_rabbitcards user_rabbitcards_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_rabbitcards
    ADD CONSTRAINT user_rabbitcards_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.user_rabbitcards DROP CONSTRAINT user_rabbitcards_pkey;
       public            postgres    false    208            |           2606    16421    user_roles user_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY ("roleId", "userId");
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    209    209            t           2606    16395    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203            �           2606    16759    winners winners_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.winners
    ADD CONSTRAINT winners_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.winners DROP CONSTRAINT winners_pkey;
       public            postgres    false    232            �           2606    16761 (   worldgolfrankings worldgolfrankings_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.worldgolfrankings
    ADD CONSTRAINT worldgolfrankings_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.worldgolfrankings DROP CONSTRAINT worldgolfrankings_pkey;
       public            postgres    false    234            �           2606    16762    cttp cttp_g_id_fkey    FK CONSTRAINT     s   ALTER TABLE ONLY public.cttp
    ADD CONSTRAINT cttp_g_id_fkey FOREIGN KEY (g_id) REFERENCES public.groupings(id);
 =   ALTER TABLE ONLY public.cttp DROP CONSTRAINT cttp_g_id_fkey;
       public          postgres    false    2948    215    211            �           2606    16767 #   cttp_results cttp_results_p_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cttp_results
    ADD CONSTRAINT cttp_results_p_id_fkey FOREIGN KEY (p_id) REFERENCES public.golfers(p_id);
 M   ALTER TABLE ONLY public.cttp_results DROP CONSTRAINT cttp_results_p_id_fkey;
       public          postgres    false    213    214    2946            �           2606    16772 #   cttp_results cttp_results_t_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cttp_results
    ADD CONSTRAINT cttp_results_t_id_fkey FOREIGN KEY (t_id) REFERENCES public.tournaments_completed(t_id);
 M   ALTER TABLE ONLY public.cttp_results DROP CONSTRAINT cttp_results_t_id_fkey;
       public          postgres    false    230    2962    213            �           2606    16777 4   rabbitcard_rankings rabbitcard_rankings_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rabbitcard_rankings
    ADD CONSTRAINT rabbitcard_rankings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 ^   ALTER TABLE ONLY public.rabbitcard_rankings DROP CONSTRAINT rabbitcard_rankings_user_id_fkey;
       public          postgres    false    217    203    2932            �           2606    16782 ,   user_pick_cttps user_pick_cttps_cttp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_pick_cttps
    ADD CONSTRAINT user_pick_cttps_cttp_id_fkey FOREIGN KEY (cttp_id) REFERENCES public.cttp(id);
 V   ALTER TABLE ONLY public.user_pick_cttps DROP CONSTRAINT user_pick_cttps_cttp_id_fkey;
       public          postgres    false    211    206    2942            �           2606    16787 ,   user_pick_cttps user_pick_cttps_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_pick_cttps
    ADD CONSTRAINT user_pick_cttps_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 V   ALTER TABLE ONLY public.user_pick_cttps DROP CONSTRAINT user_pick_cttps_user_id_fkey;
       public          postgres    false    206    2932    203            �           2606    16792 .   user_rabbitcards user_rabbitcards_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_rabbitcards
    ADD CONSTRAINT user_rabbitcards_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 X   ALTER TABLE ONLY public.user_rabbitcards DROP CONSTRAINT user_rabbitcards_user_id_fkey;
       public          postgres    false    203    2932    208            �           2606    16422 !   user_roles user_roles_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_roleId_fkey";
       public          postgres    false    209    204    2934            �           2606    16797 "   user_roles user_roles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_role_id_fkey FOREIGN KEY ("roleId") REFERENCES public.roles(id);
 L   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_role_id_fkey;
       public          postgres    false    209    204    2934            �           2606    16427 !   user_roles user_roles_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_userId_fkey";
       public          postgres    false    209    203    2932            �           2606    16802 "   user_roles user_roles_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_fkey FOREIGN KEY ("userId") REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_user_id_fkey;
       public          postgres    false    2932    209    203            *   �  x��W�n�}���O=�($Y�G�3I����-36a�4Hɮ�[���cgQ�$�$S���@��2����Zko�iL�B�a+M�զ�L��|��=>l�=۳�2)��Q��<&y��<��T7�6':�͒�g���V+���;a����E�1ɢ Nl4LrK��|�x�����.�H��Ȳ,(ʈ<	��+z�u�-G0r�v�hū���#�M�-�C��qA�)�7�7R(r�,���̺��B�Q�4(��78��N��AJ�lCfi�Ea7G�W�Yltc�lk� �@.K��!��OL�uSo�n_Dd�qrr�w�,�13L��j������`QB&�_���Z�r9v_��5�fݥ��i���sF?[��1���X���z{2�dQ��w�Ou���;T�0��c�I���U/�Gq`(�c'_�0ʃu[�ec��� Y#z%�XW�qY���\�Ք��.F�� -kĈް#`�/� #O`|X���ld�ޡ�$~����>}�/ `�V��} �词P�;�J� ���J�X�@�����_����E$d���':
Һh�̙�_�7��� 
�������i�Q�V麶+T���;�#�Ԫ$���Rrz�Y���jk�ߊ%�[�)��Okɬ�7B���ۓ.�k���w�{��_s��0�G�p��u��3V�gQA�RX���	��1[���jUq�߀͗�Z��I�O�4K��\��?d�?�[�Zs�`�d�pC�"_v\�WQ5�c��w�IKT�����+\L���ĩv�J����(t���c��� *R8����蟽8@����Q
ě8|P��]O���2��.��3K�j;�>1QD�7���Z)�pF���:G1ȅ�.�[�+��'��^����\�����K�����z��f�8]ڌLyǪ$D��ɯ��h)]�rgC�����U�0�Y��rj�X�G�������i�cVz�C����m��6|z��S�YG �D�P�A��ܙ�\����%���5�<.W�+4�ּWÏ�R:�<l���I�Aƈ���{�0����&�~��;�tۊ�0n��7p��7.�%S�wG.��ICI-��v'�
x !ym��O0�7#U�f�w*�&��6�G�|�Q�& �����vƊ٠H���ê>h#�< Ip�,���'$vr+��?���^�?���A�:
�n�>��(��G�gQnɥd@�����H%c����Pm���,ߊ!�L���~5�^QB�l�9�C2��]<�ר�r#��0H��7eq�J#�Z[C��r��~�[p�����l���ͼ�L��ƳP�~�&C{��܊%7��=���C5'������O5��0�����9��> ��RZ7��S+8�u�/EA>1[�[��zR�C�p'đ�'�P#�5�����K}�F�I�J++��7�e۸�����nk��߫J��`>�{�6�E�t
g�n:��qL&r�ԉ8XfF0Q�?zF:��_&�a]~<���#�r�:_+g����d.����K�1�8o�3ӵޱ���� 9Iz�̎t���p41~���t�F�ۺx�FZ���n�w��ɑ�Pf?������{��Sjҍ��_��!����q��r[~���h�?Q+ÏN�^?�:�x�8�Q��R%w`E��kͯ�G�	�7��$��M�|S<��7��M�|S<��7��M�|S<��7��M�|S��9������      +      x�e�]��:�.��̅%J�4��\#��G�֏?F�TG�br�M�d�Q�_�r�r��^�ҟ�����_�j�������o��_*���ռ��������j��͋	/­��_j)}��'���g�.᯶�{;�'�"��u�=�u�{^�����3@~�/�u��K<^�'�����^\��s�����o2��7��׸��{7����I�gk��q����~��?om�u�[�"�%��z�~d�#�`�0��K�4?@z>a�Ѯ���w-�݈-`�r�����w�|�&_�l��7/���p���;x�������ҿ}�o_���?��/�}�]���W;�=����gOz�}��1F�y���һ�iy�����|�MJ�����&_����.هk��t���"V>Ii�����-�'|��� ��������~�џ���>���#6`��0:�V���Ky���q��;���.}��1���^�q��3���U���kU�=b���V6|+w���������ou�_��{�(�#.<�"�/F��˜O�	EO�i�,�<\����?B��3�?m��sB��"v�~�:[��`̵�������#6`�X>z�$�_�l��7`��3z�M��y����lg�._�O�}j�"v����N�}n��p׏��=?@�_������E\\KSet�O�wp��[ĝ���t��n��Yj\�q��3��k��d�߿L}�Ō�W`��\K׿����;=:�G<�Mq�.F�����U��3�Gl�qatp)���轪���.���E�\Jg�}]�?]@�q��3��K�,�[�#=��{��"vF�ҭ���_J��^~����E������(h��dpO��=B���n��P�V� ���#8o��9 -⾣�&���g�`�_�������@/r���Wpw@A���g,陂�:غ~���E���C��ߴ5ǽ�~.�� xa 
R�r�f��t�ڝ�9�E���s 
zo*I�4vs��K��8[ę����e�e��I��?B������>&<���l�W�ž��^s�"�{c��!8���~�\R��A)�'�����;x��W�ſ��ɮ��ſ������7�%o/��ui� �;x��%�3E}3��5��f���E���e�A���m
����@A�X/͠Yy&3���d�y7��(H�I�6�^~���k*	<�x� ��5K����G(���s 
ZD����[Ћ�jR���>�����`Z�=���rO֏�!8��x� ��U2(5������w@A�蒁��\��@��epx7��(h��S��?Z�B������P�"v���Wu�uz����"����5�-h�dp��?B���n��P�"���f��m���7p������b��3�u�����	��3��?f�`�:u��Wpw@A������^���㯟��Q-R���Coi{�&�zk��)���\D���v�e�^��#�;���4��ȿ�o��`�����6�����J�5�h�v�Y�J�g꡽�ׯJ�w0�m_�nN�q~�Em&|λ�'p���~ۛdp7�o��_���p�3 �6w��A�:��~ռk[�"���ަ2�������7p��K���߂Cp�n�R���\s�֖�%��'p������Y1����gisV����s 
Z#�r{/b�gi&l>�-r�Y�i[�"�o�{λ����x��5�Ϛ������v$/���E�\����k�ڍ��#N�qftp-^�F_]��N��q������t}����h�r�x ��|i2��k��7��p���E\\J��8�����#n�qgtp)]Ost;7
���=�lgF��=�����M��p��[����Z:���7��� ���ߘ���te�^�́ep�؀-����Z���>o���=�lwF�ҹ|����}һ�=�lgF�ҭ���7/�q������t�}��y�����G���k��7��p���E\\J7�\'K#/��s��[ĝ���t#����|���H��'`�83:��n�o���߼�{��"vF�ҭ�������#��� c�u�k�J}<� F��'6`��0:���~���������n�qgtp-ݚ����/�Ɯ�N�qftp-]���&���#���3:���������}��"�-�w:?�7�m���N�?s�r���_�x��k-��k�` mZF�
p����t;N����E\����u}������=�lwF�>W�_��L�'`�83:�	_��\��~w��+���s 
Z>��wkt>�-�t]����h��
���n��P�"���;��
7q���s 
ZD���
9���'p����Is����+��;��E\��\��n������E�/@A�8$��5�27p/��1]Z�w{�-8o��9 )bZ��'�nQ�I��)8x7��(HS��m
�P 8x7p� ��&̭
��!8� ����(h��8;�g7�-dn�^8 -b������x� ��.�=9���'p���qωu]��G(���s 
Z�.̝��!8� ���� ��#d�l�������� E�{N\=�s���3���7p���1'�`��L�M����g@A���f�n丅��+��;��E�s�@���q��p��_���HsC�-dn�^8 -b�榑[p���s 
Z�='�K�ߍ#9i��לx7��(h�f�n����+��;��E���@r��p<kǒ�dp-����&�[����p 
RD�$������7p���ђ�`n��ڱX�l��<s 
RD[sb����%�P 8x7p� ��&�M%��!8� �ȵc1���E,���Xr����@A����wa��Xr����w@A����Xr���'p����Isc�-^��9 -��iznHxB�B����"׎����A�"���xr����@A�X�P�g��-8o��9 )bYs�vc�&���\<�x� ��%Ksc�-^��9 -�I�ޔ�wp�x [�ڮ��7��yy��k�����=b����k��7�>_h��r��[ĝ���t����2ڤ��#N�qftp-]��篋�ڠ��#���3:������)ks�r�x [�ښ���Z�!���)kc�r�؀-����R�{���@d����)y�G܀-����R��d���Zֆ��o��E�\JW������ڌ�,�/\�-bgtp-������NY��{����!3:���|��c�MH-g��".�������%����o܀-����Z�5�կC3m>��N�qftp-]�F_�L����W`��\K����+�MG��g�x ��/�-G���7�ҭ����o(�G�s]�lF������~;0m6�:�܀-����R:O2��Oh�hx�F�8[ę���t�溹;�]8d�d������3:��ξ��BA���~� ����p�F?\KWd��pȴ��򍾱[ą���tk�{�H�_kL�s]��"���s}ޑ3m*ܿ�7N�qftp-]�F_�M
og�+�E���[s�{�]�~��`X�	_s]�Z���v>���E\\J�.��s݄i7Ѯ�o܀-����R��溹lcނ4m'ڜ�"O��9 )_˒�Z<c�R��epx7p� ���5�� MۊfR���E��E3��������f�B���n��P�"V�`- 2m/Z�28��x� ���5�+�M[��R����g@A�������w��i���$y7p� ��]2X+(M[�ֿ�x�f�u��Zġ5�����mH67p/�����p.ۘ�D��}N��7p����'�`�[/�v��epx7��(H{�̅dE[����Wpw@A�����>˸��}�    ��p�\���� h�d��mAz�28���p 
ZĪ����!�J�7p���qωo�6�)ڊ�5'��<s 
Z�&��e��#�}^��9 -b�̽E[�ޥ�p�\��޵[�"�9q>6�5W�-�kN���p 
R�qIkik��d\_�7p���q$��\XZ�=Ij�y7��(HǞg��.i,ڢ�5'^��9 -�Is��-t>�-rmT�IG�"�`�+ڪ�"ln�^8 -��Esik�ve�91�n��P�"�d���X���<s 
Z�&��E;�Ѿ�����qωoS9Q�Xƚ��v,cωA�"�`�T]�cC2����p 
_�uI��"���x� �kN�G�ϴE:�)8x7��(�Y2XK��t,Sp�
n��(hM2X�k��|�[���8 -�u�F�27p/���js�@���7p����%��Ϸ���'p���q�.<_:�.q��@p�
n��(h�d�����!8� ����(h��`.]�9Cpp7��(HӚe�D��er��[ĝ����)��k�y�ne
��<s 
R��%���J�2��������1s��X�R��� ������Z�2G�2S���E\\�W��wm��{��"����9��j�\��'`�83:���}����Z�G\�-bgtp-]����J���`�/F�ҍo�u�Z=�{�lF���St9���~�JC2�G܀-����R�{�?����*���q��3��K��A9�T��iD&��+�E����o�=��`�_���[s]�NF={�j���X�V��ם˪�G�g��E�\˶��]�Wm:��N�qftp-\�F�ׁ�p�vF?�[����Z�5ύ���l�9�<�M�k���<��n|���\�<���E\\Jgk��w��v6'����w@A�gI2X7�\�K_�'p������|�7�?��]��^����P�"�d���vf_�p�\�3��Z�5����R�.�����x� ��U2Xm�k�a����n��P�"�90}O�ͮ���I0�n��P�"6�`�$t�4�}^��9 -�uk�k�as2�|�[��lؚ��E��Z���n��28���p 
RĲ������3�k�Q֜x7��(HK���i׶�$�`�n��P�"�='�Ŕ�
������$��i���(�ep� �ȵ)&A�����H��
����@A�X%�<o���!�~���s 
Z�='Χo�?庶"e͉�'p����Ik1�k;Rڗ�����P�"�9q-w{�mmIʚ��6%eωA�"�`���ڗ��ep��x� ��u͉�G���е=�sN���x� ��5is�k�R�d�y7��(H���깸޵M�sN����s 
ZD��Bk�V�ڗ���oڬT���E��߷GͅMە�nn�^8 -b�֢��K�_�7p���q͉�{�Unڱ�9'F��<s 
Z�&��M���)8x7p� ��kN��B���L_�=��v,u͉Q�"�`nmӗmO����� E�='�WP�����Sp�n��P�"z�֦R}��<�x� ����Dy*��x{
^��9 -�Ik���{
>�-r�X�$�#h�����6�뻧��n��P�"V�`n>jڱx�6o��9 -���i�[|M;_sb�	��3��El��Zp״c��epx7p� ��{N|o�͍H�*�)8� �ȵc�='A�84���Y_7>7p/����9�䁝�J�)8x7��(H[��&D}m�<�x� ��m͉&[���Sp�
n��(hM3�����Sp�n�k��L3؂q͉���&�+Ч��n��P�"V�`m	�נO����w@A��;~�-B�*�)8x7��(h�d����Ч�����P�"�9��b�g���}
>�-p})���qHk���}
n�^8 )b�s�{57��ѧ����;� E�I2Xt���Sp�n��P�"����Ak��Q[�ex�`Q��1`h!M�8y�ã0~�6.{��������G����E�*몍j��st�ѩ����*��)�*��ѭ�����77�'��ɟ������eV>�(?�}z�p'O�kz}o_Ov^ ����?��y�����)r�޸ޏ��t0o��w���)��S�Cx:�ׯ3������g��|����s��{��2��)p��M��;t޼���͖V��w��{��|D\xx�\�6����������7�q��)r���;���b��y^�}�=z�	|D�yx�\K���59��>x�~x;O�wM~����2�i��{��y����9�?�߻���y���w������������w��
���'�q��)r��t�����w'��w���|�^���r����^����9�l\���t��0��'�Q��s���SH�og���Ww����p���		��}��x�~}*x^�}�3B��Y� ���[�����3G�k���y5��O� d
	�~��7ºB=��>|�p�� ��i~����W��j�ßT��A�NCF�w�G��g�-
	���������ܐK�ɟ�
��9��r<��g�'� 8�Aʜ�a�D5��h�=���h		���}���<\�?�d�u�y����O�˿���p]���h^���Gĝ���������z�^׮�'�q��)r-];���v��F?�������ȵt�o>������Ǚ~�>����ȵt㌾.��g�5��>".<<E.�{��.�g�1��q�}Q�yw�"���tF��'�p�x�~xg�"��������wȅ�īc8�������ȵtvF�g�ց���p�xx�\K7�:���G���a8��Gą��ȵt���.z�^����~xw�"��͹�}׍C�j��O�#���S�Z�vF_��C�s�F?�������ȵts��rA�הy�u��!�.���k�\K7���J�.�����p�"��ٜ��߾oo�^�ښ�o�#���S�R:Kg���إW����O�#���S�R:�s�l��.��5�E�B�� 	���$����K/��4�-#r��6���%\�w߃����h�xA0�0@��E���s�Ү��_Khxg�A�8羔��K�K�yyh��
�#�e8�;���;a�gH��о�0�٥��5��� wH��0'ѹ���mb��"�f�(#rmUlͣQ�"�/��1ڥ����a�H��eN�s-��wۥ�JY�i�� A�"��e���ڳ�$!A��)bY��ײڥ}Kٓj*��� h��`��vi�RL280"�dp-��b�Ngg��/e����Gą��ȵ��������e>��F��Gĝ��ȵx�7�{j��}�����'�q��)r-]�F�Z��}�����W��������������e>��F>�G�ھ��S�Z�qF��R���e>��Fn�#���S�R����zg�.m_��k�|D�yx�\J�>�_��Kۗ���yg�"�ҽ����g����}�띅�W��������賷�Kۗj���8i�R��p-ݜ����7���i���Gą��ȵt��>��؁wӼyw�"��͹�}�U�����.�>"�<<E��kg��[$�^j�F?�������ȵts��_g��s�k�|����o�k�\K7���^�%�Z��F?��Gą��ȥt>���TI�_s]�|D�yx�\J�錾���͆�o����8������\'��-i��k��B�0��-�}��>i��&a@�k��&AK����r^���7�)�^ A�"�/�y;ϒv^%�#4�3@��E�s�z��ۍ%�4|M~QHxf�A�ؾV7����&�B�� 	�q΁i>)꽵����5	Fa@�k��k��qH�+O�j���`xa�A���\��`�v���0
� �� H[�2X�F��-IGHxf�A��֜(iҶ�    �91� wH���e�:Ҥ�G3��B�y�6�$�#h�ء�M�}���5r�"�ֿ�Τ��\�]#o�#���S�Z<?��� i�1�e����8����������� i�1�d��+���yx�\K����v@��c�Ǯ�p��زv����n����)��}̵�5r�"�ҽ�Cϛ����k�|D�yx�\J�.�^]�����k�k�	|D�yx�\J������-k����C���%>"v�"���_Y}ߺ<��}�x���|��������ȵt匾.��v�|�n�#���S�Z�9�}��Z��.�>"�<<E���o�ِg�>���'�q��)r-ݜ��w9����k��������ȵt������G�����������s�ۘ͛Y�����|D\xx�\J7�3����p����>"�<<E.�s�Ӟ0k�1�d�a�gH�|#��0k�1�dp�
a�;$Z�9�o��e�6ƚ��0 �ȵ�kڋ��|��"Y��Q$�#�^ A�"ιO{¬��X�_�� A�"�d0�����p�`	� �� h��������m�5	F�B�� 	���{DY���%�##r�6F���E�s�vdYۍ�&�(�^ A���,*?��8K�1���� �� ֜(=a��crt�Y��)�� 	����VO����]g� wH�"��j�� �}x���"n��[��y�'p���=r^Or��S��Vd�-�
�7/n�����{�Z9�*�5��p��w�6O����{�Z��&7g�ϒ.�-�
�!���7�k��I�y��S�4�[��^����3�ȵr�Kn��Ȃ[�x'���7�K�ޅRk����Q[�D��x=����y�G.�{�.���s��ވ,�E\�Or�;8p���V.������\.����'p���=r���ɽg��9��ވ,�E\����7wp���=r�\9�=�"x��e �����;<�g�k��W�Z�S�Z�[�xWnsn<�#���3D�����4u ���Ny�<�#�ʵ��|����!nW�����x�G���_r�>o>x ������<�g�k��b��L��
p��'�����ȥr���{�l�Ȃ[����m���3�ȥr9}ɥ�ͽ�q��m�����{�Z�y�x�ZF~f�>�[��Ny�<�#���In>���+���+�J�pn<�#�ʕ�\�����).�C��%wx�<�#���3�{G2�s_����pN��7�k��$��t����=D�/��8p���V�}�ݭ듻��}�m\�wr�;8p���Vn�!��Y�"�3�b�!�:C���3�ȵr�$7�lE{�<NrW�����x�G.���K�w��pX{�$��8p���T��b�D~_�dE�����+x2��1�C���/��Cz�N�����JX��� �gpZC�[�ό�턙d�y?n�!�7pZ�u���7nE{
[w��kSa��S�� AkX������T�_��W��yc ��5�/�u��hwa�e������� Ak8�s��������W�'� 8�� Akؿ�����T��_��k�a]2<B�@��!h���>)և�^�O���8�a������->�[��r�uB�B�@��!HK�2��[�]ێ����;�#8�� Ak������ߺ�%K��d���� Ak��)��~5���7�
�d�@��!h˗�|̟�BJ�2\�jR�dx��<3�C�V�a�9=��7�
~j��@��!h�9e>������"׆��sJ�� Akؾ�|>5֦��/��+�����1�C��/�gB� o�kkR�dx��<3�C��s�|M��P�ڞ�uN	��?�!�7pR�zI��H/�-rmR�n!A ����5}ޗm<��7�
�3<�C o�������?��)u�S�k�R�9%	yf ��5�/õD�j�R����
�3<�C o���E2����[�}J-���ڧԢn!A �������`z_�iU����)�W�'� 8�� Ak�_�������"�>��dx��<3�C�6��}m�U�Sj�7��'�-8�� Ak��)sC[z~��ڧ�uNQ�}J�� $���pH����^�x?n�!�7pRC�$��� �-r�S���� �gpRC���uY�ղV�O�yN����K*8�� Ak����a<Wڧx�2�\�ϒ��� AkhR�r���^�O���8��<�������)>�)�]�_�($��ְ~�����k������
�3<�C o���.��,1u�S�%�ŵOq��� �gpZõ��kr��l�ڧ�Z�x�!�7pZ��eh��cz� o�k��]2<B�@��!h��0?��\�Z��+�W�%8�� Aj��9e���}q���)m�S�>��sJ�� Ajؒdx��|�SZ�7��'�-8�� Ak����	͵Oi��ps�SZ��� �gpZ�uN�w��5H�}J[��+��ayc ��5,_�����ڧ��e���)�H�GH�38�a���|�SZ���_�Kp���p�S�WH�k���9E��)m�S�� �gpZ��ex�����Oi����
�3<�C o���]2lW}?� o�k�Һf���<3�C��s�ܘX��[\����)�W�'� 8�� Ajد/��-gO��O�ח��ڧ�K2<B�@��!H{��g��k�ғ�p�
��p	��1�C��g ���)}>*W�v)}=1��y�G�峓ܾ����I��
�75l�����{�Z��%�.k�9��Kn⦽I/���	8�p�\+W��䊶i_��q^K�wp���=r������lӖ��-`�H^�w\l���3�ȵrM*�^�6�F^�"���r�;8p���V����%l�F��-`�C^���o���3�ȵr�Kn^�6�A^�"��;����p�\*��Z+�u�ڴ�xqX����O����{�R�g����5k��c��+\�������p�\+�Or�r�i�1�Inc�9F��;<�g�k�L�{�T���$��+�Inqn<�#���3�\�6m5�<C(�Nc�3D�	8�p�\+WOr���i�1�I��
��;����ȵr�%7/M�6ÿ���b�$�y�<�#���3�\�6�-�<C\�������p�\+�Or내i[1�Inc�*F��;<�g�k�T�m�Q�!�[���-�����{�_���"���a��i�M,��nb�a�x�	�Q0��p��i�M,�"��+�#8����j���U3�����w��(�� �P�yƘ�p��f�(�-�J��o�)��� �P�r2\�f��My�.������jXO�k�L�
y����"[p
��'�G!�p�@��窙~�x�����#$
��'�G!԰}�U3=�y%�n�)��� �P�~2\�fz�-�|���KH��O �B��<����s�LυB�P)���p�O���Lח�Z;��Т`���1
�'���j�$i�4�
��R8in�iPh?!F��c�����h�
-
�pvl#Ѡ�B8�PM��\Kiz)�J�ۺ��A���p��EҜ�izZ�E᤹�D�B�	�0B5�g/���Z(4��l@��Ӡ�~B8�PM�4�ʚ^��(�4��hP�?!F�f�4���B�P)�4��4(��#Ts���J��Ʀ��Т�.
g��6
�'���_�k�Mo�B�P)�m�p�O���̗Ts��顿ɗTs	��ɗVs����ah5�:�WV���{hr�:�R8����4(��#T3i��=t:9in!�:9K��H4(�#T�$͹7��v'����J᤹�A���p���,��ß��{�y�:�0Bӓ�Y(����a�j�/͵_x��'�/�#T
;�c8
�'���tIs����.i.!�?�5�m$�O����Bskû}x�(��P*�o{�2����a�j�/͵�x�>(�/�-�F(wI�� ?  ���a�jIsn$��C��B�p�܆Ӡ�~B8����������x�^��YH���>#Ѡ�B8���/͵�x�^�җ�*���1����a�j�/͵�x�^���B/dY�<F�A!��p���,�ޮ���G�l���P)���p�O��Y�4��z!+_�[��I�����a�jV���f<B/dU���J�TsN�B�	�0B5�Y轿Ԗ0(�(�^��Y(����a�j�/͵�x�^�ڗ�*���1����a�jv���u<B/d]����Y�jn#Ѡ�B8�P�y�K��cJG�l���P)�m�p�O���,ח�z`��P��4�z�rI��H4(�C�Y�Ts>�t�^�$��*�S�m8
�'��՜g��Kb>�t�^�̳PB/T�Y(����a�jڗ�z���P�/�#T
g3�6����a�jIs>�t�^�I��z�R4�m$�O���V���xqZ�����,���tp�A���p���i>;-W腊k�S�P��2
�'���l_���
�Pi_�G��&�m8
�'��՜g��C�} j�B/T�Y(�*�,�D�B�	�0B5Ǘ�|j�B/TƗ�*���1����ah5�%�|�Z���K�����K���D�B�	�0��u���{a��Q�z���BA�ζ�m8
�'����_��A��
�P�_�[�P͒�1
�'���4I�}dj�B/TM��B�p�܆Ӡ�~B8�P�u�Oy�Z���uR!�Bu����hP�?!F�f�4�Ǩ�+�B�J�[�N��p�O�����@�r�^������U�4��hP�?!F��:���G��+�Bu���P)�-�p�O��ٿ4�CV�z�ڿ4�z��%�c$�O��9�4��V�z�:�4�P)�4��4(��C��׻r�����,Wh�^������-$
��'�GA��d8�c�+tA�N��W��b	N���(�f��ا\��,5�<�?���KH��O �B���f�HC���y%߻.����O �B�a9��6�
m�˛����c�B� �xB��禤��E^�w�[p
��'�G!����o/�+)4;/o��^g�٢�(�� �P��e�.�))�9/o�W���x�	�Q5�'ù���⼼:��e�B� �xBǛ��.��Bw��y%O� �~x����2��C)46��2\<�5���(�� �aK_��=��BO�җ��|g�� �~xB�9e����H��i�<t3m�S��(�� �PC;��%�N�����J�2<�S o?<
���d�n��Ĵr2�<�0�|!Q �?<
����^D�?O���6�)�W�)bN���(���p�2QRh]��7�K�/�#$
��'�G!԰}�˄K
]Kk_��W���x�	�Q5�����w�SI�ai�<�+m�S��(�� �P��e���,)�*m|n^�w�[p
��'�GAkد������Ч��d�y�S��ex�D<��(h�<���^�9'�)}�S��{k��x�	�Q5�'�u:�>����O�����x�	�Q5���\K_R�S����+�#8����j8�)��t�3J
}J���9�)}�S��(�� �P�z2���K}J�'��+���N���(���pn9.9�)�O���>��������j8�)���.��C���I%
���q�A���p���Ks�ϡ[��Ks�]�]�<F�A!��p��C�9o7�в�!��B�p���A���pZͱn���:��%��e�{a*��e�a�H4(�C�9җ��_rh^F��<B���<�Ӡ�~B8�Pͬ�|v�:����S-�ȡ��H4(�#Ts�q�[�]�%�6f�SN*���N�B�	�0B5˗�\ Zr�eF���BhfF�4��hP�?!F�f�Ҝ�
Kͨ_�G���:�p�O��9O@s» ���Ռy
Bhk�:E#Ѡ�B8�P�&i��J��h��*���6����a�j�/��8��C3���B�3��y�D�B�	�0B5�Y���n�+949c���P)���p�O�!�|�jiΟ�v:ShQ�Vg
'�m$�O�aj�/͹�dmw�� T
;�c8
�'���\g����������qQ8�!��hP�?!F��}i�-2%�B�A�v��p�O��Y$���Y�0(� �uQ8in#Ѡ�B8�P�u�7d�-2�P(4�����A���p��.i�[dnaPhQH���6
�'���l_���P(4��N�N�B�	�0B5�Y�}8��؊[Z�Eao�8F�A!��p���Ks�S��B�A���m8
�'���j�K�|�:� Т���N��H4(�C���Yh��zVa��BSh*��gcN�B�	�0B5��|�-
-
墰�<F�A!��p��&�|���B�� T
q�m8
�'���\g������[Z�Eao�8F�A!��p���Ks- �Z(4��N�N�B�	�0B5]Ҝ뭬
-
~Q8in#Ѡ�B8�P�yz�!�gc�B�� T
{3�1����a�j�/͹���vQ8[K��hP�?!F���Ҝ۷n�Ph*���1����ah5�<�m��[ZB/��Y(����ah5s�4�M�P(4�B�ZrN�B�	�0B5��|0�-
-
��Y�<F�A!��p��k���`�[(�J�l�؆Ӡ�~B8�P�"i���A���^(Ms����a�j�/͹%�
��R�i�iPh?!F��<�m��oaPhQ�P^g�h$�O��پ4׾�z�ܾ4�P)�4��4(��#T�K5�N�z�ܥ�K�P�Z�m$�O����B��Kn�Ph*��bN�B�	�0��v}i��� Тz!�$�c$�O��մ��9Zs�B�P)��:�p�O����B�&�sy_B/d�,�B�l����hP�?!F��I��^�[(�J᤹�A���p���Ks>/����Y�4��hP�?!F��:�wo�GY�B�� T
gk�6����a�j���|��-
-
�2�4��hP�?!F�f�4�.�z!k��*���6������������?�\�      -   �  x�}�[r�0C���x��c/w�븤�T
X��S��!�㪢9�\�[NH3�\��� �腞j�4�~���%m�S*I�?�A���#���S�4��hBs��>u~i���3�~%� �S�W��G�� �*�X^ev��4��[�i�Q�� ���7
�G���j��T�z]�L�_bGA�
�u�5����K~�Qj���*bA��]��5�$sk-�M�+�T�z��ŰާA�~@;D�W~�ңff��A}S�{Y۔��e�Qs��;�W�"j���_��V+�íl��U�dV�ަQR�z��Wi���"���Lol�$/�j�:��>F�I��q3]�i&�GJ��]A��Ԩi>�b�1����zۈ�k�j���$^%�Q���V����Y_�A2+J�A1�ђ"
ꥵ�k��q'o&�A�ƨ+$9?���0(�2��NmJ���vZ?�� }�]G��t�Mm=�8@�=Xv����V-����+�k��Fe�N�]��~ߦA�^o^����)�k���MW��A-�nu�j�AZSlO�$/�Z'Q�y�^�ΫU�m�uެ��d�s�����:ǧ�*�N�Z�	e�w��^������@v�Oyw�=7�o7���p7)~�Q��.��Q�Q��>)���x"�u�X'lA�_lx�����=ư�^
W6�;��Y��U�k��{�''�;�Z֓ԭ��f�<,�J�f�<-r7b��\��7��ݺ�pr�X89A.D�������fCd��M���"�#!"����������<�11�gN4,} E��GR�ʁ��^9X�,',���E�>�"�N�x���#N����FF޼?̈��z@#
�A�(�|76����܈�){�#
��A�(\�7:�pa6;�2�oxDel?����#�U��O 	��'�D�u����!Q�c�HT���	���1���͑�>HBx�$	ᅼQ�;��%!���p�4	᝼q�;y�$�cw%�c�C�0x}BJ�>1%_�J�>R%�#wc%���J(��,����D����h�e�����K4N܃.��g�%�l�D㯜0��3� L4^�?���[z3&:G�2�9p�D��1�w��Lt�4�9q�D��l�D��l�Dg�?`�Q�&�m�M8�>�&n��N�ĉ���/�91x����Q�P'g��N��͝�<Jxb�,}��kE��k�{U�u_�����H]�      D      x��]Y�$;���Z�;�������� 	yDFx���Yy��	�1��R���W���
�?�&���3�jM�/�<TB*�a������Ǥ�唔UN�_�G�SÖPC	Q�W����ۼI�S刀6��(���%'�D��ɯbn����c�%u���J�<�X�zI�V<����_S�Z�J�?�~%�p��bF�)ɪ��`JE���5�٧.��+L�����yl�[S�X<t�b�Y����Ui�U�s&M���,��ZD�!�3�1���12����#\���&K�:=L5�?��Pt<ѯ��M��t�x��p�K���s���b��YY��ȿF��년�������tu�b�,
�m�-��T$�LJ�������U��1{*�u*��r��_΍����T����G��[�1�y�>�"�_�i�i�l���Y���ҷ��l��W�92���Q�L�I_Ĩ�X� �7��l�I�h=�
�/���5hT���I��k�$9%�s�Ǔ�ԛ=H�������Չ��W�%�?��z!�	x~,��P����>g֖�/ߨ���:O��q�G]��mq٤H3lf�bÎv��`*I1i��U�=z��/��6K�XG`3�=�?/G8��n6����I�ݍ��nD<k�԰u�c��{ʘ;a	�PlK�@�����V����9#��2��M���4�w��W��[�4c>�����?�@�f �2�~ַ��I
NFˇ�����9L�k�1O�H���	��ݥO!]*؏̻*TxS��F���&��fWӫ7�����-R��A�������l�J�Ϧb^�=��\;Na�'}2��v��Ϝ�;������J�SU ����`����f>j����=&$GXx�HR������TK|g~���V=�X��O����mi�Nh���=z�M�x���N�C�MZ����o��
OG~��x:|vj`a#��<�_�4��"�槊?�����'����m��"��1ܼ
�W��$S�X�4�ǒ��4'��<�A���|c�4Tqfe؎�c�_&�X&o9sdgX����2P��)����d��&#��G*�`q\�.x�m�z�폤R,'�f���d����#�F{�g���D^Q�����6�9��\��1<>1%L$�O{�6�γ3&Y��%׾MFփ�Ե"��a �X��q8�g�6�E�k���(I�$H�%%L+�f��k�^䝡�YJ1����x"��b��>�78�N��N{�(���t��g<�
5�F�ک�=�Q*���l������:q�N��ONԏ=s��eb���Q��^ș�҇C���z%��S�'֬�^�U+�5?��V,�D;�U�q^��9�+��@@)���j���L(a ���-Vf��'V8�J�r��3y�>e(d@v�7�W��ѐߧ9���#�"kR_�j�s��(����Դ,�����N;:�y����5����I�<�d{�9�H�H����'Жҳ� F�3*W@��B�S�B�O�ˇ�ul�$� �d�fr�d�z����j���H��6�� �Y=b�Wx%��/��vJ�Yc�Abj3Cwp��U��;�u�F�~���urZ��H���>ŭoz�	��'�3�B��V4��r��@��Cf�*v�l={i1��4���^�!�$�ȢBN�a��F�!L���4牍��#CDaب,�/&)a���ʿSeb�8������߮/�䶵$f�����l�_�0MV;	8#=��� �	�@ݲ����,�W�cn^!b��B㙉��~0��&�����R(�p6t���ň�ΊAN0�,!o`5���/��4O=��H8���r
ȟk��ئ��tB����|컓��3AxFb9�@M�め��������̹�(Bh10�����2MH�$g"�	̀���V�sS~2�v HL��3���C)?\���\=?�&���UC�X��������X1�D���Jq�������6xuF�0-I���=D�"�J�c$S&�<�nd~:�Om.A�Ӭ��=4�鮮�H�����O�S�i��*K�b(X8Ni4��L� �239AxF��h���8<�[訿��q��|� ��C C���R@�
�L)To�����>�bd���t�0�������n2/Ho,ɨ[=��\���zZ�@�m���a�N�4��P��
���H����j���z�����&��� ��(�9V��A%�Zb)���R�	A ��v��L���	��B�EV�b�����Q��Y�N��_�Gq��*/�m	�(o��ֲ�x)̜X
�C����D��U��/�0�E���V�	WB0���\z��Z���ͬ0�O@+[����E��M��x4�Iȸ;�Z���� �.�5&S�8e�I�T����{�VO`Y[`MPq����/��f�� ��0Ke���U���q�9��O@�%/���|wF`/�0�vH6����BS�2XRI{}��a%�đ��5��(�������'i�[t����s�R�}.0;�����D����$����9L�F1<E��E���zp}����0<H�p�i�'ܝ����m�vuy�4p��6����8�##:�%{�Z8?��l�6�%V�+��		�N�w�9>T�Z܌������*�c`��5$n@������/�#5�"�?�_��s�IΆ��p���LK�$�Ѫ�*f8q@���uG"௽��ʌ���r��;H�8uk����+w�C�t
F��	6}o�`W����́�b�ͥ
��j���7$��B�#EO�s��2��ߦw��Ƣ�"���T"��.!��T5~������cī��D	���#�&dÒ�M������pp.}cDA,	]+7�P��pk� �w�B>���	�p_a�7��@~)���*NN���'r4�q��,������B-L!P>���66�� dJ�J�5Q|�+�W9����)��bƙ�}����<�U{�9��@	c��M�N�*~K�S:��x����2�4�.5$B]J���tX���P���0�d�f3۠�味{:�za�e4ë�?������S�CIEL+�R!�C���S�Ѐ�}B���싾<|���h�ܬ�Q�!�]�Ғ-��16*�:j0|���x��8�[����O��H�W�4��wf�ǀ�7��������(�\X:Z[q��`�)��a��f�F�J�G İ1���$I�EìC�����3��!F�p�r����RO��풄�B���IUi���.�Z�=�m�e�ߤ�F�r��'A������:7� �I[�̴�%GI �<��mFZy�PA��:�L��^�_�g������q�0�a �B�G�� rftTHUUxF��c�,Q�Q��jv�y�WR(ݪ(�ʓQDc����	�<7���(7XEv�
ZH��)�圡�EFҝ���:!]���UV�e	��`+@��W� mn�ۛ�j�zR��f!�,!x�����+	ۤ�ǹk�p�w<}�{����>o��I���g	F�Ry��i��f�u�u)\v1;
�٥������Y�_���$��x�6��X�6�h��6`6�󣑌j�&�lHC9J5�S0�G��˹�)�ɐs"��(̾�����L�d����$�EL[�.h�ؠtH�)�A��*7�Va%�]6�RL���)[���Ya�$����1��|��3��&�l��|�A@��3���db�#�3����K��kK�a:�UW�w����ڞ�r�t[�\�Q� O-�RiR	�q���!8K���<>�u�4Լ	�%Q%������?	J�*T-|T"َ��b�tt�~EXX(Hйd� 	]lF�`�IRξ�E�x��Qd:����͠5��.��r�Qb���_`j��Jj~��w�@1��:3�RV���$X�ʈN�̉�i:D~&հSY0o�a1οؗ�R]mK��r�q�!�E�TӍZIƝ����'�)p-�X����Wf�5��wШQ9([ϵҠ�H�Hja9�� �q    aE$�#�1D(B���S�zO�/_- ͋����S���JRi��!��X��e�ՙ)(pKݧGn�A �J�Ӯ_�����E��3�3И���K�/�nn.�i�"�[�Tr�`Fv�|�0Ӱ�BxD-��őڂ"��+�elg,s��bD@Z�A}4|k�� #�v�IRb�� 6l�Y��(��a��,e�����Ͱϗ
$Xi)I���_���&z���q��K)��v��A�j��4f0�����{���mq8dJ��8���c	� �U0\W��$oX�$���~�܋$�pN�I��$��Lard�YN�G]� �saE�ƙ�lY".]��Hr��I��1l�/Qge &Rn9�GX�ȋ\2�?2H��?g��U�l��Hg����I���T�B��\8�~���dw)F�oۿL���U.�Z�h��Ƈ�)�M�}�ވY.Y��|�v	�T_5�>�(�VD�4ޕ�|���,;1]�~z���S��k��a���ÿ}�� �8�������ĥ�B�̌tnR�ڪ����Y�x�����V�ͭn�Dԩ8�К�nQP�NA�$�8��E�VBp�rV�/��� E�;�%�q���Jj�9;�W����J����F��8ӔG���׺Hvf}"�@�8w8��7���zdH^
_�к��GȰ��ei#;!+W1Ҡ��S_�($h��f�]�c�<�*�T�GvI �ԉp�H)F3�?~�Q%��ъ���'��
����}*��$1T,��2�:Q�+�r]X)�֩�/D(-o	�q������*��e��}��ѮU�(Kb�YR�Q����*�@��ea��-q{�`�KOyyS�{<EcOq����M�-J�:J=2P���	� W�P%�1M�Eq��Z�ƚ��{$i3XƪG�kY��t�]��� a��<-ӌ$(��M{i�6�/iW�Z�8.���)q��Fk�̬H�nJ@~,kq,\��8�4���Y�/��H(��a!��~��� /��*V�O��k�<t��K��9q.��r8�G�5D����A>��,	��ڛo�����2a�(uh�n�8Pa9$�S2���D�L��Ҽ�+V��F�@0��̉��I'��J^��p��?��Ww��6g-b�O�n�l�|�&:MP<ۊ���?�5/A�1h�حvΥ~qs��^�4�~(12�ܭK+�����ꁼDH=K����\E`���f>9�-nB��;�3���G�Uo	�E�~2�Ia�T&�����? �r4��pF<l�#b���I���Qe��Ӽ�\��<$\_��R'����0�K��vÊ_��WkUW{��X�~|�Y�0�z�%�E(!�
�
�?K�|��/� �p�/A��R�{@w+�o9���ho�wu�Vc�%���X��v�r0Eb�0S2�,���]b��[�{���1�I�6Kj3�ߍ-&�ܶ�p�+������u$��vZ�a�������ۨ��Yb��t�˚]�'
m�
8�^$J�6�Al\�9�Y[��r����k�tUi��563M��V}mD��]���r/���~���,l�kϛ�{l.�$�gk�� �YUK̜��1�����RK�b���t��l�ikn��W�e�H�mW�l/�[���q���#��&����39��V�/�J�l�����yo8��8V�]��-O3oA��n���Qӱ:p�!sV�Yz0��J�[���|~�H�^-�lF�A���z�[���Ç=��/#vg 0'�<��PX��M(�ɡɰ��?��c1�,�zv'�hM���~8�-���]I�U��`�"	�4ٞ�I���Q���q]��]5���~_������H;�����k��|R�{��dE�F�.Y�N�����~V�p�h 9�3?���0I����x�-P�����E?ÈY�}+�K8�B3j�Iɷ��~��"�عg�!���� X��`��=��!�N(ʫ����$%K�I	69��n��Gm����|����G�v�������ݗx�v����4�u`���9y�FԀJ3���6�ղ!�3.�L�,�l����/�6�Y�K�D�'�?�\Z�Yz�'=|WY0M<�"(�{�>����c�;���&�#�3��S�I�:8�uM��t���Ea��P�����h����U�< V�a����a0��h�:�J�`5�)�B�)�l\'���C���l��/�0d���*��8Ω�b�����UR]�]�d֡����7hE'�8�����f�|hWt[*1�����B�bN��Y�A�֊�HNr�{׉f�e�(j�.v�>��2V�Z��`����5q5VVˤg�s'�Y�y�*�%��]�Hr�����a�r�z�-��;����(�G���y�'�l-�{4u�N6,F"hi����6�H*X����*d�'�Qo��^�JM崁�<����K�)Ꮋ�5�m��~5S��r�,i�δĵ�[����	c��zEF0�rbl.#
�=��sʝp��BY�[���j���[js��a9��uG�"��'w��I��3�(��o�p>�^c8Ú
t��Qe�^N9�Þ������X�$���˽W��u��!�
���+m�?;;#)�	Z��~l��ܒ��*G��k�l
�{�i���Jp�O2�~�&9C5���w�R��2�����ǒ]aC�9T�TP$�$�^~>vIlv�S�����?�C2����_ТKr|�G�̛��[�&�pu�~k3��"�	A�֥��#v�qFZ���<7�H
��U��ֹ�G����V��?�p�V�X����o��#T_L\��F�i��`�(ɝjoz�<Y�k����+ã��to�/�G����,���zmA���h�r�ɔ��'���3��u*Ǫ��E���Ʋ�9�G�Z6?\{� ^]��G�@>�j|)�%9�h~�Ԏ{�۟�7��S���×5�G��쟊��ظ��ś�p�ݭ�b�]�M~㲫���;Kf��u���,(��	.�?�DO�i�L��/���w�*h7�h]��5�)��e��tm	׹��ł��k�2�b�0\_���o˶>��^�#�4��c	ٴ�]b�^�l��H�GS�+�2�4I.����\��r+,#�4�V���$�ؔxh���=0��iK\X��M�k�o�Ҡ�Q�"�(�0��f�O�'t'�K��l��'ٲ:��9/��P��-/H���0=$|���e	��\����F��Ud3��<���z]?���}ݪ|8C�M?�U?���_b�"8���QAUz�>��2@$0V
��t�O��]_�H�G��l��kڠ�e�� /Ļ��"�)�1��qqY��ӂ�vy��i� �vc;�������g7�	�2YO`��bvc=��glV~8ӻ����f��X��t���JU`am4b��,���r�U�+��c����/���&�2Fr�@C�D}<�+GEZ�'m1A::;Ki�_�~�>���۩N�5[S�������H_�2�e��+�+h�]�UPB�n�]��8�!I��Ă�ϊ�z�U�.�e����KR����?�95�|*�	���Tf5�u=����æܰ�$��}��VD��ժ��[���5)�;�qCe�Rշ
�wO�;G��5~W�a��#��d��vc������������������  E� iRY������6���Hxĭr���� ����mIQ��L�_FE7t�FH��[��G+Kr�b�B��͊�䅘�^���n��,��}��[;ȩ���M�\&YO���E��'��v��!���_-� ������Ϸ���Ȕ$�&����,�R�����2���^���m�C�%a���������+�q�+�����y�ep���n��?q=�H���|�i~H��LA��us\dP�u}�Ү�
O�閻�Xa��Wf5��8�7q��=r���'���#����IǺ�7XJ�Z9�����^4!�s"1�]q�nW*�RR�x{�ڧ�zC�J���<��7HYӾ�6>7s/�� 9}3�}��t��k+ �$�T4������
I� R  �x��E?��ڷ��Q-5�Kw��m�k�5�p�]/cU0?�cg��u�t������<dZo'�b�1Z�֝�v��񻽯ď�r�F��p�p�KNfȾkW�:�oђjSQ[HG�D�r���4����{Q��XO+`�|e���C�K�%�ɧ߁�����������nr�))��Q��nANK��o�G������U��:�Z�q��\s�n�S����Om�׊��.�8v<�x�,��6�T�j���x��~;YJ<����ҕ��;��ʔ�W{������MC�B��:km+�v������'/�3��n��G�-d��f:���\o�`D��6��<�`C�㦭_݇���Ӣ5��{�P�w�Uв�oK�,�}�4������Х�T�>^�����|i�ЛU����q��w���m��%P���3����Y�܎���׸U?lw���������{9�ְ���F[U6v�����֥7
�6�u�����]����E�Qr�;��~��/7Ji߇к@1/2�4�[
�L��0�K�Y�����J������TN6�Y��B���̯��O�s���V�t�1_�`��.;��O�Q]��0�;���ח�A��R^#��,Ny	?��,�7�Z9~rrV/��Īq���:b��G�s�;��]`'��{�C��/u���Yc�ɾ\���c0�Y��K�Is/{�F�7S�C��S���9���jw�rk9���uu���M�\x����P7+){T^#alcQ���k�T�C��&[�z{�1��K���i����;���0�_�H�mo@�-��Ig,�;~P�Ww�vRk�T��C<��r�U�^x�Y�.�v��äҋ���R��( ��+6W}�����!'i_�H�s?s�V�G1�a��U�]j���f�_����q��?_�|�5	��v��kt��g��vx����٬�P�􍏾}���gԹ/$����7��-f+g�؟��+���+�NK�'�����(ϑO��u<7�7��Q6��@ڭS��E"�Gxz���Q��	��×w6���G���8k��/�}��;ɫ2��ܾ7��Wbo	�K$���
�������I�?��b�v��qC��Mxo'}����	���ㅙl��N-����!�I�~q��>ô�ޠfH�Ro�nIe2d�kzX�Id���_"����̘֥�?\+��ڍ�-����
����γX��p�0��[ؓh�fk�zյ�����&�_�Ii1y�O�޿v�_�F����}���t�g="��Pg�U�;�/|8j 6���uSr@Ǎ�]ڽ�u���7���7�2��.�Gfu�L���M>���8�,��荘��iQ�
`f0b?<Q��߿����C      .      x��}�n#I��:�+������c�7�L��Juf�$]���pN<���f��i\�b0��b��c׎GPY��8tw5��Aw�cfǎEY��ޝ�&��z�Z{�z����/Q�&����[�xg����k�0�S�Q5ۮ��u�T�_gE�yOj�m�w�*�WĢ$��Yf��3NJUQO�,�t�m֦���J2?�NU�m��)Kb�����ǽm���n�)��Uy�LU�Q++{R׆xC�����lݼ]2�����]۵�*�xߴ���"~\�w�*y����ɓ���&IZxת��7[��MW̲8	�ػS�BN�q���\8L�0�fk�U޽�}l�7��$�w��m�;��������R[[bM�������j־2
� �}h���VV��mW3?H�'��O]w�׶��/�f�w�����;]�jC,*�0�fZ���v�a>���4�>�*�VQo�,Zض���j���X����Z�w!gB7Ģ0��L.~�K�]�+�"Gie�uW]y'��A��$�u�Z�=�Z�Q�<N�(:\�K�f*标E��/�Z�S�r���f�F״��U��z\�򎵑+�ML�Y���mY�ރ�y�ժ�̓� 
����V���w�;�/�S�+1��bh���g��10S]�f��Z]9��|>�,��䰃�������ؚ(
�O�S=�r+������4��gj>W�8�;݌-�}��������&�Yq��^�v8�o�y�����_gcK��H�-gܻW�{%����n!沴o�ƥ�,�S�JrA��/�ʹ�Nż��c��n?�|?�ʓ��6Ae�Y��3{�k\�VV|�+����G�y��&�5b����Bqn����Z�oȬ���;.��𽚺Y���
܋��)�<]�ʃNĢ/[oV��p9+>O�UF0����آ�� �L�/��(�?�wy�����E���Kmk�9�V�Y��Y�e���L�j�,+B��z>�ff�#/|�A:0�w�s���N-�8�?N7���OU��O����)�C��e����/O_�fV����,�����Jx�i[q����,L^U{��T���M��;�r7�,���<����qƲT����7䒬�ryē].�Eq<܎���� 
#�ܽ'��҅q�*�ɼk#�N�0KR��[S
�/_�ٵ��㘛��@ܔę�3��ܙ��h?�|�_FxDyT"�!��&���mx%�쩶{�t]jQ&{� ��||���V�,K$��$<��"Q�����dXU,�2��6���]���U���q�)k�ϔŃ�����/���"S�|��uz<�{$�(6o�΋�U�U���^�Y�l���ԬV�ؘ3Db']��c('�02�/�������d���b?�*9�gj��ԩ��"���A�!8��{rY��B�ٹ���ea"�[��n˻-5wMd]*�ǲ���C�J�ϭ�6�.&xW//��Ժ(�#���{�_N�r�q�?�u�pڜzV�8wm�:�:L�4�.	�9�'oH9�$���J���ˋ�Έ�����t���I7�VA�9�8����C��[��� I���A+� $�X�m�ܯq)�B|��D�K��fCݔ4́��݈�z�ab�(��~	��!3p���Q����a��L��"��a�LɀȨȣػ����2��V|�w�4���9F��Ui�]�Y&��w��[j�
Y!��Svj�
h�ž/��y�S�݋�S����H�´;�ւS�'H5�!tG��p�$�a�տu���%�rz5�N�E>[����|9]�m�2?Q֋���j-o{\-�0ޝ�m|�T��K���s1c�Pr�Ui�[�`����yR�ʏ�0;��q(��M�Ou��תd.s������S�����50�������,ȼof��^L�C����%N@]��Xo�Z��y�=���*��4���$,`1���kJ�L���~�}0!��M���8Hս�p�g���7���Ӫ���G��!�s%��ǿW�]��?�w�u���<�M��*K��a,B�75������2![,61�]`m���P�B"�\{ܮ;k�PC����nL��{���9��g�0�I�����k��E�k�%��j���sHIe��?��c'V#@��B K�D~Z(Ү���H��a��?��ީ��3����r������RW�+$���6Z����bQfQ_����:ʷ9�.L�<q���њ*DA��ef�r�Q��v�?b�S�<��r*��ѻ%*��?�pH��h ��(ԇi�?_�E^����Z�3Y#���Na��_0��9g	1��V/���@�'�g�k-���]~��+�8
���%~Y.��^#^�>s"�*	mJ�e�z�ղ�"�����$�2r���3����K,7y�0�~q2�n͜�,J@��t+� ���<E���ׅ�E[��	��{�"[Q�6jk�]����y:C4~��9r]�+���nQ�����U	�0��i�Ǯ�5��5"JCN͙�&�{����;��aK���r��OU��%��㯘�?u�it��j�q����$������ʡ��n�N�zs5�9��Z�k��'��r5Cmg��yĀd���d�b�>���-��ok�l�E|�D�]v������䟥*�M�x.	؂�{X��켛
�k�!H�D�����mI��0O$���m�)v.�d���$���x��%�Q"�hHv���lqኽ	F�j��g� )�-gpa>�D�Ѭ��kAhnz�rR�l�X�'Wa�Q��3����Up���C���j�!Kġ��eI���yWR$�8O �̇���oJ��MP��r��6{�2sc&3�z��HR9�]��N��C����2U�D标Q���_~�=sd�58��M�Fr�����7[�[�s����������
^İJ�����Kŀ��(���-�w��c���!s�㐀D����"��]�`����Y���S���wĚ$��O�Qc��Ն#a~*1��w�^^:�H$pU�8_�����3�(tɜK���M�&�� �%��l���W��fA���,$A!����*�����������*9??�o��3�5���&�����L˘�8���`:oM�mb��>�9�X
��x�7M}�Bbp1��!��F^se*fc�\ʝv��[��<WĸT(���b��,w����z_���twf������x�g�D4���.�$i�X��'�*��p�.�9�VTA��G��wi�tEюr߻����xӮ&�1�J�0;�ʯ�Ҿ~��]��X�yg�A�x������HT���0M�H��K������3�#�B����lϠ8������*��wF�{*ތ�B<��r	^���0�n�"!6a�׶$�\ʚ!�L�dy�3=Z�+��H�"����|�צ�(�$�IN�)Ȋ�;U���FKs��F���wQ�:�&r?���ԣ=�Qwj� ��Â9��L�}�,��C�a�6���Z��O.a<�O.���*0���IyXxςl%���3פ@"�Z7;y)�\Q(+
b��g��M;���dӣCp�h�������ߴD���oG��+: �>��Yrd�0�TW"�A���9���v'g��ņ���Q�����0�IV�aO��q&>e��E�'��(�� c��Z؝�����Ʌm(ܔr��j�&�Y�s1U�dCpOԲoYyR:#QOx�[��z�|��K�#O$&�KTW�[uZ[�;�br�^p%�򎕡����u'�
5�w*��"w0Y����X����!�pǜ�|�5�t݌q_�F~�c7�L��:U!M���z�xc�����i����,���$�*��NNT��r��{k�pI���l�j�L�.�D)?��5�j�{��ŢDΏJ;ǁ���Č�vO���0�ę����2��9~@���>��j�<*��4@�{(�3�!r�?Kh��a,L�q �#�C��8�Y��Q�ᢘ�<�{g� G׿L��/T���v�3��_��9�z�_�{#"�)�
u��.E���     ߫������e�������l��6J�g�-�7F��|�lHY��z�8Ɋ?�.�r��#����IR�壒H��:Ͱ@� H�N�7]��;C�
����[���Dn�,���l��P��ǎ�9�#�V���~���	�So�ю��A��/d��:��kk������ >���Ēa��U��p\omGm|�k9$N�LUQ�7�rq߻Fm:�~(��	+��ڼPT�$ �yH�Om��f����\����f��y�f�@�=�,J�@��n-��0%��̭~���(A+���W&c~!�P��=%EG@�eWk�NB*���TK�=t>3 M�Ƕ�Z�@�8ɳ�U9�z�$h�0H]g1��>C�j��Z
�^��]y��*M��A���z��ˊ�	$L���q�g>��;�������z��ܥ��X$�w,a��+J
BV$��of�s�:����[��?1�6K�l��$o���`%�g�ޥƒu����H�׍]�ͻ�c��Q"��u՘K�Q�۹4��q�i�^N�0c�"� C{�Tm�T���_w�V��w�;����� K`���>O0�U�L��7:��Q���{�A�QiE���,@�{�4�,�-�TJ���Ĥ�Щ!J��/����K}�T�J�U��L���r@Y���ŚKZ�����fOJ�`x�A��2���ڏ2t�m6`2�&r&�/�^,C@G�:�I�BH�F��E1t�0�t�@���/�@L�O��;��8~�pq�O%tk�60�3��p��OUUQ��\����{h�lT���BI@}ŭx�n���cQ��ȋ�� ��r)�03��i4��4����Q��V��Hc%n��j�q*���nۡ��T��U~�}-]�F�A��U1�8�*צ�4�)_-u�3����҃�� R�b������Lb���ܻ���nꎢ���H]�j�W�CT�	Z�*��n(^kRć����a�1y6wS�A�L!>�~�=d�P�T�%.0��_�ʥOQ_� �zf�������SK	e�#���u*�}$��N���ϐ�)�+X;VPK9yTL�9��f��2�`�A��a6�-�ɓ5-�'�%�)r��8������()H�"ˆa�`H9~oEo#�p@Th00\By����%�	}�l�+� �u_Mbrp�лZUj!G��ZM�̫����a(�;��ώ�%���i�k���[�22Eǌ�H�*Y!���m����dd�9��� ��uB�(ʽ�t_/<�}),2�,����#����/�?��n*�@�ߕB �g�ufe5��$�Ns�z�wg�y
�&	�޵�Md�S�w���|�����|	%��<&.��3�=#��Nj����as�K�	r��ַoj_ke�E��H?ن��Eh���^��]��aN��փ��B��vM[31ec{��rj�?[���U��ěV}K���Q��`r�㟪��j�n�9��tE�W�i�q�h�=(T����F��Xj���~��4�U��bP��ԕF�q�oC�oZ�t��$�"�Zrl�պ:Pd��8�3������T��=9�.���KJ +���;��O��w�Ǳ��N��4���h�8!��G��ՒJ"���5�t�J�H�|<��C�:0��8f
�4B�u�ݣ	��(sH�<��0�Õ&Qq�x�T�;ӁQ@����D|G�*�j����M�����Y�U�	�of�ƻ0͚�ˊ4��\]�Q'(��w9o.�[O �Hi��xsm�	x��i�3ݟ��.���E��YsŬ���Jo��l+��q��־魢�����Sqa'��"����~V�O���P�u}��L��?��Y�)N�H��I�d���a��VQ�)��f	����;���V�b�M��긢J�Ѝ��2O^��|�q=AT���|��V�UgM���o�}�ߡ0D���?zЗh(-�(��=Ax*W����n�����h���4-�϶�G�\���<.ςOjڽ��j�u��8�m7���c�Q	+�$����6g3�b}��L�eb����o���3Q��A�ۃc�ʏ#�����L�=���n�T�\�%��ʣ!�9����~���y��A�����V���<J�l;�a�G���+&>3��PR�%lviÓn�!_-E���\�zI��Zp��q� ���j�����}��'�!i�>�����{tI����9%�J͹�q$��H`���M3%4z�����)�L��+!�9�Kk��%#I�1t �7qVj�U�1/P�Ӽc�
�xD��Y߂�Yw�v��ؔI�şvmf�v�J�rA�Tc�	��yy!��|m*��YWt&v%�~"���w�M3e�$|u��-ݬ͇��+Q�'�eW9Z[mu�a�Q���J�3]Kq&����=��؁w�Uf���"1�<������Æa�ʔ���	�TVO��$��/��'�L��r�:*Y���ٙN�b���#!�R˥���8��%�K~엖Ir��.7&��y�P�.��%�9���=�v�'׊J�H$���g��!;Z3����v���V��$ _s&��8bj4pQ/�'h8{�F?@L��&|�Pnx\�!�i���4��~B�����/pal{43z�SE�a�T�)���Lut�f)@QK?E��Wh����H�|�Z���P�\7=�NMU+���<��A��r��A#3�h�n���`������]S�Eƕ���~
آ��X���A��|�ܻ�y�� v2ـ���2הvC�����!�rg�,~ڋ>ț~ej�yF�u�>3�(�n�;�5��g���OY���W��f艵��@OF��=�	K�s��ˎ?1����r	ʙ!'�D�k�Ć���VQz<9����Q�;w1��#z#ol='~P�4ү+띊E�+FA*�fD	![Y!y����7�jfӋ]����ЍB�0�]R�O���gIpݻ���ȆpG�Cb�S�? �
{�K�� �}.0��i�;�֭Z�D�*��E�����8�	uHϸ��wY��5)��b�����G��K��$�N>�o}�p����J̼Ĩ?���2�Kq�'�g�255�؄��?�n;в^(�IyH0ڝ�  t��%y��MPм0�NײN|=l�}_��1[�k!�7�t�*?��`P�^NC.
s��q��?1<.J#ȝ����ڒ{q� �^�������D���z�����RQ�|�C�j��VH���ǭ!)5������Y�\��$]D�+�d�KHbB
�|��C�{Uw��2��4M�13/t]��w��G��`��;���� xxŵ�`��!���[��!
AF��U?��0��"o��֧v�c�؉�]�>(l��� #	�t�X�S���B|�DP��z��w�G�<''~�(�ƴ�+��)ف �~�]��$�a(��7�q%���!�սt�;e���ps��Vվ%r_0����1rr�Ui��V-���~�]ժ7�� :ZY�NmoʉwE�PS�E�oִ���kFh@N� �C�48[k� %a��L���ѩi��ô���0N`���E�d�M?G,�v�s�+��A��M��w���-A��3�:�\  �\��7N2�^��ʬ�O�H��#F�㮻���Dy �mi]F�Ζ�/JL"!���a�9Ը�B �~rE3�.��ڻ[�9��w5J�I����u/䐮4K�U���� @�ڍᕍ��Iq,��8m�񾒴4��o7ۘ�b�aA��OZ��X�,v��We$�s��_���{���_[�MD�{�P���t��+�n�㡷�W�.55�%��/f���*nt����I�����0�@L�,
7��I����c��c'	��2�\�#\��aj�a�H����ε�n�s@S��&�DHa�8$'�CMF�JE��h�c�)���*ӎ���ſ�$��ð1�{s�
��pĐ+�$wB��7]��w<>�"J!d���|N�m20�]��Dկr�(IC���_r�I*���㬫T#|�����P�;LA����@6�0`u�)� q��϶I��R����]��    ��2,z�@��;-9�VN��wqg����at��hY�Ba�Q��yQ�S׫�p4�S[6
96b�E����{�N�7�� �5^����9��$�ӡ�ir/ᧃ�a(�^te�=cQ>�}��	�*0w����8���oj��\�ɟ@�a��4N�f:j�T�ܓW[W.����iI�!���Ց�Iƨ��U�9�|N+	��р��DA�Ɵi��#�s˺ߝ����#��?م�(��~�1��im=AO5�r��vRr��v�����R-�����vr���d
�C���,�BC��j�&�����J��d�?⫗;"�C;J�,�m۲c8*� ��F�q���Mq�xو_�ka����ݕ���Z�['�!��ھ ���& t�J��-��q��O�0U}9��$��~��%U&S���|(V:�Ң��M08���	�9%� K�^t'������J_��Ȁ��P����r.���^n'.��V��Ts�����}��!��kɐX�R+�Ĝd�af#F�;�tT���#�;��]�q��`$��(h�Q���f_���U�w�19�!A��I��W/��9AѳL�#-9V"7�~�[]�8��0���"%�C?�آe�.[�	���m$�{�4�Po;Jdxu�XE��Wȵ&�8�h�B�`�?�AjtEu�� 9�m��Ό�A�.p'h�&�8#蚀�Sܫ�Hâ�PhL����@�(���N���p1�D����b�k�2`!���:'��4��9�����<4���To����Xu�@�����s�|&q��{wC������/0n����3�T�*8�KaA��Xpq(�C���CDu.��HD��Y"0�I�Cc�ى�G��8��]@9�ƈR������6'�e=@s�����mq�}�攢�`�{4�mL;nPL����Aq�rrL������Y�9�:�j���E�$���-���h���ZO$2����`�a�nD:q1��|AK��>�:�	��''jׂ.�Y�~-��b�-bWR}>uq��a��I=�R��w;=�L%�$!
�eI����)pCĢ8� Z�%�S�&��L|�w>��aV`��ڼy7j�O
�B,�"�O>�G����1ډ)�"��F�T�:��T ��Q�0$}/R�G�)� ه9Ϲ�E`KaX��r�� ��7{��(	���34 ��&�B�‪�w���������e��;S�� =t��F�n�Y��(��8����JpCi3!z��pda3�*y7�16�$�d'~3ke�l`T~0�����e)���e��"�U�п���R2��'��Ǯ,�L܈�abޟ����_\�#�K�d���_7�@��R#�@p�uW�j�yە���ϐ�sV^P@�Tk&{�y��j-[��w�f�<bLD��)㯹�p ��^�iqZ*VpΏ��u�6S�Bjar��#�������ɽi�92E�I�V�b�hf8bQ�����0�Xy��~�?$�o^u��7����S����#��lM�0�(��Lv����B��Q|hϙu0�k���	��Z�_�m3��@�����Hs�~���p�RDI9b-?�"��ܒÚ�TܫGN�B���à��jŉq�1�>u4��|��4:������8B���˱�b����M��Z�%# E�AH講w�Y��:)���a_��!�9\��`�mԞ�)���)j�!v�7UY�
|8��9f�l]�R����p C��4�av�z�=��Y��LihrBt��їC�]ƥ�*'���B9�3�kWy�a�8#��A�=���4s�&4�j �����q��5C��L9�]㪂7����Ch�;�������F�Q�Uڬ�D��=B�1rt�!�5+�bNr[#�qi�*���Ys�\�h ģ\j뮫k�g'N�O"NՒd�$b��/�Oq#�����_�l�����8J]��S�i�53/#���#�vN�Rpb�}��Wg�y�bd��{�b�)'d?�0��7E1� M$�Y�s��4�0�~=���:���%~P8A�~BUM0G����ij�	imz����/D[�d�l��ڞ�!�p"���`IB٥��;7�aMu�K���^� /�k��!!���nU��H�u���v�)̡�)DρE붂v2�('��V��Rω�|��|ҩu���u���]5qM����K�\�o'|�&j��A��J]ێ�~E���,��)����k��ۧܭ�Z1K�� ~��}a�Db��r�N;�d8O�5�4K��P%�8΀���y3r�s!v�ʞ��4�. Z��ӁVӫ���9u3�Bb/rq�t:�ke)>G�g��k5��b�3=�0[�Z��4T�������#Cl7���Z]s-�YfA���0�y�~_* ��+aDN�D�5�թ�(s=�J!��4��*�Y�\2'N0��VՍ�̾�救@���#pr��"��bS�(]��A�hcrl�ti'��>��a��?��!^B�o�1�[����\���f�ի55A�&�D叿o!W1���R�zJ�"&hl�DB0�QI�"���&@נ�׎2bh% ��I���EgC����Xf� ��a]%�]SR#���͉��p��y�(����Ȓp�k=!�r	f�嶫`�]�	�@R�s��i����R�sL,�%�3�;�)��v$>��Q�/'��\�ڹq�O78@��g�Ab^F`�$q�ʅ-��� �� ߡ+9zκ3#(�M�UZ����F��2�<$.��u������"�kB?˂���z�R�az�ӡ��jJx"���%�����a�E��(9e���jY:F���1�L�Jv�4��/��=�n�9�R�J��$���͞I�EC�b'���X5!��e������x�}F���Q��њk�h��m�s6�k\��J! ��"o7'�-��;V�?.`Ǿ�Z���_:��i}p붓�Zm�,�H���!�9���I2̔�8?��
�����<}��ü�Pw7�q3ZSw��ߣ�AA��ֲ'���Ӛ�&�Y��������(Y!��^Y	�fzC �*����������2�S+3Ԝf��r!H��)~��,��c�%".��w�,U8E
��V1�n��YH��	vC�T�4H�;M��Q8��G�#�}3j
O![���\R��!�bb���ŵ�`��.����d(2�'�L���tPwy��}C�8�����Y�)�`H�͍wk��j:F�)��ڥ�ڣu?趶����]]s#��b
�ZPܳ�estj��ÍE����\lި�>	��_8���;���	�pN�P����)o�qO����jIMh�
	*��|Zێ���0p��4mc�э��Y��z;.�r�pq����+�"W�QL�*Ɋ>������jq9�4N��wի5=A��b6U��z�3���z�n��t���>�T������kءտ�ȏ/
0]��$�s�TL�ٞRo|Wm��M?p��q �\����E��,_|�rNT.%c�ЛCIk(���&?��y��	����j�qQ޹�z���gm�194/�C$����ZQ����L�h�ď�X�N*P�(�+�R
of߇d�Qt��y�����R�]~7��9}b*L�1��i-x�mw�J��t�!֩�v%א� �{�k�Wr�˚��F�=�9���ՠ������V�p����S����1���	�G�h]m�&`L��)��Fp�9�ۃ�&g񲣓u�}�=i�pE��ĈN�Z�!a��'��f�q�8	#1��q�%����UK׶��=���Q�=���N������㣆"�7·���#������L3�LBH4 ���g@w�y م5�<�0���L�쒙�a.	�ģ�{�횙�!_�������l��"�s&xS��޻�����b�?�o�1�7���;s*S+v�]�!RԨ*t=��b��3����9�FÜ�����~Ѿ��v!_+�Xʦ��hA���(�H�(I�H,���ƹ����x�l8ˣ�S�k"���%���F���n�	��ܰΩݽ�/�?    o]��+�b�_�=��p��Ĝň�C<�+ͩ�~z�/�@*?Np���v��+Kr��֦'}���/0��S�bq�Fid�=�i��r���A0��"��M3*�b���)��<�����$��P���J���=�i�I����}�\�n3N#�#�Xg�|���T
E��A���t5%�ZDh�l��C��Js�X��i��xO �wλ���9�J&f�3p��{Z�(Ж�Y����Sߒcuc�;��s���\_YaxP%e*��B4��rLly V2�t�1����#��u�>:L	�$�1��2���3E�m�`�a.l�R<-L�)\������3�5���D�MS�Ń�8{���1��b��~�� �ݮ��?� ��zU)PgܻQR�&�~�8���ѧ�/j�9��$���c�@V�Z��°�S���ʷ��dAۖ��A_��E����Z���e�rYJ,���-K\}�d�u�6̻nI}���{�{���`��>� ��
��+[.��Y%�����uˌ	�lz��~[���q��.1���0N�@�}t�;3//ܵ��i��?��A?�z��{Iq�1� �k��w�fQo��	�Dw��#���TLD�v�['*������-JH���עLВ~��8ӓof��]D骢�F�T�>(C�����pJlo�0k "�de#p�P!7�i"G�g�«s��Tp�w^Wb�K�A �f�\FA�2���u��xVV�Á����lh�N�ƒ�r9`�׭��Pk�D'�$�vy���	����?S�gݛb���p�?+�̲$M�+��j��C�}-�����Fsh�d��ːl<�;b�[a7���]��E<)���;�c0�b���A�~/}���`V!]�|��~�A��FB֡S��
�u��Ƴ?A���}[�T�`$��6���%�Ȱgj[sM�>z��$��8u��g���=��ڒ� g?H�O!�g*U飛�;�~ʤ�h��,��D΁�I1t��+LP9[�(v/��l��n�f��8� 7rP�M�m֪WC!ČC�`x��;����QYUf	MUEv'nZB�A���S ��B��M{�$B�;��L�X����Pb+��@�J�A&X	S���]��@Ƿ1�8O����������T�9hVą��|]����5I0L�� p<���"�ޓ���Kj�\Jנ%��{?�!��$�j̊��v�Q��0r}�A�j��nJ����T94�Q�����ګ�h���MM�Ԭ��ȝ>���E.���<�i�G!j��)��4�	�䚬�����G�u����Cb�R`d�;��yYnz�A��8	�\[��s	1
��*�nDy?
�Z���Y�T//��FI<�TA#�g��$�%�o:�&פQ�W1!��'ר�z���UP�tI�'��-�U���>��=�j�U��"-�/f���Ԙ(�Hɍ
]Qن0FK9��K�V-�%wf]�}ڹi�w�O��$E����Ui!�{q���p��0������`M�r3D�z6�O��3�*�T�S��YFH$�E#�!��	T�z�Λ�%�k�g�������m���Aa�ѷ3?���Jd��e �W����&�O �81.���H~�b��Ӎ\{B�#ŵc��L{t�5�8� �O�٩��tIa� �]���1�d�����ۑ���
��ܫ�Xo���[S%�"Ж�ʰ��0
�QW3r�I�Kl�B�,�񙂫#����~�#�h�J�}�@_�Z�<��xڐ���m&3t�Q=�S�)�]�_(�����0���;Q!?D<��pU����Cn|t	zc�~�'n����Q{	&���]�F/k1%\{m�(��❑�Ca
�ǣY��������{Ck
-�@�w�9kB"�R��8��-�Z��ب-өX�@}�hH�]�) ��m�H4hs�Rb�uW��qf�.�HnMv7�&x�Zst?�$��^n������␎8Ue�d���P8H�~��l��j�S�ĒS2WX�}�tc+ۓA[U����D�\�o�[�S�'gԸ_�S ?�9�4?��f���� �H1�p�;SJ�u��i�9�4�~�s�gV3'W�� �YW�y��Z5�0��Q;X_���J�$>�ɳ6$���;��J�4�L�0���Ԏ^�����f.Oc�S�A��������ϾO-3rP�<��2!
l�a�N��{/NM�O���؜��*nb�������=��4�,̝���ή��*KR���Zf��\��禽�]���/��_�A���ڽ��y/DV0Fmm��h*�$w�7���u	�D��Q�*τiq�x" )���D�(ő����)��X��#"�Rшp�@�d!�$a�g �.���V�4��U�)�
�U�)k�Y�C�e�X�j�cgo�>R��4�TJH]��[N�1o����0J�2ϺT\v4�I�W�� 񵠵�q�y����w���W��C�L]���}�cO�����|�˭���zX�m�����µ�<=�~�"���A�]]�=�9/➟ק��,��-�$v��l�n控'F�it!�q�U���S-�ogۊ��k&&��~n\�M%q,���,�[?.J��w��~��[\�t��qI�Ȯ�j�h��u���G�9�}�4Q7�ܘ
@�[���LP�1��J+��)���+D(\%���zlI>��O:�h�Bp���)����EW�C����q.�?��-3 HǷ��l_^H���<<k�Z�⒕�%�?~ʅ�Q��*�X��sy>�kO��8�*bP
@렌x���?Ü?jG'�hFQ�Y�?��+��Q��א�sZ�{�����
ֈQjju5�Z���4��07���ɵ�/�e�A.��x�"�I[�r�����&$n�^��+Z6
�dË�����n��Ժ�ElD�T��Qg#J>�y���Ҕ�"����vHB=��U{w�1*r�CͶ$�����7�t�ݞL��AC�J��������8N��ugReQ��^�7�Z�@��D��<Zw���N�m;����;�1?�|ƒ�9�H";O�H�pQA�Bj�C�UՋ�"�G%���)���B������"��y�1���%܈oP�N�D`����K-ʢ�g���&��̋"�L��:��s?�m�bR��n��YL��o���|''��]C�Ȩ�l�ҕ��l�b�&��2�9� q�*�3��������nZ�ghp����ti���ޮp�>��;�$��Z�8�~�6�o'���Ar"��M�//\��|�tܨ�p�c�1;�Q̋����x._j�A��
g]Ui��q,�Rk�x(�ѵ�8�r�a.���o�<��e���9����~?�M;M��?�{K�8�ʽ����+��L�q0�Pځ�F.*z"}]�X���|�l�Ir�[�u������Z����_b�Zf�� �c@� �(/�2م ���`�QouC�����=�N7Pǲ�5
z<�3�$��u���J0DKr|����%g�<� ����ŕ丿)�d�#U����p�z��r"S��7��o������U]q`T�vt��i4er w�X�`t��ui�I<%���u�&���"1��H
79���3s萌���G��R�0�gܨ�a 1��Z����,��U����4�j���Z&���DI��WC���T@��ѯ��;�&!�qi�1Abye�k]�ɉ��E����o�{[�����=��Vl,�U��Mѩ%�m�ܗ���ɵ}�l*�����rEL���*���f�N�-�7v]R�j�#�]�-~C݈e]#@����k��R� {7�`����qir⡹m��2�<r�(�dQ<�U-G���$F?> X��Y��o�%q;1;�8̈>Ӳ=۹Vz�f�I�Kˠ�$DO�kX�\S�*I!�r�)�%ի�IZ@A��:�q߃AW�D-�1�d�bx��\�O�XO��I� N��Q� ?.'��ȫN.�����n7Aϫ}yi&/�v�bꦝ�f�'U4���   �]O�ɑP9��/����z�nڵX�w��S���mW-'�e�4=��}�<�O��=�E5�KL5�|�z�7���M3i42��N��I /1�ş���Qrc�L�����������ȟO��'�?Ytm��"ȱ�n�/�f���l��,~�7n+�4��wJ /���X�(����?�e����Lj���LV�h�+�M(����vo�o����y��E�?_�M��Ż�s܌_&��}�f�d��뗿��/��n�_      /      x�}���%)�l�wI�+�ט�O�����t����Vg�<F�l����qָ��g����Y��3�/�?c~�_��g�]6)(��������Y�w�Z��od�m��b�����{�K��?k���p2 �lK��1�"�9����
�m�w���8ܟ��N�bI��a�fýl��5�l�ɔ�u�2l�b�pE���������� �G�}�e����b�0M��5��i�j���a�ƚg�ן���!F�?��L�탭7���:V�ó�m'��~�/��=���j�ƶ�'����_l�;�8W��Z>��os��6�3��q�=�!��ϰ-����.n�+�|�6Y/�q��_���	7�F:+���+-�+��"\�L�k�~f�ۙ��&���#�w6lzdM�ᑊzҚ����L�����}d�
���ۍ�n��Pkڿ�ض]2,r�������O��;�e����Nk�\'[�mҹ�$d+~7�m��m�����Ѱ�N�R���:`},U�Id�I}��d{?���3�|�C�3�����ܟ/�'��!8��W�6S��m�������!<����e1�g�M��&^zm��	�	������p�z6��.���@�+�.��7�́��Eî��q�:l\�1��Cx�#�#\(�[n��(p9�p6;�.l&�4�1#���=��a�a���)���b	�MڅC�zNY�-ᬁ٪�dI�e-�l��1D�y�K8+�w�v��E��3[Q8���>��dP�]q^{n�:�B댞�W
�!EnN�ٝ�&Ev���#�mg�����Ja�����aVdq��p��P
�%����H��Kx�I��Kx�=�YS7�$�� �a%��A>�	u3S�Խ����p��0˷�Cg��n�C�ᩛ�[����e4�!sDk�`��$��ٌb([N�#��,��l�3�";�БMc��|I$��d9���)l�~�=����hx&R��W|�3k0���e�,7]�����X��1�6d7�;~ۙ� k��'6��y��}Hr�N�w����f��;þ�	l��	��[�=�#b8��2��X���#��'�P�K�Y�}c�{~x��n��6�v�d�aR(�#Z����왎8y��;?_8�d����@-�^Oț��J�>` crhx�G8�$n����Ң�#wq���C�?~N������^��o�@����lD�&��#�:ӔشE;Hg�	��0����#��\�����6e�ev�9����ƶ6 �lٴ%v��u�j�N�:�e����@�|�z]�ɍ���� /t@z��3�)k<|~���I�a	�>f���l�DE��L=٣��>Å��s�G8�=�^�eb�#�&�pDx�x'8%�᫨���׻ðx�g�⡑g6b�P���<Y�Gtpf1,�tf�e�י:�a�p��lƜ���g�R�+1��W�9���}�9�� ������|���z�K�0���̞���=���UNT��aG��$򿃉SX<d�sX,����J��;Z�0��C�a
���8��W'q��V
�G�g�YMQ�#��F\�6,]��f�Bґv��<���#�P��d3Z���(�a��pf)�'�f�jd�Ì �̢f�O�1L�Ry�rYo��!'O���n�Dk�#KK��� luz�^`.>HQJ�#
�0đ;�A�����Bܓhg���Z�,a*���3Lgz$x4��L�\�������6aGާT�4l�=9�⊜�.�0;^���x���	hx�s��u����7�T�k���Jp�� ©�V����\�d	�3��MǺ^��]ZH7�#w����Q��{�=��X<�͚�rKuA�njs����n6��4<��%���u�Y?	έ,o���2�=bN�꼶T�#���2�Wp�F����uף�O�&�
�pH�l��Ò���G��9�Й��q힭�pFx��G���p���-�5OP�{P��a=f_�)�g�L���]z�a�ιΙ5�<hf4����a���Vɠ�rP��Oy����G�;�옰����:`��j�n�-���y&��K�q���"�{ɨ�kT��p�uNO��𦄮��4��n��u��ܦ�u��tFǭ�:#4�"E.4� ���ܝ@�]��*�dˉK��M����TEqu��f=�\,E��Ds&\��#�M�|��4�Q�Д�����<ҩ7`��J灦W�h���a��0���y�sO}��S7o�]�:)����rRO�����8}'�:LE���aJ���.��KQ�R��>����`sEg�L�6gY}���M��X�Y�[��
�l���Y,�/�/6K]&�j����ņ�f`���]4�_ߍ���R�ξ�����~���m�� Zqf�La�0�=,x-2�?�Q�r�GT�p��Zfo��NKV�0��i�k�}F�
rpY.�ZF������:���F��Q�y^�ݓ�#a/�ZA��?��O_ԶO��P��Á�r��Wwfx�T*X���гzuf�U|���W�����6�ͳ�����n^�E$��ص�#� 6�|�����_��őtP4�̒bUa�k�#� ��|�����صƑt�6;��=�]�D:����u0��EN���}������̉u70� u�-x-t"���L:8�[�k�� ��v8�]�4�;�R���+[x��zA���Zm��.*�ä��A�����;��je��lŘ3��ޝ\ve;��J�X�k���;����]����k;�q��4��p!e���vl���ÆB��
M�E�Z,L2FL�&�`�>`���Y�p�«�˽-ϩ�8ڰ����_���.}�e��4^��,�n�����1f�$6�&�.}�$���W	��J�y�h:��&Ƣ�K���Oû�0<�@`r��>h�K�M՞u2���4�lE��)��.e��`�샵��e��v�=-6� �ı�>��w��%���q��g�u��jx	dU��?ປm�Ŗ�k�]ci�s)?wޞ�N��HE���l%{��T��6��^�Z��l���zq+��''�\��/�����Q�ǧ��(*YB�o��%o�}���M=���ҙ�VÍ-�4]c]�o��:Nl]	�o�n�����������VS.pB�����r|����>������/p�/W�����h���$���¾o��	֭�
����}S��*BJgxݛ|Ɯ�l<Ӿ�m��4a�p�����ˡ����Ƭz9y��&qa_�N�j�a��,Nm���X&\��d{�+�}�Ƃ�,���I��%;p��|���Mn���bJ�q���w����'��Ȱ)�/��7c�@��Χ���qz�	.go_�O#��������/־p;�a�[��u�0g����z6��=E�=�[�3�a��>�z�����0b��!�T{�ì>8����65�"�?ΝЎ�s���K������]F=܇6&R�Z��M��m��O�Ym�7]�f��-���}/[��w뙝��g{���z�k�>g/��^����|�$��8���
�fq�������z��5g�.����?��g����k6��֟��#[q��W���b���N�h�6�S@�Ϭ�i�?��e^��{�l�i�?��E����x�ש��%��֟V�k���2,FI��q�� �������%:���?t}��*�I� p���� 8܃���p߼h��UR����h�y��Z�����^o�{x�Q�'a7m��ԅf��o�k�S#����:P\"�ԅ��H���(��_�6����Bs�$��BwT�����龙!��~�9J�~�3b���О�������j:bԱ=2�0�ҳ��u�M�Ұ��P���sx4�"�L��GDG�b�F[�j� c�F;��kޚ���79�~;P`㊶�~4:��4M�ܿ�)\i��>�a�`��E���MqS(��3m������E͢�չr�ɒ�w�+���bM��z+��%�s�-)�� �  9ڭ9�ŝ�ޮj��j�j��4=����B�m��Bg���3kz�]H���WM�m6�LwTG~��	�F�]�/��=�w�=i����ʖ��M��&�0|�#ݳ`��+ ��e�Q*xl�����;l)\3�1#�bF}yR�6�W��B��%¼�6��'�����V�3ºW�9ꗐ4\h�_T��!ȼ���c�8��� ۞!u����k��G����Y���~%t��cR�a���6&5/���ϑ(R�X����H�ڀ��?���)MW�s��x�߇u:ݯn�,��f��z��L;�s$b״����Jι�h��ډ��ӑ|(��4�wџ�����7:s�X�������_��S���;f��#;���E���/�F�<�l3��~�6l��+����S���r�t'u�u�_������0<���/j5}`��a�~����/�x�;��'�9t�.�=0<��yፎ�5�~2�S�_�K�K��UM�~7�Ym��}J�ލ����#=�=ގ8�N4�����5��n�"h�}JRo�o7���t�W�G;۩���7z鶑��Ɓ�?"`��OX
ђ�;�0u=�f�\��� ��]���!Ʌ��m	�.�|����E�����3\n����P�u�%�����a����wf1-����
}�]+�p�b���G_��RZ\<��N��:�c�yc-���8��� ��M����_�/�k8 <�pg)%.N�w��|8afޫ�[A���/����c�0�S��)��9��"dj.��X��MAh���wMh�-q�n�o��W��������O)Q�+D��iK��7k���p�¡�7�Qۗ~52���Rf͞D�;��_a��Q5}�Q�=�q���tW�ԇ6�*7�P��~$�_l��鑺��[#$�ᖬ���wq{��7���Њ����q��=����������q��Q�ڜz�#iS��*�l��5����u\J(+��;x(DN���:�#����cno{w@Ù�Y<��D�����d^�S�N�8��ރ6�v�w�`���UՃ��W�v���j�o��J;�m(�[V�=e"�^��p%����'!��%�䨭��*�����f�^I�Ĵ|�x;n�!\��'�|����pߙށ{
/D@o8	�h):���������<��      F   ]   x�u�!�0DQ�=h��v[�g� M
����C�	�̕�ޏ�l�\�S"Y��xn�M&|#��?�����d��̵%d�9��"�$�      1      x������ � �      $      x������ � �      4   �  x�}�ώ^5��w�����=���l�@E�>N�\����_]��>��b�80���SW�~��ǿ�/�(�o�,����)�M��eA���h
7�9��h��D,�kT�<��R��$h�ޔd��[h�$]�YP���r�T����&gk�}g���pR4{��s�Sh�����Qs��z�������g�˕Bآ��}���.A��u˵ݨʕ>+�Q}Vv��q��A���F]/&X�~��Z9B�N����țZa�Z�j�����Ԫ �Us�
�u�b�s���m�@*G��>��rGeC9���̠׽	�j�9�3�}ʐl,؅R�<޴HP�[ĺ�lIS�� �
̟��Ty��l�CKZp�R�J*}>��HЩ�6�����~���|�ן����`M(n�y�����o��b��<�v��9.'�t�6\��C2���ІAX
��]�Yga��}k���I��!M7mO�P�9;{����ZV[��1ݮ����Ӯ1�i�ڋ�D\E[P�#��L\�ȵ�Y�w1�W�V��Brg��T��4�2VjG��qէ1D�G�y$�uiv�#
���ssܒIP���	��?b�j���U�%G�����jt�5��Kzj.��h��A�K�q��K����x��T�8TZ���	�8���&�]T;m��k�{ā>Fc�^�1�T���q{j�d��RJO8���yOO���1:j9��B��V�=vܞ
�ۚT����� �������O��z�I��8���
��	�(��3�
X�%��=g���n�z��4Al~=r�I�}|�T�D�=�'SZ8+��|�^q�
�W��[t
�2G2���D��O-�S	�������b�YqU��=w��4��$%T=���0���9���Լb#��.��b������q:]a���1uF["*��N�+ϖ]�s-Y\w/�;ϫ�`�M:?w N7��f�W�p9��2�@�Q�sؔ�i`1&�'�+4���29b����|�G�a�C9���%�-e؝q|:�+��W����n���3�x�m�f�������ywfJ�d�J?4��ڇ�g�]�,��Zl�����9&��NM��~rȅSkE�3�#����I�ƛEG�^h���ɩ}pwx�'�c��&��'.�9n,|�<^G�J7�=�1��E��U�=�ܤ�o�?G��g9DO8���[�iZ���0{,	�i��7��^�d��	�P}DC+�QF��=���n�|P�;�� \��:��1�D�!�h�3���e��9�l��w��T����X+Z��n�s�E����,V-2H7�Ry�c���Ŕ�&gۑ4�7���n|���R,��[��4Xy|��~�}�ٓf�?�W7W1�V�>&{���K�j��]H�Ͻ��LS�$x�8�1�]·:C��}b�����ޜcܥGpвdJ�ս�q�z��i���덮�.W(��Qa�����V��k��<��Q� �6��qZ�j���:Տ�7CA��zwV�qg�XC>����>�o[��2�A��g�v6 �
�����K�{;�hs��;��� b,���f���=��O�.1��E[��{��5�p�<�vS�������㮣�7c&�����\�q"�}TtL�wi�9P2m��\\��C�F�%Mw!��p�v�V��+r'L�l�kz�ve5��O�W;z��V�Z�ѫ 6���7�����x[v��P���6�@c���l4��n��B�{���n|�BoЭ9��Jx��#�K8��3:0Ք����g��ŀ�Z�nu؄�r~��ր�M5�x:��%��(+i0�D��.���W�?,=�a4��h��'��B7�3�<]��$�%Mm����zT�,F����de=�G&�1�ͳZ᪡	T̵�v�o:��0��hg�f1�Yl��C;&A�֣ߝ	t�#�n>"k�!ꎜ�Q�6c2�������o?����{��      6      x�l�]�,+�t��nW�3�A���M�$���UV/��Ȝ#�#	"���Ri�˵��/���e���_��E��u��_\�*y��\����BP�7�C|����������(�ƓB�p���#�Ca�Ǵ�c��L��//�"��e)�X��.�b��m)���O��x��S0���f�4}QU����/��hza�x�L_X��1���0�����m3����2}���#0�tB��D��lK�X���K�`��K�h�в�P8�w�n��yB+�%QDWl݋(�'����f7a��H�ZyƈL4���g#2���V=�ߌ��3���i�;e}��_hm��w��L2Chm�$_���X��Z��Z+<���B���yBk+�Z+ēzf��PDWd��)���Yk$FZ޳p�Vb���ZK�hy���M2�,o�Z?If���0��Bkf���̲|�u�?3�¡�%J��X���
f�h.EQ4Ϭ�~Ңp��*��
�E=�����
��=� ��z;ۚ���%�n��-����U�p}WI_��?d�eN,�Ƕ̧��s5������Y�����"���*�+ܮ�	A{b�.}}���!�~�	����N�
I1>�2��x�u/5E��)[�X�;���Mь�Pk
癄��(��N��PDOT�k0R���3�c��D�:n=��|��<�:��3N��[�4�:�	�3��Bk=�:�<��<�:�D���rپ�X��Znk(�'��B�<��}C�<��I�\����m(���I��?	s%�8뱏ߜ0*����L�u#=�1}�cL4St���L3��Z�g���0It�[!AFaS(Wt�ssEWݷ�E�DW]
�s׽��y&�}��V(�'�����{��H�?���D�=n����y�x�q���},2Mp�[�0�=n�,����"����-J�~��X���-��y&��P4qabQ�D�hI�ą�%�<�5QL�X��t}ESg�Կ�?T��GK������*�h��w�����L��|d{�h�P��o6\'�q���IW��
������W�:�
`�e�N�Xi���`<�e�L��;WIS�ϐ #(�B�+-+
&���(��^�
���+[�x���V(�n.����#%�h�����D�?Ze��z\?ke��?^�ԣU�y�c=߁a��W`����Q��
��VKZU�t��MZM�t��O�j[S@1�mM=K�5�7Fꭣ5&���R�5���|c������<����iR��:ạ̈ufI�G댒2�֙���'n�$���X��EW0]duE�,z��P8Od-�P<Ϥ�
�y��1QL�`��#�̣&J�G�x�3��Y(��<��~�	�q	�a�w�f	�q%z��-M����X���
��V(�g��
��)f��	��P@Oh���!(�'��R<�i�i8��)HB�%S���Zi	��К�*/���	������+�M���Ԟ,� T �Q���94�%,K�B���\�]Cф��T(��ʻ?E�<ٔ�
�yn�"z��V0�c���p��L�֊��@}�w0��"k�qZ��
��t.�,!Q�b71J��n������WH��} ��PF�K�bfV0O`m��y�tK�x���ڬ����
E4"��H�Ѻ
#����D�i-Aa�P�����0��BkM(�i����	Nk�%8�-`����
�2�B�?
&�xc��&�R�B�T�T(��J�
j�S�����
Fz�V���
��H��Z3Je��h�q�	9��LrtK�&Tx��Y���F	>k�$��-`�����$�W��
E�VS�XB�j*�X[�p����+�`�B?�(��rt�gh�ga��
p��|�`_�	>�ft~4�]A�iKFW�,���Fp�Ƃ��֋��w�U��"�B�t�5�3g�l(��g���j�R��֯ġ/��K�+��1�D�e��w����B���(-c�����	)�-`�촌a��2fIN+F�)���(a֊A��ЊA��Y+Eg�N��bP<q֊A=����	��`�.���q��12P�Қ�a��GV��3�Ȋ�ifY12L0Z[�,�hm�<F���d�Ȋ�dER,���
3�m�I�<���I�<����'��EVR@�y�"��VL�ԧ�������0Q�Қ��@}Jk
��OiM�r�"���Z��3������0Jl��
�2�B��l�T(��-�w�����XN|ƢxB~*P��O�"
y�����*k���ob'-�]NZX#����5�+x��9%! ��Ft_�g}�]��9	kDW��C�=N8iUI�U��d�T(��i���*��qXNط0gp��Vl
(:��Q7i5F�3Z�1Q�h��@������1�g�>�|�g�+0���8�<6��:�|.k�3Fز��`g�h��BR��]q<&kEUW !?�$��B�<�A�{(�g���P8O�ƺ�P@1�#�tV���Yq0QJg��@�p����<��:(���L\�0LpY[�,�e�/i��
�S!QB:+�b��h
�{��	}�S�pb:+���h
(���)��Ί�H���ws
LLV\�{Φ�y����I���&�R`�`��0�c��w`����)0I4Y[!I£0E�W�)*��2LQ��Ga�
'>
ST<�d�����JQ������ܢ�MV����Zs���kК+� �V�� �{����{OX���',]�@ACAS�*$Ȉ
����L��RV4ѽ��p�{OY�t��г0�K��┕2#�lVʌ�7hŔ��oК
٬-`��B�0Nߠ5L�٬O�0!����7hM�����(_��T(�Ǿo���欢h�9�(�nΪ�'��TP��*�h�Se�d�Re����0�c��Y�2ϗ���L���&%�Re��f��n�z�WT4&�)���XM���j����P��j
&��O���欦x��j
������ꌔ�Y�3��Ώҙ(��-`�P7\�:�<>�}��'��-`��?k
��Ϛf���b����s��z�P,#> ��	G%L��yZ��5�Z[�x��0��V(�n?Q�^�|��Nt�����DG��m':4Zn;����m':|��DG �Y�m':4Zn7���r��.'4Z&I��Ҙ�b��Y9(�'��R(�g�K�p���
��LZ[��b{V�(�g��H}2+&Jɬ��Y_�_�̓|V���|V�L�|V��|V�̒|V������%�$�g�(I��b��Y9*�؟�����Y9)�؟����Y9)���/`I=%�k0R�Y91RJh��D)����VN�ӟ�sf�ԟ�3������0!�����0JtZ[!QFT(�X��Y�<=��OU4���p���E���a.
(�rQD���#%��#��(�����M{�y��v>��������=�(��Z�A>����3Y{�!B.k$C���b_�&W�0�.�\�/��@A���-P�iAK�8���?ES$ጊ� ����wW�Bw<A0�J�
6�OP���~��ˠ;pt�!�p	t�!�pt��d�}A�N[�˟�(�BR���
#TW��ڟ�8��_W$�ӯ+��Wm���b�+����`���d_5'���8�W�ɾj0M�U�a���2ݸ����B����U�$4�eS,���M��Ba6E��N�ɦx�S��b�!�"
������n�lLԝM1Ǚ�sU���&����z�J`�`��0J0Uy	���^8��W%0GN_� 9FT(�W%(�W%*�W%*�W%*�W%*�W%*���*���*a�L���%2P���<��S�8���$��O����O��fY(��,Y�I��$Ibd%���%)�ؚ\�����N�?��xb��d��%+�pd�T��l����_\ �q�,\�\F.� #W?W ���+��`���@�����
��{�`��X\�<N�dD�b�٫RL8�d*�Y�7/
牬�P<���
��~��RQ�^��H��*����*��R�{��3QdU�	=�[�4�emÄ����YR��TFIU�Ҙ$��    �$I���b��Ŋ��`���M�V��y��+n���"�)�n�j����#�.�t&J=�3�c��	�̓�W�3NJ^��4��:��&���,�L�&��(isa�L�7�.IBkC�%�6��`b�E�.�
�3"ϡx�^��P@��S�"�y�2)���D_�j�3O����|�X{�YB���\c�ԊU�I���b��c����cD��#�S q+E1��RԠ`�	k+N,֠x���
�Cנ�b�h�bP���ɪX
��/�*��8�^*V�� ��+AW� �t��+V�� *�+AW0�TR�t���0TH�P!�Q�D�U����FE��5*��$�I��'aM
(�+7�(����H��&FJ�X51QjŪ��R*�&�I&�&ƙ(��LZ�a&
��,�Vf��C+K��%>
kV0�˯fE��jV8�4̩P<q�W�
(n��EŔC-�ԛ�Z��Oe��<}*��I��Z&tb��*�2S\F	�[�$�b�� �b����}q��#,kU$�>X�b��VE�MYU�<q�?E���`�
(�kUDݔU��X�1Qo�jc��b��4�Ū�Y�Ū�Q�Ū�I�Ū�A�Ū�9�Ū�1�ŪMb����H�ª]�t�+��bu��Y��xbV�
(nѩ]=�}������6���Bw�
�	�q+�$t�q��=BW�����5T�#t��Wq�����=BW ��{�%�5�!9B�h��{��MW�h�Ẇ)��8ZM����j
(fޫ)��1h��g��1Q�bUc��Ū�<��j�3��j�iR���|d��,��%�`�%`����I2�B���g�M��ZP8q�jQ��Ea�
(�`���b��EF�V�L����7X-2M2X-2L2X-2K2X-2J2X-1I2X-1���j_�9r��%�1�B�ĊNK�%����hbVK
'�Ғ�⪝o��b�eE��[f��`��D�V�2�Za�̓v��8EVf����2Ä���d�T+l�QR��&ɵ�V$I���X��*
&�
[Q4qI؊�E��xb����(����.!�������;3���;Q�ڔn��[�p����/�p��yo�?�
`wN�BW��B�!t���0TH�p�Lk
%�oM�����MlohM�Ĵ{k�'�2h*P<Ĩ5E��m��z��M>��|k�w��,�g�/��Ǚ�1X'p;�|�0�g�>c|�O�����3]R�������و�+��6چ"���C������sW[�`��\L���^q1���`��Z��G0�W �`���doe�Nkh�鴆f̑Nkh�鴆f̑Okh&ABR��B���f�%&E�)��	h
'�{P<1yՃ�ɫQL^��H���FJ��=0��ϕ�{`�Ј���y��*K�8���W`�`��"�s����0J4W[!QFT(��C�G�U��&�V�
���xb��G�,W�$Eԅ�����ˑBWBW����+ ��qtP%��Xw\]�ZAW��
C
L`��z����,QB�g���l_C�D{ճ����g��Uϊ'v5���⊰gEW�=3Ro�za���ꅁR�{/�:��W(��8�z��4�H�ä~�^�%ub��(��&ɝX�H��"�U�ľ�^LYU�t�UNYU�t�UPYUu�U)�#앑�u?���>�%h�ֺ��V�-`�`���i�uP5�I-�1Kjy�Q���M���aS,O��z�4[zW4�Nػ�ɽ+����P@��ꊨ{vF��X�3QJc��@)��;�4V�Zޗ`0M*��0�T��<N�<P���`�"k�ސ$q���y�OQ0���>�Ә��w(��C���霖)��i�"z���<���G�[�q�,�*:�,�(:4ZnMth�ܒ��h����nAtQIq��A��5�b���LlA�\���7U8Od�o�xbk{fFTD�X8"#�FkD&JFkDz�ֹ ���Od��()�5"��Dֈ�Y#2GJd���e}
�1�B��D�H
$$�FR$a��H
%�I��<�H�%�FR,!�5��y���/�� }�pd�Hi��#m'�1����m���͌��X#3F�V[��D��#��GQ$�y�Kϣ(�XzE�<=XWQ<���QP�GE�~�Q��V�0Q߃5
�$��3*�݄�2MHb�	�2L�V[�,)�5*��$֨L�X�ώ�� ����d�Q(1�5���I��M�M8��}4�+��)���k4E�rl)ܹ�坅u�zvy�a����]��5�����u�`B�s�?@��ð� 
�Y����:���]�aX[P�Z��$��
%�X4�b�Nt��]�ć�P,�����
�7_}
E3�������`���j0N2V�aBk_�Y&���,!���f0Kj��,��:S�1JJ`c�P#�>C����Pb�0��=	M�ė�S81�5L���0_�jA���X`�������0Q,�ť`������s�
&���`����
&��W^
&��E��s��@���E~PH�YT<!�gQ�l�jQ���yjQ��nž��w+n�������%I�+K�<�%I'6Xb�tb�%I'6Xb�ԅe�A��Z�Ub�\(�$I�ǲ�Xb�����ɖML�ZV8�cYV<11jY�ĨeE��K��/}���i	g#˝�pP�1wZ�@5��i	G ����� ܻ��������� �0�J8CAS�*$Ɉ
���VL|ZU4qYhU�Ďd��'���
��(.�2R����D}�U��۰�2M2YV&u�[c���n�Q�ɲ�$�����Nwk̑;ݭI��$�,k�����h��j
����x:��Pg�"�LCg��4|=c��3���>��	�3+�:�|�a�3̗������I�cX ��4���i,�#��Ć��g�$��ˆB���6L�t��p�X6Pܛc���B��c�䱌��4��4��
�ӤFw3�I��f�,�0J�X[�$}�0�� ���� _`M�B	��S�`���P4!��B��J!(�XS��B�p*Q�XS)��;��Y��t�o`��(�_`MA�XS������KbMA��WhB�o��Gt1n a(H��K��A�RX�A����9�H��S$_
k�)���3��Q�[*�X&f�X)$���i�cӟӐBf����)`����)`��\M��s�,�%d����?�a
�$f��gH�?D����T(�В�BQ4�ot*Nؔ3�'�ܧB�M9S��¦��`��F8Ǚh����)`�������ɪ0N_%L�2M_%��	��[�,���F���0I�WS!I�S�*�`��B��澩P4��o*Nx�e
M��>
(T	�B=Ŝ�=#���S�H}��0�B���1Xmoc�/���&d��0�B���?�a
��?�a
$��0�;k*I��5
���X���&�f;���W]ߞ�PD�Mf*�n�o=)�p)t�4ĕ���BW�OC\]�+@OA��qtp�"�

LދMR�%��s�I���-S0]h���B�N��L��	XS���N©PDϒp
#%�#%��^����0O0Z[�8����1Z�|I��K�s�Y�����Qbk+$�w�Z�Q���֦B����P4!�>
'�ݧB��T(��w�
E�12�L�)������ӊ��B�k��y����y�V9�4�i��0�k�%8�-`�贶B��bL�%$ާB�<}��S��	UթP8�S�x�)�B�RL�"if��i���0�W-��g��h�q�	���L��3�������Y�~�)`��k
���T8[�׌T$�w��T(�n�*�������欢p�ak)V�ZݧBE��"�N+⪨�ޗ�YEw��DW�S.�� �,\]�Y�W�����S`B F+�r�
<.q5t�8��z�*$��83�%&�bS0#�l������	� S�x�Sf�5Г�Z��(��6���Vg�l�:��V��2Z�3�D��'�-`���Z7Pg�P.�f	�%���VH��5���LZ})    �Z[�h�#���(��h�����:�5Qg�#��hL�2Z�(�,c�쳌q��2��o���o�f��ާ�QRF+��=�kb4I�k�K�h��`��0EW�)(��:LA�n��P@��o*Q���
FJ�)e�R`���J�����)`���}
'߰��4��: "�$��"�<N����sZ[!QbhE�K�)*�X2LI�ĒaJ
'�SR<1����N+%Ej�S�]%ANkOZ	;��8LZ	;��ueM�x&l������]LZ	�䮠��@�!a��D��=N�Ey*$Ɉ�X���
����h���
����x��*
�������O��&Y��&���@�hm󄾬���	}Y�)L��7*�	}YKP�%�-`���Z�*�d���$Q�X��0U�/>�扬�P8�MS�x����F+5E�Vj���Ԙ(���1Z����/��I���&USc���J�QR>+5&I���$��ut	���P:��K糺��|VW8��ꊧ�Y]�cA�B=��u�vF�>k0R�Y����ԷfM���YS�8}��0��Γj0Lߚ5̒Z��`���p�e��4���L�;$S41�L�ļC2����P,J'SDWh�p�}C�k�#�����8NY�i�
 E�=CW ��q�����q���;+f�1t����x�ƫ7o�Q ��A�(��P1�rT1�rT 1���"���KLe�hB��T0Oo�rd���}�3N��/�8�_��4�_��0�b������0I�{__21H�W[!AF�;Jt�9)���sR4�mrS�p�c0g��9+���Y�ާ��^���urf��������ˌ��%���|QFJ�L#�:X.���`�0R����Haw�(��T�E��r.�'��sQ<a�����#Mh��E��{�*��F�:��8�����A��ʕAR+WIy�\$Use�T1̕AR+WI��$Ws�$aM��b�k��L��hb�07���)��|�M�5an���}) i��)�z�2��� �f���@"+�Z�
�ĥ��-�+�+�[BW��
M��2�
�1�S0(H��.QB�r�%v*�`��XS�hb"+�Yy(��F��P@�7+E��y0R�Y��R"+J��l�*�[�8��)`����a&�,c��h���(�b�L�6N�$�JS,��lS,�Y��6V��X�Ɗ˓�K�`�g(A�D�P�����q>ϰ�&�|�a�3JJb��()�U"��$V����X%2JJb��$)�U"�/���(9��_�	�V�B��M�S�`¦թP4a�j*I��DCI�'&JR@���$&�-VI�,VIv���<!����,VIL�,VI���Jf�� �)`�`���Ir��dI��%+��,Y��;%+��c�d�Nz�
���JV@qwa)�(�݋;=�?�簊;<�cd��� ����p�,���#�)��p/�U��	g�ì�NN8�M��ܹ	S@�Q�P��T�Wϥ*���*U��<V���W��_C�|GEN���%�?�yzwU�$wU�$wUä4Vi��X�1KJc��()�U��4ViL��0ItW[!IBkC�%��JW0�P��P4�|�N7_u�^z2
(.	KWD�|��/��D�LX:�~�2�'�c��8))SӤ�L��2e0�c���x0�c�Τ:�$�	ː$#~��E�P01AZL��a1�W��O\S@��PD�i�#%�eL�=�1PJcc���*�8�����?�a
�?�a
���Xߏ^�$�U�d�U�$Q�Xbdՠ`bdՠhbdՠp��F�=V�
(6�Ԩ�b�L��Pk�:�/0*��� �2�CW K��ˡ+ �^q5t�8���xV\]<+.��`� 
Tu*.�(���$QFT(��Y�&�5)����~��pb�&��5)��0�Y�ra͌����(��(���'��'���&��&���%��%�0��I�Q�H�8i��fjQ0�m�E^L1
'>kQ<�ӯ�MZEu�Va��h��D�h��@}?V�����}X�0�|k_�Y>��Ǚ�qY�| �|��O����	L6n�������)���P�����I\֦X�Q�S�h�٪)��ƪ�yR+Vm�Z�jc��jg�ԊU;����<�0M(.�aR+V�̒Z�jg�X*\(�D��UW,���
��XC�tk(��Z���P<���wSԡ�b=����o��cUW:�x����`d���`d���`d���`d���t�B���,��*B�Z,�$�b�b�,�)��b�����j
'��[P<�b�����H�R(�X�i��z��%��%���$���C��iR���I���%X�-`����&�-Y-J��qhQ�D�բ���EE-V�
'Z�O�8���bơ%E3-1Ro�Zb�d�Zb���j�yR.�%��<֦��&䲶�aB�p�%5��(!���df��#+K��%�<Ӳ�	��N���OÖN|��x�ӰetE���iYusVf�>��
}>k�3O�C+L��ph�aR�{+̒2Y�0JpY�Sa�T-l�AR&��.k��Er�cgZU$�!�U��ZU4�!�U��ZU<�!�U��X})Q<߯��B���jn����r��8ĕ�&t����n����jŝ�%t`���%t`���&txo�mBG`(h
��[�q�j
����B��]��-:�+�؛ܺ�馫��bor�h�;�3R�X�����֙'5���8��u�I�Xm0��ί>��qX�wL����AR+V̑[�ڐ#*Il�iC����N����j(�.�L�tqe�'�C`*Q̎6c�d�����2�˘g��2�I�X͘&�c5c�ԏ���~�%�c��$3EV�dD�b�;�zP0���L���A�����3�/��/�h���=*��zd��]��8���&��&tc�%`���0K�bm���*�[�(��GFI�=1I�n�$	��'���V(��:��P4�_��p���I�DՓ��=)�������;��������q��:"w0au<C�
`E���+�\C�� �{�䮠��t!0�)�B��\C/�%�G{Q01?ڋ��+�^N�5��xb����{QD1?�#��&�-V/��%��xe���Z�W&䰶�YBk%䰶�IBk$Y�^��X'���qUI�a��X�u�M�<��=����O<z�7;�{SDݳ�1Ro�zc���Uc���7���g��_���$}��w����g��\�qf���g�T"�]�]�a�!�{W�Dػ�%�>I�uهb����P4Ѳ��<�[�I]X}0O���<�B���UL�rW}0L�]uc�����()wՍIrV7I:ݻ)����M��N�n�&�z*N�L�t��P�V#(��9:p�}�ԅ5pt������~���o�� ��o�����o���������M���j����-�#J�⾄b��Ո
"�GTa8��{�FT�%:#*�_����
�y�V0�Dᔘf�pJ3�pJ̒,�H��,�H��%��'0�����$�Q��$�Q�� ��j����#+��Y��G�=8���H���@bDeE�
#+�h�Ff�dFf��Q1�L�
���Fa��Fa��)|��Q'6�`��L����R0P8�aOx���x��mų��Ψ�燢/������͎WP0�&3�bi(`��R�� �R�� �R�� �R�� �R�� �R�� �R�� ����
���Fc�h��B���P,�n3���e���c�V\6�7㌮xbc��
(n]u�
?���ħ�.~�8F.~� #?W���k�+�g .}���G�@Za���
p��u��C�=�S@�$	/�C�t�5LL+��hb�f�+7c(�X�C�v�a�(���1R���D}�j���aL��8��z����QR�j��l�0��f�_�1>k������a��v����ʂ��ʂ��ʂ��ʂ��Q-(��1}˪[`����[Xd�\޲�0���L����8����S�'{+����E&z��    �����-2S�V[��B�ܒ"
�sK
hy�̒�	�8K
g{�͒��������	Ӑ%��P�(����s�~��$��:���$���$�d�L�Nf��$�d�L��U��$�,3I,Q~/5��P,1�nY��G�E�VN|1��+6VP�����{�-����r�\�K���䍯R���3|����2|����2|���C��U�W [%_�z�6|i�
��[%�J����P���
�}�?E�t�UN�V�O|-�5K��Q|-�5F꽕5&J��(5�[c��ne�qR���${e�a����,)ue�QR��:��b�uIփ�Kt���Y���Y�k(�.��≮ݺ�)�(���`��6�_m0R��oLl�0P��;0OHɬd0N�[�4��j&ۆ�,�6�Ć���(#*K7i����f�&_k�p��2�Ӆ�)�.�L��k��Kb����h����u��q��;ڧ�a��0K�F��f�&��N�<.ks��HU���#(�"	}1S�XB\M��	}1S�p��S�xB
k*PHaM�"�����s�J.�����8�.��8����8���� �
�AW�^0Y:�����wsMA���uУP!9F�ͤH�{�
��{Yф�]S�p��ʊ�������ʊ虯�5i�q���7YS�@�ɚ��wN��3�P�fz��`�	&k�%��-`�`���IbS�VH��%<	�B����B�<O�}�:�r��'��B�>�hD���fY�����9�<]��g��V�U��[ڧ�Y���)`���=��$}K�0H��>��:�}��TH�����P$߁}S�PF`�˗��:ڧB����S(��t�>�+�_Lm��Y�)`��\�)`�/��?�Q�
�g���}�3�g��8s|�j�3�c��_��`���Z���jp*FXN����C��<�T(����
E��k(�`٧B���T`2���e�V�
t���@G A�@g����8�+��]��w��A��U��`���W:����[!�@�w��VH��)bP ��Z�3E��O�X~a�)����)O��bP@�����(�_^��#��*&J�*J�*F�I�*F�I�*F�I�*F�I�*Ff����G0JpV[�$�Ym�$Q�X�Z0Fׂ1)���I�Dg��"kg˧B�ѩPDѳ��H}�0�kN�$FJe©`�T&�
FzM�	��H))3�˄if����
F�I��)�ԗ	�@��Ɋ(FOV@˳�1+�;Y�l�E��{�(���{�0J2X�0I2X�0I߃5L��`M��V,L�x�/���e�+��e�)`��L8L�X�J�tU��DC�
&��XMtY�*�稏ų*�P��
]Vl�(���D���x��8�'"���E�?��y���=��8���OC(�]V�!�9�}
L�9}9�����cL���
cD�]q<9�]��3��B��]]S�hWS�pWS�xB+�T0P�X����̓=�`��D8�ӗ��i��0L_"�f�K�S�(}�p
�$�0�d�)��~S0#�4Eު7
��,S<]d�
G@N�"
�������2F�ܧ���&����L
��^k:H�y���̓�2)0OJˤ�8)-�����K�SP,!nRP,�.LQ���0E�����2�$�L�
���A��J�A�&�)`�ஶ�IBy0/��� 1I߄5L��UJL��UJL��UJL����B��d{J�%l�
6N��	���
�:�sʊ'�nb*P\���B��T ҵ�ۻ����8ނ�1�
��}AW Ɇ�ۂ� �	�]Fn�����p[��-�����nb
��t�yM��7iQ(�9��b���TLؽ4�f��(�p�T(��>��Wm{�L�;�T(9�T(9�T�'9�T'd���Y���>�]�a��J�Y��J�Q��J�I��JM���P,]d5�EVS4]d5��EVS<a�T(���~*��R�)`���>�OF�Xg���uF�Xg���uF�Xg���uF�Y��`���Z�:%��P���(�S�P4q�
&N�C�|�/��rXi(��y\�1��A>��@�[��1G_#L�}�0S�5�d���1C�&c�T#L�1{����5�"��)����A��6�KL��hb3C�'f�sPD��!���v}y�q	t��Z/�莿�ʸ���̐qt0e\],p2���������g\],p2����
�1�B��CۧB����B�tqNWI�tq�PWIuq���W91Q�W91P�W91O�W91N�W91�c���N��5���3W{�9o�M�93F�V�Bb��P �G&g�19+��#����N���N�"���?B��TL.̒�V�0KJ[��(�2�PFɞ*fɞ*�ɞ*������q��}��5*=���U��L�
(�drU@�gU�g�
gÏP4ߡS�`�2/W��P�(}_{n��0�oŐ���Un
�k2mRW[� !u�g�߁AR�*7ɩ��$IH]�Xb�*wSW�+����]�<���=O��
�{vE�=qSP�ƅ��[��8F���W̸莣���@W�O@�t�`ȸ�
:^�d�2n��_`���ہ�X�ϔ�P WX���$�_eS,?g�>�K|�by���
&���)�X��8��:���3V�k2Mw0�g���ʘ%�K`��{���QB�je�AU����0H�Zm�	�%JP$����{�JP4�����K��x�~���ƒ��DE�wM#�U�̔�V%2�k����Df��F,�����̔k�%2S�X� /��B�j�(�����V�4)��F(I�,BI
gym4%)�P�*I�l��%��JR(DgV(�=�Kf��`�� �������Z��i�`Ɍ���Jf��q�d�HKf�`��w`���*�1r��o��Hbָ�[dJQ4�E���LX+���	R�Bž�RQ,�w8�o���Wŝ�p��^w6�<{U��g��p�$tG#���;�:^�	��
,�� ���X��	��U������I\9��P�ʹ4WΥ)��Ӧpb�Li�'KS@]\5&�3W�1P�\��<)sU:����'����4��j�Xg^�̒6��(i�`�L�7�.IFT(��s��N��e(��b�^
7������f���:�5�?�!��H)'S=����`��OT�~�b��X��0�	��[�0�e8�����ߘ$���I�p��	-j�HH�S !)ZL�č�5(��BkP$��֠HBV�&I�W50Jjk��QR[{��UZF	�*/��ƫ�W�dU#��ƫ-`�`���I^{���5J���^�b�m�5*�X�Q��N�
'pjT<���S�����sM�(�~~* i�4������������������㿟�{�W\�\��~� �
W?W }W?W0P`B Yъ��G)�Brĸʊ$�jV,1�P��	��L�[�jV<�!X����Q�W53Ro�ja���Ua�>U�|e�=�,_�j�3�g��8s�E�Z���7��!>c�	�!Wk��*X��U�ZFx ֪8��j�"���V�{��&v�תxbG{����>�٪��2N Cm�d��aB�����aS�ec��Uc��̵��K��q�H��6��DS?��/�(bDu�,U�
#��kW1�^���N�%IL���,}��vfI�ڙ%[��(i�`팒2Vu0J�X��()cU�K�L,�0I�Xm�$Q�Xb�U
&��7�&f��P8q�M5�w
VS@ݣ�Qxa�T8���RY���*���&���g]�W}B ��j&��j!�@A���k!)Fo�jAB��������@��J�L�M|���p�ӯE�3�b�Ez����(��g0���o(uZ��<�$�"㤭�-2�㪾���ҷZ��$�ժ%ɦ�%	��@mI���BK
�
��V��P$Oqk+�S��
�򛫾�D����S(�_X}��@�1��@)�2�L�����EEf��n�2����A��f�3�    |f
y�O�@� �-P<�A׊�	y�V�w^�(���
�wn���M�[�`~�����w�XF��U+��U+��U��V�2H�)���U�V�Ǭ��
��U�V��$�تb��U�t¦h�aS8݃�)��ZS@�]���bb�a��:�]5l����$԰�
�spω�w&^쀻��� ��v�_n�a������ow����v�ƋB=�K�T]atA�ǈ��+�n^��
��k��;Bm�\C�����5�ϲ/`���dU�j�m0O���8���o�ڭ֍1�%��1J�6c��]}��fk�[!IFT(�'�����3[m��	/��
�����P<q_s3�5����QW=0R��&J��z`����I��'�{`�t�@��0Kh��F�K�=2H��=J� 2*�`C{T !oգ	y�H�[��@����R(��A{T(q%�#��֪'fI֪'fI��=1KH\m�<��3�=1K�d�YR'{O�6	�;+1J�V[�$1q��$LV=+���
&v���h��B��ɪg�'��г�d_C=�������'q�]���[�u��q��\�����Z��8�_��팷�����p�rmoG���z;CAS�*$ň
��U/�$n�U�ă�zU4�ث≕�^P4�*�h�{e��\��D�\��@�\��<)q�+�-��1MH\mä^�ޘ%����(_�j��$���$I���X��j
&���Mt��)��|�~Үp�F��Nx1�T(��b�`��:�bW�43��@3߈��f�;�|#v��55&��a+)&����B�jQضՇ"�Ϻ��x\��W}(����Cф�U
&�5�M�40JrX� �a�d�e��
vc����I�V�$u[uc��mՍA����#0HvX#H��%:�LtX#(��Wp���A���7#(��m5�"zނ���V��m5�t�!���� ���@WPn�~`�W�E�������oNX�heX�ȉ,=H#��GR ���I��GR(qfI�ę}$�g��P��GRDqf��z�5��V#1��>c=2�$�52Ӥ����v��,�a��(���:3Ihe�y�	�,Ab`e�[FV0�;tE�CGQ8�;t��6���»Q�B���Q�O_��D)}5
���(̓�W�0Nj��i�p�Ce����YR�jTF	�a�d~��@U	��
%z�QK�〉`��B��>����W�)��{5��y�������'��'�ј&��Fc��`R�Y���FY(�:�,V�I�n�љ$�]�����+�n��
������&��p�	�+��.��Px�zC���UPL���1X�W�E��]��'��AO����'��%�4��.�AO����'�ЂE���2�C�KZ�`��2Eә,S8��2��X�P�cSD1�5��R�F�\�'`��Ȳ�@�Jh�yҎA��ج{�	U�}��ۿ+0KJdY`�`������-*�P̱�HbO�E��XK<�ɢ���bZT4��
'�a�yR�"�̌�y�uX��(Z��`�܃e��r�%&��aWb��;���f敘(���@}�O���x�'��p"��hB�޲�	{�,+��elY���p���7Y��#�,�̑Z�,3�$5�[a�Ԃe�AR��I�V$�`Ya���nE���P,�煢(��,������f��x��*�x�UEM���P�#>on9to'�����Bsk�3�
��VBg�%�̭��x���$��U��$�AG`�ntaT5IN&��0�Ak
$���P�yk
&Zwk
'��)��k���b��:#�I,�L���(۫�<�^u�IMX֙&�	�3L�bYg�T'��(!���I&��!Ibd��E�P0�M�6M̺�P81�nC�ľ
�q��*����H}ˌ���M7�<��A3�I�&�`�1Kj�2c���2c��VP��W�3ǕI��9XBP$!�>�%$��Bф�2N��	+©P<O�a�
�XS���sp*�sXs����9�<�U	�iWS�0_k_�Q>{���sW{�1�����`��\}���SH�
�T�B����JH
%77�%77��;�c
�w��(�)�.���%�s����]qW�%���	�3p
L�3�쉻��o��(�0�)HB�*9S���K1�+�)ු$#~�b	���P0�]M��y檺
'<K(�癫֧J�S���M��S��^M#�٫)`��B�0P_$��鋄S�8���)`�n�`	�Y���s�IB����� ��:�[%H|VE�=�B��U��J�T(�iVE��MC����)� �����0P����Iɫ��\�qB�����ç`���S0Np��y^ǰ_S_Bg�ω~��{��
��x~���ςWP8wRf�]�l�wvE�̮`(��:�<��ܨ�IB�j���IB�p�L�W[�$}�0�c��w`�>{5L���G0I�^m����VH��XWS�`Bg*M(N��	y��P<�ī�P@O��-�"
��
|5Я[�g��`��^�q�϶G�t���G�R�#xi�)HB���S��ॏ���KOA��>���0TH���	��P,�bŨhBk*N�OH`M�
	��PD�Yf*�K`�q&z���#����0N_,11M_����S�,!���ҷaM��6���$�cŤXB�y*L��bR4��<
'&bV<��o*P4�1+�'5�?��fY���6�)`��k
��/yM��)�)`�>�5ӧ�J,��m�ca��4�q�H^4�\E,
$4aM�"	�'�B��:�T(��	k
˷b
Kp�*��i��a��U���be�>w+���U�����9���0FrW�2�����b��b��j"Pl�b�Ma���)�oW�(�oW�(�LMq<Ͼ�[5��S(ïD�W>w���0Q �q�s��".|� �x>W��#�t�B���.���8ݷ�L��s�P(����P,#N�C�ts�P41���	��P<�;f*PX����Ե��q��<�7�y,�	Lc��R�0�稾0�DQe2QTsLU�E�I���F��DS 1�RP(1�RP,1�RP41�RP81�RP<1�R`����L�BZ
F�V!/3�R�V0S�;XRd�\�J��r�+Efʥ��)��Rd��t�
)҈�(
(�cRT<
���G$E�퉛󕒧@�40J�Rb��W����J�1��J�1B�j�ol/)1F��^Rf���}
�ol��H��S!9��IL���Xb�=eE���
��Ͱ���馬��B�UIEu7�{1��,qo��{/����{Q� Vr�E=�r�^ɽ��W�3�;Q���_م��9��Q0!��7�w�C�� ����
%SU,1k����Y�TN�Z��xb�*Us�*��[H��Ra05F
}W�hc���J��R�*5�y<ֹ���`jL����aB�j�%����Q��S!QFPt��{�
��Y]���]�F�&�SW4a��T(�n��'�S4���L���L��L��L��L����h�
f��V������4�[q��4i(�_rj�Z��)���N� 'S4q�7gyS,B�%�,c�d��9��2�xLV�5�d��%���4��L�'`��d}��L�'`��{�c�ޫ$�{�(��,�A��WN���+E�-9*�g���GT<q��QE��aTƯ��7NA��3��� &���'�����'p(�@Z4�*�	����a��Ut
�|X��
�2�B�ĩ='���M��sR8qj�I�ĩ='k�9+�X̙���ʙ�R�U�L�گrf��~�3����I2�LZ�iRq0g�I����%sa�\�E���d.�%�\L4�(�h�sQ8���x���EEא�"
��S�H}q0W&���8�t��s�i���g��1�q&��2{�9>��Ǚ�+�Xe��L�+3'�?B"�۳)�h�sS�[�B�<mj+��B	o(�)��M    m+�o���M=G�m��*7�N�[K���X���ʃ�;v�	i�-`����f��ۿ��(���)`��up*$I���b��W�+��n�����,�P8���'�@a*P�#硈�0�w�Nf�i���t�a�r�	:�0Y���q���;��8$��{E���ͺ�{A��x�$�h���@G`((�Q@���l��sW�H:we��sW�h��*A�DwU�zN���PD�h��`��HX�E���/��4a�`\��X�����%0I*�� ߱k�/�9B�p#�>��Q�@~��ף�D��l��
�l��
E�<�B�<���P@O��R$E�4���L���Jb��Jb��Jb���^���0Pp[�<1{������V0O:����<��S�p"��p�k(Y��P��	��d\C�
&�KV0����X
�wW�0H��*�9��U)��5��q��ja.L�*��0E����BX
S�
a)L�+��H�pU��n�RJ8r*L|��p��`U<�|��P@�|��PD�CE����U�C�8��p�!��L�;�A<�
 �P�L�+��B�#� RWOD��+<�
0��<�G	�I��E+ϥ)�Xy.]��^�+�yv�-{�
�1W�SQ7�wFJ���)Kg�T ,��R��t��f����UL3Qh�yֽ�<�^�QB�j�AC��[t(��.Z�"	��e(�h�"�f�Ih-�HB�q1Ez��1I�U�$i�`1&ɛ�1J�U�(�V��p���`��~1Sü�jì�a^[�e�j`��epͷ]�3��G
f�(���B	Ůʎ�"	ŮHC���52��>s��U�6n�����$����$���F&	�j�$�jb��X}V�&�6֤XbΪ&�5)�h�jR8�X�B��{M
(�njRD�vS�k�~Ko��{I�����wF�{E��C��x��A�/�^�ˁ�x�;ؽ� �P��
�����/��#l~�E�����E�d�B��W�N���I�ZNL�ע����V(�߉�ya�>iUMV��RE�V�I�Z'�P+�|y��+�|i�=�$�y�2G:��V��MW�J�
$�`jU$��6���jS(�WզPb�6�0�)�h�kc�d�jc�d�jc�����	W[�4��:Gg��p����̓��kg���^;���NȢ׮pBi�v��6�+����a(����C���M�%���(}ʪ�SVu0G����1��UL�RVu0EJY��)eU�)RʪS��U5��)�j#�U�@bʪ�B���j
&�VM�<M���'�;
(��ZPD1e����w<�wVͭ}����>g�6ͭ}��-m�[���
_���Ѕ V6�-}�`��� V6�-}.��
�1�B��#�ZT(���r4-*��}a��Q�ĺM����Ƿj.-*��m���(�/��H��j����j����j�y��j�qR�UKL�V-1L�h�f	�V[�(��j�$l�7h�$a)زb��V-+��kղ�yr��SṈ��x����O�P�W-+�h�Zf�d�Zf�d�Zf���j��bG�V0Q4X�-L�V0Q4X�ha�h�������
&
kP����~k_A-p��xB�^�
g{)�V��V��k{��X~FI�V�$�\��2�c��JV�L�W[�$a��4&yL���IR��5&I�֘�1Y'��D����r�n����Lx��T(�p��T(�x�c�'��غ��1�+���P�m䥮��%�+��q�
�����+��!V�� �{+@W��#L��7� ]��X��wd�$
��ڐ(#*K,��`�oC��n�6N7���M�Cuӻ)�g��Bj����1Q�wՌy���0�w:þ ���/�,i�`3F	-틤1I�Y� �f���U�#t���Hbƽ�3�=(��q�A�D�Ճ≭=(�W=(��Kt�`�d�zd��x�##E��>$2�L7b��4Ӎ�##e��##���O�H9��##�DV���Y=*����I��I
��G$�Q$��<=)���`"��X⽘��Y�:�'&�2Y��I>��B33H���9R*�g��\־ c|&k�3���8C|y�=��|Y2ě/+��;�pESV�lUǳ(\�eQ$��WJw�dzQ8��j���">���c3ۻ?!��������"<�j��3�{�ǣ����!<�j�g1��B}�H�PU1t�yU���W��=���M�t���`��_S8ѱ��@��ꍁz[��$[���UoL�����,���$}]�w��낽3E����.ػ�m|�+���{W �E芤�]�t�TW0qss�
'���P@1u�#���`�������4�m8�)����L��j_��f�3��U̔�Wݘ�1U狚B���Q|ș
9�n�g��p��2EM�)�h�L�DSe��WG`��]pI�W#0Hj��AB�j�wU#0G�F`��U�����!^W��$E�⌨8���7����GhzQq���7��/JQ��J8�CKlzx��?��x�ǈ£� #
����(<
�
��3�(�+���<
�
 e5�,�+�������<�q
��$�#)�X�I�Ă��
&��8���#+���1��^}d����;����qV�Gό�Z�Gf���>2ӤV�Q&UGa�T�Q����Sa���}a(���H���GQ$��j�҅UQ,]X�H��h�pT��/�*����R�jT&Ju�Q�(�]��@��jT�I��2N�'8*��}��1M�'8��t6�y\ս�b���K���X���K���X�=�K��b�����+���� �Tu��[�Fg���jt���T�3���83<��[d����jtfHW�3C��!b/������1G̬��Hb�j�Sc(��ZC��5�
��e/K���i�V=�N>Ft��獣�5���k�'���<O�7�y� o>X�<�|��y��a�����8TH��s��Xb~�����e�&��-(��_��xb-Ђ��e�(��-0Ro�,0Qj���@���"󤬕E�I���&U-2L�V[�,���2W�׈L���%I���X�Ȋ
&f�,)�����p��J�'�+K
(zvK�(f�,1R2W�)�+KL���,1Qn���D���2�b�e&��@�L43��D�`Yf��`���iY��J\[�x�&ˊg�+(�p>�eE�k�]W(
��X���@�Bi(`��aYa��aYa��q����)ke�9R��
s��v+̑L�U�H&�*s$�e�9r[�U	R�VJ7aU�MXU�tVU8�XOwVW��Q\�����$�.�;��Mpw�Yw��;^��W1%f��+�����+�����+�Vv�]��ٰ��A��`��9�HV]�ta�LV]��z�u���u��uEz��H�a&�k0PvX�y�uP�	�V��L�0LpX[�,!y����sl0I�ڐ$��e�Xb��L�t��ML_�)��5S<��f��w��~̙z���1Q6X�D�`�٫��~�`*�'��T0O�W��y����X���B]�S0P8�aϝE�0�g�@�|�aQ�|��(��>��݇S�X(��&���g��,8�ї��Az�5��/,s|�j�3�c��7H��ث��R�1����1�yS!9�B�T(�߱|��T(���b	���P0�U85d�^�3
($��B}�)�t�zYs�a�E�;Sր�x~�9ր�x���x��bb
@wc
@W�,�D!0$�(�BB��rQqF/
��ы����%�(�B	��P0]<UE�2�c����k�����)`�>s5�o�f鋂S�,}Qp
��/
N�LU�I^_��l�$ܚM��8�7�2"˦X���
\�T(��UM���θ�EZ��qzSUCg���>�\է`��qu�Wg��qu�i��`��o��D��j+)��o�"�ޏ6P�؇�	�P0a6
��>���>
�@��h(`�~��0E�Op
�"��%0��j�#d���AB�j���'8    L���&ɶʘ�[e�ۜZ�)���y*L��\cP4�=S�p�{$�B�<���
�I�k(��yD�5�`���ֽ���w�a��w��}�1^�&��� wX� +b�d!0�	+F	+F�+F��VT4]`E��VR<����P@�%S����J�4��JLԵ��q����g��]�qf�7	N�<��|Ay������9���'`�/g�R13E�Y}
I�ۺ��*+�p|�T(�p|�T(�p��T(�+�ڿ���Γ��
�da��(����w����������0QJZ��@��}������������������������������f���V�g��p��^M�����U�
�[6Ǫ@v��
�q�`��lUl�U�8t�Vs��ϧ1���4��SU�1���4�W<�����Ә_���I���\cW����+�g��
���
�W�Y_�+��U�]�t7\W4�So��h/�>��.L����:�$�A$���V���,�����
�>�S�=��/H �K!�9��Rx���?ǓG�"�# �"�3s*<g�T�w�8̩�|�`Nu	)vEc��F���P�*>�t�i(����)P(!���b��4�&�Q�i���0M�S��0c�o
����^!?�2vXM������qv�q�Ô�c���S )ʏ�S*?
$N��(�8��P�c��b��AN
&�S9)����@ɏʉ����`��H�W�DqW�eG*'&ʎT�L����(;R93QJS嬀޽�S��.Oj��
(d`rV<!���	�rΊ��L�sQ,�IMS�(�C����_.���Ǚs�U.�1zT�0��Q���G�3�U.�0zT٘ yT�$A@h
!D0�»id
ûid
D��dS��eS��eS��|~�413���3�3)l�9\���#�M|� �������>G �/��9�`�s��s��aχ�A��@�J8(t*K8(t*�]���P4O'�R(��Gq5�gUS<qV5�Iu�ܘ'�S�2θ�fg��O�k�3L�X_fySS����S�I:���Tv&�i^9��<�\��6�N�B��+��Pu���P�B�J�rW,�{�L(&��0ٛ���~�3L����4��;��T��;5(�|��`��N-Ewj)�(�SK��fx��"zwgM�zO���ݩ�p����_/��y=��(��Ȼp
�c����ɗ*S�V��0��Lm�a�T�+S��_y�"U�Jb��LU^s��T<NYX�3I�࿗�X��W����LI�&6S��pBS�T(��T<
(l۪%+��mk*.�_�K%ߪ@�s���] ڹ�w�.��q(�v� ֡���gU ع�+t!�(B�퇯b�tW�R$EX�KQ�蜩P$���MJ0��(�`KQ(�W/E������ReLRc���W�I�j����ms�9��?-�o�j������>�0G𩖀9r���	mƥ*��W_
�}�*�𹤩P8��T���KU@��TE�ԧ���gU*#�<U�L��T�1Q�S��DѱZ
&�9V�|4&ʎUiL��Ҙ(;V�1Qr�JS@�g�4}���B�\\�ĵ�N\�]Ѽ��@�D�X0Jj�*�$o�o�$;W�$ٹr&��Ug��\u&��Ug��RU:�<��q&:�č�K!Q&T(���R����/�+���R��y���9��������PDᴅ�#-�sO:���U<��2;W�óָ�q( �x́�?�U<��2�V9�̾��3,�oe���ʹ��x��N��� �B��}�S�X��n���.�=
'�*{Ot�-)��[b�����H)qe��R���ĕ%�I�+K�3n��7N�<NV;?�YRúeFI�B�L�P,1��`b6Ʋ����
'fc,+�Xܲ��b�ʲ"�M��uޗ�0�{t�g���
ӌMBV�%�k{Ba��0Xa�P�Z	�0�BӪ0��ӪH��b�V,S(�l�j�`��0S�p��P<aC�T(�苚)�苚1Ҙ�2c���ʌy��*�L3V�2�X	��$c%�*s<�Վ9�2��\��*S���7������
	q�W�W�0��p)�S�i?ES(O@�
�	�B�<�R(��+o�6E�l�]
p6�/P�Εa �C�g }�[_6��q�U�|�0�0���aVa��;�}�C�}>�T�\D�R���+�+�a�r�qO�}E2@W,��&F��ϰRuE4�T�����u&J=V�(�XYg���:����3�i�%u��`�T�� �"h�9rEІ�x+�6H��P q�E[Am(�Xg��`�R�3b(������'ԇ�R�>�rW�a������U}�(���D�_���UyL���`��/���D!w�
菆oI�װ&���֤p��դh��/�˻�פHvW�3��S���OU3#�>U�L0�T53��S�� �OU3�jf���Z&{ ��b�j)$D0�(�x�B-
$��(�h�jQ0��բp���E=	���)�(|�m*p��+�ǧ:�>��9���9>�8̪���ì
�z�8̪���ì
{z�8�uaK���.l�9��օ�< X�M��L5�3
�İ�W�1,�U��dU�
�Q�*L��W��	�VM�4�*�qFUw���8��Zf�3�1��N�=^�1IHT-����0GJT��9QU�ĈUS�O�M�D?�6�2,TMф����P��p��8TK��&��3Qv���r�Uu&�yT�p
]VK�<!���,�%\�`��~y�q~��A�'xS[�8�7��&l˪]ф]Y�+�P��]���|�
&�kW,�b��b	9�:%�T�AR�U�
�u0H*�� �WuV�� ��
�K� o�j?����� ѯZ
I2�B�<My
&�>��9��^����(�X�i��M{Q���T෠鐘�jx��7~���ǹ}�w)jx��7n��E�W����ׯbr
�r��Shx��'���r���#�%	q���&Ya�H������3��=Jt�[V0�TӲ¹��X��pB�Uˌ3�Zf��ͪef��V�d��Za�t�B+2���
c�^�g�q`+�0�l�	�>�V$A@XB�P���d2��)�	1�a_3���ʳ<��0Lr��1M�O5c�t�B3�Y�,�2MHN-�����z��4!7�L���`��M-��	;hZU0aM�
�=^}
�
aU0�Φ`�瘶�X���Ix�s��TkL�\�֘�q����+�����Z`��I-CO�8C�Us�x�~�3:S���%Fc�+��Mh�Hb~��B����%�z�X�ޚ�
&���`�Ƀ@'�>�H.D9�0N(r�q� 1�7�y����x�����7�C|�CkF���G����}���/!M� B���^w{��!a]A@�� M���9�6FLI�!8bF�='���׎���_+�O�;l����0�I����v�~�Կ�0��i�aA������ȟ.�<�F���ȓ����'�/���I Ě�'�0A&��`x���
ēR��@P��O���%O]��KC��b��H {NB �_�Y��sp,=��_�
A���&���س� ��NW���/�"�R���J�"�
���!�4^���0�H^��a�$����E����C����w�X�������������������&��f
�3��7���������^>�N���x1�'Z��|y��O�'V	��Z������	U� �~B� �� ?�J��O��d��T� m�	U�`�{pb�H��KH�	��H�|�3o�e*�$73,�M�L�ܦx���P@�qWD缺�3R򑜉�8��y�=���3��M�5�,c�ΝIf�U� �f���SrƘiVu��5;�"Ϊ�8��껆"�
̻�X�Y��0���fUW@��1��U���46��`�%Ϊ�<K�U�i�8��,qV&YhVI��|0Gڌ�1�=�v���������bZn���QϬZ
E��*{�%�r�Q4ϬZ
��U�A��kU    Q\���H��&j{V��~�}�j	�h{b�ǓZF�'�iqb��,)����LSOL����s$��'�1}o_O��UK�8��~��8B��g�qO�%P ��WԞ�t�Y�Y�<j]⢴��L�q��{4!�wY�م gT�B`w!�yd�zy� �0{IB���,P�X�^L�؋D���%�U�(�g�Z?Uф�oO���*S<�\
4A8�M=S��
F��nL4�Uݘg���1��Wuc�ѯ��$�_�_c�ǭ:���ɭ�)�[�+Cd��W	'UUä�
d�TU���U�*��V��p��j�E��)�aR5Fݪޘht�zc�ǭ:8�~�0M������%՘%��[Fy<��Z5&Yhb9��]{�%H�X�P���]�D�����zw�3L,W<�_ﮀ���wb�	<��D-N��<�c�ƙ����8��
^���UgRt&�~Ug��Wu�h4�:c���%F�VC��j(�	]��`b�f
�VK�x�i�
hB�C=��;� ��1i�!��0�  ��wZ��x�Ƴ�Fp@�s����8l��\̩A�95�0��
�Q�,�Bq� p$E�I�|��v�FR4ѱI�<sj)QL-��H�c5=��Gb�׳��y]�-`�p"�+�L�:W[�0)i52�$�jdFI���L����%Ʉ�P,ѻY��T�Ȋ&��N4��(��]�����U�c���F�j&��Q�gLZ��4�sup�I��(̒��Q%9WØ$���1Hp���9�s��c�k(��
.�b�^�0E;��)�g^-��yV��P@ϼzU=�j)it�Fe�����R�jT�Ii�Q' Ge��_��0ɿ�Y�5*�$�j4&��Wg�4IgVS,��j
fX���V��p��)�趏����>�"�	с��;Z#�W�?�8�XX���a����7��q�9;���	����?�88XX���;���`M�-�
њT���͆�� #�ޣ+�	��@�)��0��b�TW4Ô�g�R���{ՙg�[��8�wu`����`��]�y��c��j	%xWK�$��Z��Z��� �x3�By&ֺ��y֪�hϣh+X_��y&�R(��x��T��L�"
��T0��]�q&z��e���^�j�gL^M�.��$�y��z3�WS�,�U6��(K�YS�$ѿZ
I2�5K�YS�`�%�I�<3��
��̬W�ϳd-�z���PDߙ���fFjqfe&j4�2=�U�`�ǽZVh
��u���a޲��V�)�n�[7(��:W[�!y�c�k(�۹�
Er/X[�X�i�~�by+�S�X��j�C�LOa�綃�M���OqNa���!����{��U�Wob�֙����+���.�;�`��q �.��^�J�	���_5
b�%�*�	���@��)�%�*��WM�b�pٯ�&dا�y�8��<~ՙ��y^�j]�q�8���qF5F
�s�A�]|s�1���7S��)`��OuA2�)�
b�R�(�)�c�R�HBv}*KȮO��	���P<ϔZ
J�3ϐ���3��әf�3�3�gTg���j
$xSK��7��K������)�7��"���8�Y�~����P$a��T(�aNE3̩�p�
��¿�`��K�iqN�y\����	��%`�������a��b�_�<��v���(!U�LRUK� ?o���� w��~�B	���P0!�0�&��B�<���-I�<�u{
�X�U(�gb�W�%�߮��P�db���� z��`�$����"х��1CHA�sw��$!�3k	��� �,I�Ч�X���
�1�K�h���
'&RV<1���
����"
���`�ǳ�+g*�������Ɗ�0И���sVS�8cEp
�f�NÌ�)`��_%c�Tl�$ʄ�P,�"8
&�קB���)���
���d
(:��Qtړ1һ��uRe����&z}�-`���Z��y� ��qޤ�0�p �g���Z`��fVe��gV�$qf5�2�æX����{j�&�Y�)��g��x���)P@��Z��Ԙg��Rc���:?�f,N���)`��e9����0H�R�ə#{Y���j)$Ȅ�P(a��T(���RW4�9f*N(5O��yl��]M�]tED�����J^�C�8dFC���r���'X(�`AC�`ͬ�}X�0��o�*a���]J�!9BP��"���4J̅��X��өP0w��K3?�����k�G�L�g~O�'1L4&���@CQp�3���>�f�]�Q����I�{�	��/����Z���0Ft��BbLxZ��B�L���P0O;�#)�hsR<�椀b�!gE�93Rr�rf��^��D�{����(�W��'�W�
��W�\�i�,�0��s���X��0J�b-�D����Y��B�<�R(��T{
�Z[�x�k�EMH�(�{j��Za���:3��u����Ƣ`6�Z��8Ӽ�g�q��0��q5L2v\M��WS���j*$G\�����H�})K؁3�&F��*�檀���PD��x*�:����Y���O�K���	�+�]�� 	AEA�[m�x�7~K9O@��! �x �'�����(=p��VrrS�Yu@7�1݂Xv�1��#T��+�{J-�yf����P���`��[9�$��%�V�$ɷr�낹3�X̝)ƺ`��8Vm/՝!^�j�!8V[!&���x��R(�{>��It�sW,w���1L��<
'�P@�0����<h,��8ca0��y0��S�ww0�[\`�ǥ�(s�j	#���0XI1�5G�ˣH�"U���(��H�G��E�<
&.R%)��H��8ɝ*�q�;Uӄ�պä�`I�RVK�,�G��'%1K𨖀Y�G����z%3J���Kd�2�TQɊ�IY-���}�%+�p��T(��Q~*O8�c*P̱���bX0�y�SVc�oRVC�O U���
�T����`���z�A�'�w�����V��J��u��)��L�)P$��)��]/�@b�U1E��b�e�S�`�������T��a����=������2��Vm�~�0��XmӼ9��+*ü9�-`��Z-�D�j)$J��U����RKh�)M�D#�K4�M�D#��� P,�fS��NUi����Kc�Կ^�����d�؊3ȸ?p
�-���$�\I���$���$^C�ĢMq�6�M,�W8�hS��	��B���Q,ڔ�Hc5�t&���3ϛ�Zohg�׵��I��3̻=p��u��`0��Zm�<��
��`�P\�L�P1�P�"�%�2ʓ}_��Xn���`�Y��&�l�Q4a�2<�`X擭� 8�g|X�?���*M`�2<���+`x��'�(B UÃ.(��X�(^C���%S��M8�j*��\٫P<q�����reI���#�	+�L4�0�ڭ,3��[�ɝ�&�-3�L+3K(��3��Y�}&I�V�$w[Y� �'ƊB�=1VK쉱�`��nE��r��ˁVPL[YQD1�`��F�
�i++�3��̘fL[�1���n�$��݌AR?�s�j	#uZ�1E�2�qV��f�)�aVU�2̪�h�YU�0���Ef��(��2��]Ye�ѻ��<���*�^+�L�z��1L굲�,�wU�%��1ɛ�zec�����u�Ak�$��J�)��ͩP,O}�U���ޕ�����N�h=ϟ��a�C��0�и`}�/F@� �B�O >�a��	�ßO���|�q�(������%$I�V]��,�u�v�&�n�+��ie]�<k)���6.�PD�q�#�ԕFz�[�D�FA�3m0�X��,cA���A��f��8S���o�>��%��}���JU�V��(������)��(������)��(�طWF=��e��jb��_�}51HJY�� )eU���UM���$���+0Hp���A�S�$Ā5+�p��T(�p��T(��S��    �m05+��`�Y�{͊(:U53��T��D�SU3�<N����4csU-�26W��$���I�U�0G�YU�Ѭ*LK�/�")B"����(��ZM���6�M�#XM��=��P�#XM�=�5D?�U����3�*�>gfU|��ot�����lj{� z�k�z� \���#����"ۧz�!��(m�j]Br�v�Zɓ
]wQ,��VE��TK�pg�U4���TK���y�~KSDw.t+i�X��Dc�Um��xT�'��qB1p	�&��aތ�zF����N_��)_U�1���%ś_��0B����^�+��U��xV��3HL*TW(1�P���_g�Թ^;Ӥ��ڙ&m��i�S�iB���L6.ӄ6��3�q�v�w��ڬ^�`��f�e�k(��[_�9̰XE3,VC���P<O��t(� ֡���j)it���D�k��]��0��Z��Y�j/�a���j��lU{$�V�a��[��1���#�A[R 1ڒB�iЖLL���pb�%�W��PL����br��޷�QA��޷-���C����޷- ?��ַ-�(�B ������W0!�(�B�S� ��%$�t��Kt�[V0�moE�D�����VO8�}*P87{*Q<ٱFJ)�V)u[��D�۪J�V�0O�j�8���Ҙ�����aR�U3fI�V���b���$��b5S$�f
eX�L������RW�*���jU�Ė�V̰`U�I.V�L�\�V�&�X�2Mr�Ze�7{��26���(���#��%4�/�<��[Zc��7�5I���P����K��ZS0��jM�<�1��*��boM=��W�(���)yX�D��r�I�3M�Y��Us&Iɫ���W͙�q���L��W�xg���z��%Ct����'Ŵ�8�I1�+��v���+��m]�Ąh�'�����SW�o�b�A� �m��>�N�>zW}��0��#�O Gz4�>t�6�.�=��UH��?���G��`謁
Eۭ�Q8��n�P<����*Pt��QD���Hɻ�RA�&
��+H��[�+�'�y��'��/�$���$���$���$�ʓ$��K�I�ĐГb�G�yV0��ϊ&���Γn_wQ<q/�g�2{f��:虁��K2���u��<3��p�QRÕ&IW^�q���^�#�W/��?�j'l�H�����.
$&��(��^yQ,��/���`�U`���^-�zܫ�PDO���Hi��#���nL4���<����4����,a���O7Fy��.P$$��_P�#����1B7�VH���oS�8b�٫��W�=,�
&zX^N���*��aySD��r,��y>��:8��	�r��b����X���*M�a1���:�7~�8�e�o�����qw,]H�7�]RLpE3�
#f�G̊�+���"�YQw�28W�h�ʙg�zg��2�q���3��k�Y�^+�L�ߟ������9Ba�E�#��)b#�RH���Cq�����C��j(�aVEs[��P8!q�Cᄞ+
'l���8ɩL����0�S�F���0��T��1�S��HNU�"u���)�j/��a��S����H��F_�Q ���G�D�דb�֯'Es�=)��c�I�{O�(��=1Ҙ�ꉉƜUO̓���8�O�c�����+d�I{{f��G�gFI{{f�׭�	n�VH�˭zIeE`ϊ%.U=+��T��h��E�D؋�����X�y�=�V�?�8�:>����'@X���Z��şO y��şO �p���'�]��?� �V�?�Ӄ��$^C�Ī`7�	vS41o�M�|g�����f�)�afUE]�^)�ze���ꕉRުWJmW�2Oj��qRުW�Iy�^&�ze�ǿ���%����Z��M�b�{$zS0�$��L�FIo�fX���fVS<��j
h�Y��F�;%�;��`w�y|�c�iBap	�����-�=�a�F	�W�LZ���Abap)$�s�+�'s�^�+����w����h�%��)��p���R(�'s����\�Kgg���:�;#����w&zK�K0(Ű��hf�i4�Ӽ�W�
ܬ%`��f-�D7k)$ʄ�P,��
&N��(���k<
'���s��{�'Ą�Q<q����=�*ŉ50 ��sJ�C�x�G�b�`|�����k`�C?��(�܊��������%��$C�8�� b�f$�=��H��GR(�
��`�Y�D+8��Vpd&SW#3Q:�adJ�0��<�{U�#0N8����yݫ-`���z�Y�o^�g(���W�0IN_�"I&��b�|��`��>�����(
'��7�≹�Q�݁�~�)��i�H�u&�1��y�L���`��N����.�,4��i¾���zX�W0K:�aTF	������Ͷ��H�D�*��V���Q�c�B��ƫQγg=��y�����$�h�3&�Fc���j4�낣1�X�IR��h�V���zVk�!ƾ��!��0�Dx�W�CL_W�t�1AW$�t�r7ǬU,�^�u	ENa��Ñ1y50��a>a���|��������7�	#�o�>� � �{>AGA\�0까�����UW�*�~�	��P$ac�
�;��^���yzb�(���1N���̓�Vc0O�Z��8)k5Ӥn�1�f�e��a���}
��q�މ?Ǚe8�a�3�p�g���)��S�8˷~�	�O�"y�%?�$l�')�w����FS�XB�7L3v�O㄄Ջ"1��O��)`��ɾ6�+`��Yp	��-.Af��ʾ�2n�FI��B�Lx��dB�B�<�R(��j���^��y<��P<�G�
���OQ��Q-#�g�ǣ:�0��Rm�>�0��TmӼu�-`���}
��u���Q�v+�IbC����$y���P,��<
&��Bф��T(��n5�'�O�
;��B�O�N�+��nR�Y�?g�&٧ 	�=�j
��T�!@;>�sw��T!p�B����
���8���B��'\���{�(�p6�T(�wS�(��;t]B���j�֦p&��ϓc_wa�9Ϋ�<C��g��,�aF�j
&�W�,3M+g����3�L�ʙd�i�2�r	��@���1L�By�v�By�v�Byw
N�By���3�b	��M��y��)`�%N��,�{u�`g�׽Z`���j�3��r��`�׷Z��Vk�)^�j�3��X�q&��V/�!�p*D��5�b�~Cq�o(�h�ңX��K��	���P<�-f*�h�N#���-`�P	\
��%`�P	\�y�U�{���i��٪9� C�j�3F�.����
�",Q))��D��(�����!`J
#�k�B�3*+�P��
�/�/�����7�T���|CA���&��m㟂.C���\N�d���$Wn�EYJ�UE�L�D��XBay*L8/t*M�2�T(����)P8��n�%�gt��1��N%c���}�3���>�%� �4&�iN����_Zo
�c,Nc�4��1R	p*$F��RU ��}*J�8
&l�
���S�x�ժ*��RL�z{ا��F�*U�Y⤪L��I՘e��Rc��&Uc�P�[�{ا�1��)`�wc�zF���%��nөP�_a*Ȅ��+��%W,�EO�X�=S�XB4�b��əe�R%g���J�,)K��QR�*9��,U���T�3�P����񞹰����6�Ns�$վ�	���JH%��P�G�J��
�2,RC���P4�K5��R�z��Cؿ�0!�������hB��*{a��؅�}�S0��v�x�����o�c�����!s��X8�}_B������Q0�x�P4�f*N�]�
�gV~P�Y9)����H�W��^UN�3zU91��U��,ɫʉQBc�0I��Wb��U�+0G�^Af���U��AiS�@����
���
3L��pBc�T(��өP@a�T(��X5�4�U�0QJT��    @c_�0�۸���8��j	�&�V�0Lr�ra�ǵ��Q^�j_�Iƾ�)� ob!�"	!`6E�`6E�Ip��)��XeS$��ʦH�c��IF�*�<���dgc��-𝲕AB�j	$d���AB����A¶�%`��Y�[0H�W_��պ�$y�էB��/�O��y
˯�)�'��
�I+���)�pd�T(�'�����+��.�z�_����y�&xa��@�F�J�'�K�R�'��+�������)HB�KVz>�=f
��M6S`����%�[�ɮH�Z�$V��+�fW(q��%.V]��Ū+���;��4�:��4�:��ު%`��#p	����Z�%�V�+0��Y��`�qG�0�L�j0�̓jH�w��T(�a�
fX������pBg�T(��Y<
(V�ˣ��媼
F=��0ј�*���0M�WO��a�_Uf	�.��(��Z&	)�%`�Я�
s�c�Br��.L�"��`I�%�KR41Z�)��OKR@1,I�CI���%3R���D��zo�h�8�3�0�3�Kf��X2��u��d����k�K�!oU����B����@����`)
�i1^�PbgU)
&F�%V}:ǻ�(�Ě�p��3Ģ�p� 	AEA�{��!��*�}�=*�T!�(�ĺψG��KH���*�X�ƭ�P0a㖗�hb~�T���*��qk*P8$f*Q8�}*il^�F�ק���p��g�1qU*Ӽ�U�xc�P|�1��]�};�Kc�Ƿ:�mc�t��TH�����P�b�G\��	_:�
�v.{q��+���r�N˞
&J��3Pr��qB�j��ysV��2vWg���3�{��Z%:�dϪ3G��:c�j�VH�	ֻ�@b9�t�ˁ�+��sk*�{F�(�	��pB$X��	i�2'{U�qނ� ��j]�YRsU�����`����VK� �[�_���[ecĞ��*$��	c���{HH�ڣ@�:e�"��=
%|�y*Kh��G���a�Ӱ��>�8���>� �#�O`((BPQ`Bpuè�w�M�ww1>��h�\H�],I��jY��eʲ"�˔e��)ˊ�i�˯B��Sg�B�Ē�e�uˌ�\*ˌ�\*�L4Ӽ*�֭0OjX��8�a�
Ӥ�u+�V��f	9�%`��_�7�Y�(a���nYQ0Ϟ��9LфϐL��	z�
�S�f
(���Q���T0��X�1��X�1Or���m���II+����V�%�2J*Ze��ZYe��ZY� ^C�Ĥ�U�VVMl^��p�Y�nM��2�54�YMŭ[�)�W�it��1�p��g�ᜅ9�0�9s�Q�s��I�^+s�H�V�*�K���Z��o��\AD��E,ۘ+�����W�"�b�MJ���J�֭+��clᘃ_O�U8����BN98�0��!g]�p���c98p��g��?N88�~'\8������7�=�7�6��P1�`CqL�JE��m(��[�%fl(��U��pbV�%��>L����0Q���@���3�iU�	~�0M𫖀aR-�>̒j��a�\��D	���K�Z5)�8�jR4qjդp�ԪI��@�&��Pkb�ѭ���F��&�InU�L�ܪ�&�U53K���(!cU^�<nU=W`��V�� ٭�Y�Lx�ݪ�Lt�jQ4ѭ�E��=��(�
֢�&$ZQ8�}*il����Z�X�yF�����Z�e���1I�1H:g�s�s�1F:g�S�-�[!)&���	�j�$�X�Ye�&xV�*��u�V��.ת�hSD�� ��[U,�|㐶�X���pc��@z�b��@z�b��@z�b���?P�#�^�X��{o���a��r����W!In3���1�K�`��B{��1�K�p��u����P@��z������4��Wg��������:X[�<�������y�Lʁ�p�	m��pfy�-`����
:��́K!I�����]��6���c�B�<M1�.
'��kW<Oú�z�K��CX_#%k0Q���Vu0Mj���a�W�Y�W�QB�j	�$���A��������#�=�$|1b*�c
�U(��.��yv��W�x�����;�^�"��n��H���&��0O�
��8�*�Ӥ�`K3�Z��(c�UK2�Z��cM�%�HG.�$&����N�囖�s>�R(�;�>FV !oղ"	ǃN�b	��4<��ə}���[�0��x�o"���[��b�1۸�n�	 ���t�O .{�ӭ?�M\5<���	�'[_F0����(��mEa��ZQ1�Њ"���f
%���)�gF���)�X�i�8�SՌqƍ�͘f�،a���f���FI)�fL�RV�2HJY��)e�*c�U�c�k(���jU�ĔU�
f�VU��e�*��ڪ�]ƭ)��e��Uk4:T�1NJY��4c�Uk�2�X��$�Ū5Iu���MX�;0ƻ'p���)�T.)��#�h�H♳�J8m}*L��\�<kջ��y�]�P@�挔ܩ�D�ԅ�(���:�8�:ӌ�֙���Z�L����ɛ�L�hRu�h<����+�P�J5�c ��P w!p_C�p(��;6S�hB%�����<����ɡ���C��A�s�d;<W`�opw���Q���3�!Թ�Pt�t� R����sa�`��#J�ס�GQ��E*O
#��Iq���H��=)��{R(�?��(��Y�;��+`�����ު�
�%� _Af��P-���o��3�<U9W`��[�I�C�e�k(�g�Z
�Vm�6�Y�<�R(�g�zE�<�����
_r�
E��6����*���T[�Do�j�-n�Y�w��IN��IN���$�0JHR-��$�RH�	��Pb��M��z�����7E��n��;��n�g�տ*��{e�ѩ��@�SufEe�ǩڳ�2�X��,�O�IF��+s<>�ބ�1^�j#�V���ѫZ
I1�5Gtս)��
��@S(�ԛ�����Nl���b+�7E�
��n���t��\a��'@K�o� -!6�}CA����c��'�Ԃc��'�(p!�Ԃc����%$Jpؽ+��{W01��]��Ԃw�v�'v�xW@����O�"��V�i�Xyg�1c�y�L��8���ӼU���YҞ@�򦬶�IBp	$��9B��zH���|(��A
%&��X�ꏂ�Ӫ?
'N��(�ط����Dcʪ?4����<c�?L�zWk�YƌUOL����$m
�9Ҧ��#�X���Ū'I1�5G<v�'E�5=)�X��Iф<h�
'��=+��\�Y��Bό3zV=3�X��Y�����dt�zf�ѱ�)FǪgf�U�0��WmǫFH~U/����^$Ä�Pѯ�Eq�cazQ$�X�^�=�֌+�&�kzQ<�˸�"�Ưc�[���ҿ���oR��>�[���	U*
�@3h�n�O ;B:6�}\�����}�?�c����
�J�ЫЫb��
�*�x�B��&�Ы¹��֏��'�*���b3h��(��+#�{f�i�S����D�Zǐ7���:��1��M�-`���Z�L3Skf���0˼���+e�Sk+$J��tW,â�
fX�\�<u��_�
'��O�+�vWDߩu�9#-q�r&Z��Z`��[���3�B3�3�B3�3�B3�3̲g�wfY��ZFY��Z&Y��:��.IBV�w����+���z���'
�;��@�|��(��:�UG�`���'�y�!�z�O������)�R|Y�����[���_�hJ�e�~
W��w��J���C)�X�I{P��&�H��*�$k�\�H��NO�O"���h,�$���$�1��H��6���p���[�I��$�0�-� a�[R���0ޭ��e��0߭�0�ޚv�?ޚ�s�'a�[��`�i���ӸF���k����F�/�k��ƺ&����h��W�|;>��;P�x����3�e;���\��,�8C=��3�e8��3�c7�    8�\f��=�<V�3�e4�8#�l�H�@�+�	�0á���(���x���&���̟@qD�9 d��������)\)�4�Oѕ����Ja���������8=�?AVߙ���(���	L	����B�L��<a���~����~���N8=%IM��r]%I����*�=��'�X��2?	��c)�� �J�\b�,���_	�K���������6_伿�W��j���W��2#�����q0�K�g�h�应�$+h�ϫW��q�_�	�{�?�G���P�������$�7�����0�\���߉�q��g��T�D��5��#4���2����0��Tf� ��)�`*�)�`*�)�`*�)�`*�)�`*�)�`*�)�`*3�R�1w���A0$�f���&�s�h*HʵeM��D�OR����4�A �T�|��~��5�T����ԦgX-�F��wQh�����4�o��O�	�5�]Z�&�װ%р��P��h�ㆴ�1�|��=����I{�d��і����-S��C[f����'�3�L�3�L�3�|���fg�<�-�0J$�No�h�7w��}E�Z�O"��/��H���7�`��D~
I��ܙ-���d�Nv�Jv�3S������L���`�d's$;9"����N	E��P�N��dyD���Q�N�Ga;Y��d�(jB{ש�Nn�R �
�mʫiZ��/Z �
�r���T���F�SAS��(PͶ��j��|���5���h͵	%i�?:�<���~I���֌+^E#n����h����_���~Ɍ�le������+*�т��
&�r+,�˭`�`/������
��Y�3�C�L�3E��%�i�`)�*x��H��Ԗ"��O[���.m)+�K�\�fƟD�M_��/.d��`c��`c��`c��`c��`c��`c��`c��`c��`c�d0K� �`U�`����,U1D�YD4�UQD�YF4�UqD����nn�+FNW�+NW�+�MW�+�MW�+FMW������*��Q0f��vC����e��	�=(�LJ$�{��/5#��bI$W�Y�`�fY\�Śeq�k��%�5��2�;�*�x![WTR���\��0`HƖ��L8$c���d�z�ΌC2vk2$c���4L9$c��0fL�n�Ƽ��ם4�gI4�]7Y͸�U�F��M��54�?zh��M�����l�`�d3C%�9�(���8�ʹ�YF�i��6��m�=��l�=`�"6��l�=�!�L{D���(�`3-)�`3-)�`3�RϘ�?�XúJ��iX�BM�K�ae
5����P˘am
5��1�M��὆�8\kS�Y��Ń�)� ��!C̲��ұ�>��,Zր����6�o{E�9���B�iYӅ Ӳ�އf���[a����
&�V0X�0���B����07��X)#k��RF�
#��r	�.�[i���/t4�@��k&�b��LŲ��D��Qf�)��f�*��f�+��fL6�J3M�U�M�UfM�U&M�U�I��2K2��A���L�Lee�l*��"���)�h*�b���)�h*�����)�h*�∦��~��K�p
�rA0���1�@ K<R ��#�0
�xdD�����
�:�@1n�� �BV�3�8J$л��'�HD��jX��Ċ]*�%XlR�.�b��u��D�K�p���Xg�X�_�/�{*t���%a�!�\��a_�`�!�\�|���BH��e0^�(�BӅ�Mamh��kCÅ�.4���p!Ta���0�h%��d���s�V�>5Z��0�h%��8�����V�>2Zɚ�b��51B��5I�@0)�`%kR�J֤���IA+Y��V�&��dM�#XɚC�tF>�
S�$�d-� )Z��]��Mkv8�4Uk�c|cMk��U���o<S!n
���3���h�%1F�hĆWш����Q4�ok�O�;>��{>~�Sh�7@���R��&K�=՘+��Tc���S��RoO5&
��k}�1P�UVc�Kn����c4�q��UV�<�VYM�G9͡*�&0��J��?[���g�H��?[��d��H��?[�K��2Z��������,ec�d)�$K٘%Y�� �R6�H��1B��M�MDK�B��M1DK�
"ZJW�R���G��!���W���!����!����k�@i�")�@�TC(H��K�Zak�@��B�h
4k=}ky5�S���Ukה3J4����x;�K�o�I4�v늵k�W�.��+�|�ÿ$����u0\ξ��l9�Z��,�.��d?����1,��ls���l�hS��V0���$�Z^��z
%�J$�S'Y����K"��vI$�S$Y������H�������p��l��F��s�6�%�mfKL4�̖g��-1�h3[b��f����l���lY�Y�ٲB6�e�lf�
"�̖E��-+�`3[V�f6�<��7�D�+O(��@��J2H���h�a�	%77ְ���
72-ip��%WiZ�}���q����V4]Ģ��LÅ�fn�B3rc�4\ȍ5�p!7�L�(a�Y6c�Y6c�����1Xn�m��~�rߤ2U��K�L�J�*�*e���3��ih�qb�r]C��U�L��mUŴ����5�ާI��ۚd�U��$U�R�&�b��5&K�1W������l̔,dc�d!�$�̒,�3H����B:#d� tE-�+�h!]1D�
"ZHW�Bv�-dW�Bb��~�X�*噰4]E�١�1�U�^��!�U��5����`LW]�㥫�å���������% ��DCM(�T�Ǎ��ش!��Eka,��mH�a��	�׳H�g�����0�?�J�.�*����%a�J��0�?�J�nh�}���xC�rk�o(Vn�ʭa�X�\��	g�h�`=i��e�<i�7u�I�ܵ'���I4^�i�I�wq��p����`����T����H����<����4����,���� ���������Zz� �`V�ZzQ�ZzQ�ZzQ�ZzQ�ZzQ�ZzQ�Z:�M��3�zz��+��	c�+�u	C�+�E#ǀ�
���p�
���h�*��S���U��t���b��JXJ4τI�z�$S���$ULV{�\��ǫ$�M=^%Z<���dV��p���t�6�xe��z�2޿��2^��gFU��z��1`0�g�5&M��0�h*��S�$�qF�f�7�\[o1���4bpn�i���}�+׀���]�(a�d,�ђ�t�J��*Kg�d,�q��tfI��$���XvF�ƲK�@�+�h,�B�Ʋ+�h,���Ʋ+�h,�Ʋ+�h,�I}���?�Wg��,j8�$`S�y} �5,����Ù} �p��%{{_e<�5����}�A�g���^�?pF���р�9�?04'�G�l4`ǫh��E�(a�_�,2�K��-�*���~)�5�zb����c�lO�2�=1R����@�L����K�i&PH��F���'�ӳ䉽w=K��|�秐H�:ҳd
ő�%ԓ�X�X��왩F�33�6�g&md/�3��^�e���0�h#{a��F��������E�EًB6��ld7ld7Eld7�ld7�ld�(��>S��Fv��^@��J ⨠�%����M;DRA�v���bb��;�!�
��t����AՐ3J4d��{Ր�f|�n�j���]{Հ���^�i���7���h�H�s�"eoL��_{c�` �Om��y�%�g!��@��g)��g#�s:�d�L�tM]�<����$�P�L���ėDb�<Fw���%��rvFKv�3Y���������dg�d';�$;ٙ%��� �Nv�Hv�3B��C�CD;9B��C1D;9D��CQD;9F��CqD;���1�v�&X�B��XX�B	��+P�_u`	
5��A�6��pfh~ v�g��f��-MӚ�Sdi\k�2��r#ޖ��h�p(�H����#I3�M�#i�{�_7҄���Wр;��滻T֍/�    #1\(Gb�P��h��gd&��]pGf��a��g�F���↑�`�`1����#K��&�H��y��%V���Ȓ�����"���$�챙K"��!��H���0�h3Ga��f��\����F�9
�6s�m�0fm�0m�0�m�0FH6s�M�9L!�9L1�9LA�9LQ�9��6sT�l���ߎ�?���(�$���d�T-����(�����(�T�Qג7Z�*G(D���m	�(�����G�|3ع���+�4_�4_��M�gΌ���d�h��+G�po�4������`�XJg�,�3VJ�g��z�H�N�{0Q��K�D�N.E;�L4��W�5҄�c��%T�X9����d�K�X�]�����-f~F�l1��ᒝ쌖��`�d'C%;9�(���8�NfIvr0H���)������ ��P��,ϣ^;9�ᵓS� ^;9�ⵓS�0^;9�㵓S��LR��-��p��'�����a*�R|KVy�O�-YS���.YS���.YSQ��.YSaJ1PQ%�%�hB�Dz;S�B2�N�TH��C�m��
1��H������\o�h*$W(M	�喞)a���:%L�{_���rGϔ0Z�}�f����<����}��=�V��B?ϡW0��N��Q��#@ֳh�v��wr�n��~��Th�~�E��v�o-���h����5��9�L����4��9�8����3��9�$�����1���T�l�g��FN��"�6�*�h#�b�6�*�h#���6�*�h#��6O�xKNI�X��,	���g����)Zs3�ScZ�� �%�s%P�K?-��{z�Ը�8^�kM�o<1���5bX�]���5`X�\�?�5\t4\�EO�5Zt5\�����N�̙+��Kљ+��[�\�P�N��\�xr�Χ��B@���\�R��ʭ`�PnCŀrK4��o"�jB�CbM�uH�P$�	6��C���h�B�.�`�d+�%[9+���L��L��2=L3���0�h+����LC��2=��lez$�ElezB���Q�V�� ��LIQ[����2%�le®=��{�'l�C�����4���z����	�PsI���5�=|�ip/l�C��u���k����{�S֔��LY3��2eM���o�kh��G�����&���f{�S���1��Ʀ�)`���g
��g,w"#�JUʩ`�T��
���UJ�
���ץ`���\�>+ɘ)U)���r�rJ4ҝ�~��$ԓ}]�>h3%��ɾ�g�`�cyS"�±vS"ў��H��Z��[n���2�h-Se��Z��P�ZV&Jֲ2N���Y�����ee�d-+#dk�$@ �A��M!Dk�C��MADk�E��MaDk�G���$�߆��;�H�4	�@�'�%@�Q���֖�&k��*85Ek*�˴��v���5w���4����Ƶ���b�h��)�ؒ��lp��W��F��uM�a�p��5��^{י.�+���R�r*-���Lm�
�[�\a��V0��f�l0U��
���ffzm�� �=
vJ$ՓZ�uW,�ސX!�����L��z;
�Bb��~$V.��\���S��2?�4���0�h.��0������2'�eN�1�˜b4�91B2�9I�@0)�`.sR�\����IAs����2g��eΊ#�ˌ�(�}]�+V�Ɉ��+� 0% ?c�*n�2c�
nP�!lA�/&V����
C	��X|���$I=��,f�0�ږ���g�8��bS!y�2U$��'�_�D��`�YO"�B�:S�*��]dc�P�<c�6�)���B��0�P������^LJ���.fJ��:9�*�u�2�*��j̷� W�&/rՈo�"W��ܬ�����h�~}�\5�{Jϔh����)a�d#+s%�*���H�F6J6�1N���Y��l�ldc�d##d�$@ �A�����t�m�+�h#]QD�
#�HW�Fb��?9�H��� Vu��� ^>�����}ǔ��UTXo0R��v�#����a�8�* m�1L����*q=w1�(�(l@��c��%U��CREK9$Ut臤���T��o�g����<S`0��ϳ5�V��p��LW��xCO�;�ÀCO��0b0�v4e=���P�Gc�߉�M��GC�˸<�qūh���5S�	�[���G�
���;%L7�ʒ�l4�%1�h*Kb��T��@��,�iFSY����$�Me�1�ʒ!�ʒ%@ �A0�%+�`*KV�T�� ��,YQSY����d�Le�oCy�_~������
�(�e��XMu���C]�~�]����?u���W���=�*�Ut�-])�}9�P �F��4R�)�L1U]LB�~�)�T�CHS"��^�)�\a/��H���.&�b����Zc��b���|��\-��0�h1����<��2㿡e�YX�ʔ�Ŭ��Z��q4f�'JՔ�b6_٦�;�4��-�)ф��w|�w����l��Lfc�d2C%��L�L�3N2��,�d:�$��L�L�3B6�.AW�d�B�&�C4�]AD��E4�]aD��G4����~�`@�r� l�CIIӒג�l�C	l�(�ˇ�+�̇��	�`3J�o��C.a�·|M�f��Ѐ!�Z��*eh��q=S��B/l/����t��M�~�qJ.5���d�J�fo��VX{,T*���B�r++T*���b+�R0Ul�}��b+�R0��
�$�iB��� �$�bxnIr��ܒ�YlK�,6�Y�h�
`I�ŗ�2Í��2����2s���2C���2���2���2����2����2S���2#$ciE�EciE!ciE1ciEAciEQciEaciEqcia+�o��b-���7���S@ da#ԧX���&a�'��J��>,�vB}
\��^�O��Q�M���.i��J34�D"��Ҫd��X�*�46%+F�V%X�.�J�]Z�h1���p�F�V/D�{"T���%a�!�|%���rIo�,��m��o.��[��Ƅ�-�1�?��5���w1%�0zMF�i��c�&|O��M"Ks"Ks�w���tFK�ҙ+Kg�d,����t�IƲ3K2��A���L��eg�l,��"�Ʋ+�h,�b�Ʋ+�h,����r(�h,�����{j�Y�5O�C��x`j dxfjv��]S��>��m��:�5�B4�B4{�=O�8*h�)wS��f=Βh�%��^ǖDC6��f\�*1���&�X}4�~W��h�/��x��&�˽�51�/�\ֳ&&�0W�/���~���7�,3�Fإ`�_x�����h�<�J�&�>ϴfI܍�%Q�6j�H��,S"�b�z�+��P��
����%��-(L6�˚�k4��0�h.ka��\��@����qFsY����e-L1��Z!��Z$@ XA0��B0��C0��D0��E0��F0��G0��C�/F�ز�f�+��XŽPW�jŭPW�jŝPW�jŽPW	�����b��?�C]�m����
 ���#
pApY�&���V�׫*��zU%R�j�H�˧6��|j�H�˧6�4A�~mL��s��a�e��ߒemL�oɲ6f��dYӍݰ�ƙ����:�[��Ό��,�3�?M>�5e��2�q_U׌�]u�_Vׄ!}]����5��jP;�%Cٙ,��X�PvfJ��3P2��i��쌒eg�d(C$C9� �!����
!ʡ��
"ʡ(��
#ʡ8��lᘾ_z��|Z8��S���A}�޿N����0��x����5l廊k)6�]A���e6��
��4l�`p�JK�iB���QxK�*V�Z�X�rԒ�!xK,F�-I���$ٞ<�
����m����@�2��y'3`0��\�	��m���@�23�&sir4�KÔ��b[f�Lf�3��YS��'[ьo0ފ&;HZр�+�D����h�{���.�.�Mm��F��
����-f+�4Z�f4Z�f�3Z�f�2Z�f2Z�fL1Z�f��,f3	�"��B��b�U,f��"X�VF���*�h11�z~_*�вa0uM	n�0��x�0���
W    J ���q�U,c��;����~oq*�R����q����5�3�DŪek�)V-[�T����$�]x{�6	���,��%X.�3�?�esF�a���FC���l�Ɩ���ز9��[6g�`(�t���Z�q4��u:C�rI4d(Z��!#��!�s�5c�n�F|υm]�;��{3A�k�wgt����`�d&3%39(���4�LFIfr0G2��)��̐��`�d&�� A0��(�`&�Q�L�� ���GQ3��f��̤c$�~�2����\3�F]�.B�W���<� �*��s����J��*�Q���s4�����'�q�'���$�b2ѳĊ�g��{�,���%Y��,ɂ��,ɢ���h��J�������l�4�xf��{�0�?�=^�-����xa��N��0�O.	�Vr߉�����w���h��U�W�|o����¹i�p$����x����i���ҍ�FC��d��tc��P�1�h(�h4�nL3J��2J��1J�1J���e� �`U�PV�eU�PVeU�P6�eS�Pb'_�m���gı�%�~aJ`��6>��E�>>��ҏ�|���;�PU$�V>�@ɱ�5PErl�C^F3��F�5bX�]6X�]��5`H��k�;4/�D����5���7���z�3گ��,���¶��`��ճL�z���~}=�<)s��z�3U�6�5�������E�*|�Ƈ���ƐT��Է�8$��E�N�!���tI$X���H���`�d-��ֲ?L5Z��0�h-��@����ֲ?�2Z��0�h-�����#$k�	0�@kٓBֲ'��eO
"X˞E��=)�`-{R�Zv�|�{��k���Q(I �Z�A2�侃��ۺ�3Ia	��}}���.0^\���+2^�"�:]I�%�7�bd��w�@���]��}�T�P�|����}̠);/���n��/��֣���d��7��l��_����+�=y��g���ߓ��(�ו�cR[V�M���U�*˪\	�eU���r���deeU����*WBQY�+��?[`{�����T����e{_qϖ��lY9&�ٺrl/�{`{��{`{Qڳ*{QX�ʢ�R�EI�*�zJUՔ�,j)UYR����TeUB��j!X� ��:BVeu����Y��)�*�cdUV�Ȫ�BԽ���+#�KQ̰��Ld&�f;W����G�b#�o��L�K5�i|��g:����G��d�ޘ��y��^����y�����}�ݢwϋ�e磌}����CeQ�+���u�>TU�.҇�~]���PQT�
�'�rTE�jɞ\	O�=z}XL^�`\������ϸ,)�~�eQ���e��R�ea߳�Qڳ(ǥ�gQ�K]Ϣ���E9���E9�r�E9�Z�E9�B�E9�*�E9�JQ�`!� �rG����(Gt�(��"�rDǈ��9�(����S�*W�v "P]`��Ld<Cw�����fY��v�\}�	���vC�����L$�u�i��<(�h9�%}�X��X���bE,�{�Z�^�t�+�Y��--g�F���kE�g�rd��Y�Yu�*GVݟ�ʑUK��9���{�U�Y}�ͯOF��==뵊
�����%ޫ�ϩ�(�����?�c+���b�x��|lE<�Z�"^��Y<p�o�}�nU^)˪�R�U]�,��JYV����)eY�Rʲ*��eUE)˪�Z��B�9A�es�,��Y��!�,�SdY6�ȲlΑey�vw�~G�����`T9�[��Ld&�F�����������������*�=�]xw��-
�������^92��	�:^o�q����1�0��cx����v��ݛ.���\��c���*�PZU���ߨ��C�a�_��Ʈ.�7��TUL���P�s`9�MEρ�߿��@@9e`���k$,�>Ә�h=����G�g_���^#�	���/�&V��3bM�ќU=jr�\Q���?Wң&������s�<jr�\1���WTʣ&�����sU<jr�\	Ϛ����#0��p��8�]�3�wM�+9�]�3�wM� �%�7���əI>���63�g�w�f��L�03S}&Ó�i>S�Q��t��|��3υ&���:2{�gf��|��|e�L���g�#��=��*{c��'�[�g�7>�ޛ�g��D��E9j{���9�:������e��ɢ���}���|j��|J��|*ʮ\��E#���3bU�����e��?�ja��i�����YZ\vF��^"�	��¬*+�ٔU
���fSP)̦�R�M)�0�:Ja6E��l*���, �davG���ΐ��"�;Efw�,��Y�ǲ��w��I�����N_boF���ψ��X�N_���q,;}��q&�K�͈3]�}c��H.�7#�Dv��D�b#��h�LXT����3�aQ1���eUq�����`1#֕��Ჰ�E���,�S;�R�c��(�1�d����}2
���5�%�L�s.�c&��������1�U>fb��Q�=�E<sd�+?���f<�3_o��g��'����p��!z���(z�����Ҟ��������������r���Z���B���*���Jc�d!�� 3$G����1Cr�h̐�"3$ǈ��9�1�1��;Q�b�c��c�
ǎA2<��(d��=3R|dO��c�ȷvF��4���g:����^�ޛ:g��g��f���-�7.��۩2^���P�,N:B���F�/}QW-W��+ƖOBY���3
UY���3�	UY1	������2Te��e���.�����:�'�i��Z�fQ9�ͪrh�e}��׳XW\�hF,,.v4#V��?�)�4eSYiʦ�ҔMQ�)��JSv唦�j)M�R����4eWBm�n!؝ ��;B6ew�l��ٔ�)�)�cdS�Ȧ<�R��_���#h�c0�HD���,�c8�Ⱦ-�����9#*d���	>���ǐ
�ݓ�R!�������xy߽	vF���;#޷�Y������x^��c��j�Lxܽ ��~M���ʢ)��ʢ)���bv�e=w�΀���`g@Ie�2����S+cT�]��_j��8���z�%c��l��(�
8#֔���*[2F�ʖ��ʾC���Nj{�dLJ{�dL�z�dL�z�dL*z�dL�y�dLjy�dL
y�dL�x�dLJ(-��`v�hɘ!Z2fg����!�%cv�hɘ#Z2f爖��N��������F>DxP;6�!��ڱ�؎�|��L�L�}����>�7(�L�?��|Ύ�|Ƞ)��|�l��#�x�A����2Vϋc~��8�WO��~��ջ��NUUe�2V5���X�Tv�̄�ꎞؔTW*cSү$�)�ؔ��ɕPR&WBI�R�*z�T��'ݗ������,+'|b���5����[X'c��GQvK{e��GQv��"�j�E�UV����AWU-���ZCE��zj��"j)g�ABa8G ǈ3��qF1"�(�3�g�r���"]Np�� ���Ef �@D ��>�'�v ��<Cs�}ؙ�.�QP�@i'� (q����>q��	�	�`5q���<X�`E19��%��t
֔�S��ϐ{=�E}&��DT����w�2E���3�IQq�@��Q�����w�2E�ez3J���y��\�\�Y���;�<sd�+?'��I9��&o\�k'O�/u1#^��?*y�����F�Wz2%���LYe�'SVW�ɔUUz2e5��LYE�'SVO�ɔUSz2e�<{2eI���wO���wO��ѓ��'�DOr�i���π2q�������+N�$�����:��O�E'F� \ubd�N&.;1��,�G�\xbd�R������M{蛪���������~��u�ӍtG��:~�}�mF��B�"^w�mFTW�����)SSY��������Ԕ�Q���TU�'SWT]�L]Muy2u%�F�o�t�Q��E���[S|�wF�*��;#�����g���}O3�Ȱ��YƊX�w�rEW�r��6�PYmʡ�ڔCU�)��jSզ�)M�/�    ��̗Z�M�/�s���3��+޿3lx�#�x}'��2�P���2����D��CV旟v ����>�&�2���خ�����X���6�`�0c���d~	
Z�7���{bGE�V4|���	K����)�rs��\��Ѫ�������ьX��p�"*�;��QmǕ9����ל��w�kN
�q��~���ʕQc�+�?���ǰrE�����*�1�+��AMU���ɟ�=n�sx�=����mx���>��@BQ�!sVRiȜUT2g���E=�!sQNi�\TS2�Ԇ,j�Y�R�8H(�Hǈ�,NY"�:C4du�h��ѐ\l����nȷ7�ִDﱘkM;�#�v+E��M;����զ��LN�j�N`"'s�i'��&.6� >x\k�ׅ�%i��\��͚�#���Z���[+bU����e}�^�� �[���!+ba�c�QZ��C�%�L�殼���z)�='_��(�Y�+��(��O�+�9��2j|N�ޙ��GM>U��|��+�bxeL���3��7~NkW�?������M�<<p�C�<��3/3R.��,��Ja�Ke�0˥�R��RU)�r��f�TT
�\�)�Y.Ք�,�Z��Y���Bp�@�1��N���qf	ΰ��������yk���b������nQ���Z��E!�	>�j-�����~9��L�ke��|��3mO{��Q�`�`Lud�v<s�+yel9,�#c�$o\�,�S�%y�=@/�������@Bmu�kI*�M�>��%),��<ϡ���dU���%���|-YEe�k��);_KVN��Z�j��|-�s�2!%[O�l�lAy����(�R�5�J����@)����+�~<׳��veQ[�ʢ�ڕE]�+��jW5ծ�*�]Y�S����veUK��� �P�#�cDWV����]Y�!��9Btes��J�;��\y�f��v��U��`r�i'2����s�|'�KԽ&Q������dq�i'�-���L+v1�Q#V�=�X��޳����u}v�<�ba��V����Q���k����P��Y�2��w�����-C�1�|��C��e(�� �5�`��ȿ�2T�w�Y�2�0��##^9}'C���{*�^^x�d���b'^�<�:�x"^_ޭ�����4f�V�e�ƬAQ�1kPSi��T��ƬA=�1kPMi���l�$�#�c܍Y�S,x�C܍Y�3lx�#�x}'8��c���� Bjl.�.��Aj.���u����e�*�N`�~��N�=��\��	�گ)���'�5˅��ɋ>����XS���dUy�_�u}��~�la���f+˭�5[Z���lmY�5+��tlͪ{�动�Q�+��Ǌ动�Q�+���z�)���|��(�oQ֢��6��R���x^����qђ�ۢ%���c�Z����^�%Y=,K����dUU-ɪ�Z�UM�$��jIVՒ�
�%Y�SK����dSK)�� �М#�cDI6���l%ٜ!J�9B�ds�(I�_��M��N�V�a�������\�w�e����2�}��w�e��~�k�\h��n��`�Ty�]f0�Sy�]f����L�ᕉ3<�s�q���1[�'�l^��x�����F�W��֡���]*+�`ۥ������.e��PUL�>	E�>ؕPS�]	%�<�P�c"6�/�)�vYSNi�`U��ۂu}�����\*i�ʾ��B��߶i��r��ŕ�lAm�1[PYi��U�EU��lQM�1[TQi��S�EՔ�lQ-��l�AB!:G"8ƌ�;�ݘ-9�ݘ-9Æ�;�ݘ-9���o����1�c�RG$ R}G6���mJ��lK~
1�:2{wb�`ꈴ��1�:"���#�+�e�y�˕-{��g��<�g�#���*Պ�EW��y#�+]ي�jW���������^ي��ze+��U��'PԔU�Jʪ�UE��|�FU�ݔF��XnՂ��kՒ�Uk�M�Z��#Z�+g�[���QЪ�=��)�eSZ-ʦ�Z�M]�(��jQ65բl*�E��S����eSK)�� �Н#�cDQv����Eٝ!��;Bew�(�c7_,?� h�V�/��ձ�����M|_ �����%��[��FC����%x�:6�}	���{_�qk���ͅ︵�E#֔������u�&�~YX.W��ʾ����X���U}��R\̿>��~)�1�d����}2
|쇽������QbL�>_j�A����'�Ș�]�݃"���Ө2ga��WƆ�<2��ۃ7���=1��أ�{�����}1ۣ��(�f�j+�٣�Ja���R�=��f�j*�ٓ�Ja���R�=��fOjyfO
�9!9ƌ�;ł�;Ċ��wa��wa��~���V	?#�ν|�D���Z4�����
:7�1�ב:7�1R�J�g*^i��Yv��c�G0n�c���y+�G�����x��g�A/��9����}�`+�y����ҭ�+�^�V��*,6®�������K(+gaWBU9���C�^�T���*�7�|��zUQ�-W�yR,	�fQy��,+/ۛu���{��ǙZ���X֛��ZIo֖K%�)�veS[�ʮ�ڕ]]�+��jWv5ծ�*�]��S����veWK��� ���0#�r8Et�p����ѕ��+�DWr<U��U ������������e�Pj0�I�D��mp��V78�ډ������mQ;1���
Z�׸<�׸�(�+�eM��s\V�;9G��\���rk�V��F#X�wkϊ���֞�gk�����k��X��Qޟ�=#(�v�WG��V�����'������J|�+W�GF<1��F�ę�����=p�7<K�����}�U�GR]�ʑ�V�r$���IY�*GRT�ʑ�T�r$��I9�*GVL�ʑ��ʑ$�sBv��w��w���6<�v���U90x
���\��	c�#�C�NG$"�|dw����������r`�td��r`�tD�o��*FOG���}�J4���*Ѩ�#�Q�/&�G������6�ϻ��0���?��+��Q�VF��)�l�MY�Z��DS�oP��5Eխ=���n�MIuk�h*�Ae�*zl��wċ>��+bM߭=w�[�wk��^�u}��Y,,/q7��}�c�^��rP9���rt�զ�j�M�UV����6�PUmʡ�ڔCE�)�zjS�Ԧj)M9$�s$�cDS��5e�.��5���3lx�#��r��	���V\�nOf�����9�%��~&�Kd>Gw���.Q�]��
����9�:~�]b�}�d�.F<i`Ěb"�\��b"lF�*ƕ3bY1���qe����-�g�چ���Q\WΈ�b\�=��+�OF}1��ޱ#�'��Z~������ɨ�b���"ch��5gF�9�|"^92��j��x��g���V�3�+�@�^�A/y�����}x��9j{6���٘3��gc΀���9jz6���٘3��gc΀j��9jy4f����Bq�@(�1��N�Y"�8C4fq�h��ј�˗��D�c�>v����8�qC3{nqf��d5�����O37�1�w��L����L��}���i>��ψG�|%����H���Ҽ�3\*w�?G���πiE<�s[����Q�o��f1gBq1�|j�1�PZ�\�DW�o����gBa�)�yu� �I(�7�L﫨*6�������+�Oģ����u�j��3bY�{筈u}>��W��˾�eX�w*{E,�;��"����]��je���*��9�U+s��V�PS��p��Tf��S*3\�)�.�<+3\2���1�:ƌ�;ł�;Ċ��we��we��~��ɥ G���D��ޥ2�%�-��N���S�����{��D�4���<��3�Q;�]y�~!j�,�L����k��B��{ZlF�(��fĒ��3bMq�����ˊ;?̈��E���bޑ��?C̐TW�.gDu�.gFyG�!���3$�a��¿#̐��w��c��e�aޑ���#'{d�	�����Y��=0>���v����[bgDq�,CVY)�P�U�2U��EM�,CQQ-    ˢ�Z�E9�,�jjY���,�
��1�,�SDYV�����eY!ʲ:A�%FPk����g�D������7����''$*m7!���%�5��.0���!�.|v����6+��@̈5ŝ�gĪ�߀�#ݲ�T_�z_�naq�����]m�����tl��{���]}ϲ\>�reT�,�;3�e��(����N�'���N��g(2�r%�1>����:<0?�����:<��֌xݽ�[��q���x����JU�Ka�*㥮R��RV��x��Te��T�2^**U/����A5�*cP˳*cp�P��1f<�)<�!V�g��xG���NpWe�X�o�~�b#SG����ԑ��R�p����6b<udp�1�:2��U}�����y=�c�#���63�g�}S�1y�ȈWƊRL�9��;��&����vg�7>������r��F�W�bcR�o.��ՈYm���gV#f���b�)ØU���}�GVXl�y�s�1++6�<	U��b���s�+�Q�[���U=>�Ų�b]��j���G�X��Z,-�5b��8ՈEm�2��je���,ʪ�YU+�*�VfUP�̪�Z�U1�2�RJeV	����Q��)�2�CDe6g��l��ٜ *����4:y����X(�~;����/�{c��Aw��/��A�N�z�;��V"�����LD�x�Hr�S^b~��Q��۬[��.薕H�[W|�~F,,�c?#V�Y�7����3ae�wWƙPY�/�!Gj{0������ �⡺� se�̺V`�P�s��2
|�Ʈ�
�̿L���`��9]�|�Ʈ�g��x�g�z39��z��ty������,]��7�8;KAy�1SP[i�TV3u��LAU�1SPSi�TT3���LA5�1SP˳1St�P���1f<�)<�!��L�6<�v���9�#>�)�$O���9��U�x�2܉�kl��"��w�H.��v9�%p���� �.������)y����~�֔g�)[T��lYy������:g���k�3bi�c�z!����MYu�cSV���ؔ��w>6���ME�Q�O}��Ĩ�g�T*j|.^�;��g]��Q�.W�+?��ws��s�T<26���1���'�{�\�^�퉕T=�qЌx����j]V�պ�*�uY�U벪��eUS�˦�Z�M=�.�jj]6���l
�9�9F�es����Q���.�#D]v'��<�/�w_:����R_ uy�[���t�Y�`A$7���;p3�\;��q[�/�Րt�U�K`1$7���;p3,�Z�|�ċ��5ؒ��U=
sXף0��=
sX٣0����IҰ��˗ڢ/���/�=3��=3��=se�,̕Q�s|�2J|�/WF����wF���\ϣ�?�'��3����W��D9�8x�_;x�0�y��/���w���w�7(�fj+����Ja樮R�9��f�j*����Ja樞R�9��f�jyf��
��1����)<�!����6<�v���9o����z)�|�_�D����ǽ��������Z�K�}���;K}	|	"7���D>�+�%��|�V�K&���P!g/��VĚ���^Ȫ������� ��D���o�be��}����Xۀݱ�(��3��a梼(���a�5�Y�fQaS�U��?w-T5>'dWF����ʻ0�3�\�2&/r��8��#g>�7.|O���������<��Ҟ��H(��eSW-˦�Z�MM�,��jY6�Բl��e�S˲���eWJ)�� �Н#�cDYv����eٝ!ʲ;B�ew�(������y�O�ґ�c>���f��q�td�%��#�c�q�td
��ǵґ�W$�q�td���\:2=}\/�]���̑��z,�Gλ��卟c؊x�����ߋ�����`Dy�-?�@W.��v�<���߆�������>��b��
����Y
(AIu�O	*���y��KPP��Y	�<v�����X�烺�l�����&�u_�k&�*�!8#��9�Xo6ZX~�D+�U�RZi�UVڲDu��,QU�-KRSi˒�Tڲ$��,I=�-KRMi˒��l˒$�s$�c�x�S�mY�C�mY�3lx�#�mY��9 c3�횑�#8���D|6x�	f����+O0�/H^|�|C�����ȋP0��1��k�:��-,���`d�l��q�_�'��~)�8�Y�0�K����.���ߗ#J����J�^�[)Uu�)��jSV�զ��MYU�k��QTT�z
%ES���b[�hʉ�\��5���5��Y��,'W J��\(͒r�4���Ҭ*7Ŗf]�m�Ҭ,G㥫�eW[-ʮ�Z�]]�(��jQv5բ�*�E��S����eWK)�� �0�#�cDQ���E9�!�r8B�p�(J���]�Q��^��a3X��71���ʁ3��91�ae�ЉL�U����|��3��S}���4���x�ȈW&N���&I��/j���&I^����M���1�����k�</���M�m�$�u�$�}�Qe��$5*�W�묪Fe�¬QQ9�\����=�����^ŋ���辶�LX�}i癰�V�dE���JX�������$YT��פ�R�5��TeMJ*UY��JU֤�R�5��Te��)UY�jJU֬�R�5+�Y�5;H(d���3��+޿3�UY�#�UY��9f���|�\��1r%j'֙����u��犫P;���+��v�����T.>� �S\yځ}b_���`�.$�%�R�Z�(U-&�R�j�(U-'�R�z�(U-(�2R����s8���{zjS��==�),�(�s�����`kS��M��)�D�2
�%��̧)���wOOm�����v�������t������>��;#�{bl,��7>��yX����b�ʫ%��VKr����PW-ɡ�Z�CM�$��jI�Ԓ��%9�RJr8H*8Ǎ�.ǸK�]N���q�d��a��a��;���s���
i?��XmB$ �}$"2|d�۱��>��c�	�] �XuB�⅒�4<K��������L-x�Ȉ��dW�7�i��]-z�}����%z^L���y1�ڢ�ʤk�j+��-��L����� ���SY9�ަ�~���I��Q�PS̻>	%�0�I�((����S[��eڒU�OK֕>-YX���de9�Ӳ��lO�֖�=-+�4e�j+Mٲ�JS���Ҕ-��4e�j*Mٲ�JS���Ҕ���4e+jy6e+
�9�8F4eq�h��є��)�#DS'���(��z��~mE� �GQ;����Q�N�W6�v`�'�P;�Ǔ�C�hx���hw����T��5ٝ�z򻕭YP.�fE�PԚ5�BQkV�_iͺ����XԬ�q�jj���5�Ű�t�=F�+��ǠrETc���+�9�\�=�'�2
|n{]>����c�����ꞘW�c!�O���yN6�0�Ɇ�9��<'ʫM9�V�r��6�PWi�~��4e��T��_**M�/����jJS�K-Ϧ엃���s$�c�x�S�MكC�Mك3lx�#�Mك�9�>��DHSv�v "P]`�:M;���g�s̴u�v���N���9`ډ�?U�㥝�+;�K��yn�^��̿^ǚr�G��i��+g{���&}�V�'�=YZ���dm�x�#��Ӗ=��O[���h˧WzR�sve�}����u�"ꋶ|���~I�g���H�J|��xb�]eO̿��3����=p�o��>�϶��=0ڲg������Җ����e/*+mً�j[Uն,j�mYTT۲���eQMmˢ�Җ�AB�:G Tǈ��NmY"ڲ:C�eu�h��іܸ�����mɍ{;���ƽ@[r��d<Ct�?�ܵ���z禽�`Yr��N싨w��ہ��٬��k��YN�z���nA1Qݻ�q�[�wHy�uKʽ��[�� �U��$���+��ͨ,Z��2e�j{���{�T�����ʕQ�s��>?j|���(�ٓ+��GO��W��x�gE<r�xc��'~.�^�~zr=������}#�+=9.�����JO�K]�'ǥ�ғ� �	  RS��TTzr���A5�'GP˳'Gp�P��1f<�)<�!V�g�{rDG�{rD'8����|�w�r���H@$�HD���>��R����j�;0�:2�m1xE	f�s��īJ0�c���%��n���K0��#y�Ȉ'�~$O��,���C�H��^G��G��yK����ˬ��j�S�#+.�+���~�q�Me���ʑ�^���b�����ʪ�#���W����z���#��^yG�7�c��\�Ū�|c��^������=>���r[�(����F�����B��}Y�V�����eUW�˪�ڗUM�/��j_V�Ծ���}Y�R��:H*8G 4ǈ�lN}�"��9C�es����ї�<_H����>��y��@�
};�C�ѷ<d�*};����M�v��#'o!�{�r�R;0�>�ź�Hkt��[Q^�{tkV<�bU�U��Y�e�,ǰ��L��8���c�1�w'��{L�>�=ga������;a�P�s��&J���z�z]j��vf�_��*��˕Qf�	;#�92�wΈG��H�o�Ǘ3���ٌx�g	x��͈��(�ٗ3��g_΀ʞ}9�z����ٗ3��g_΀��}9�y�e��j�}9jy������Bt�@��1��N������;Æ�;�w�c�������o_�H�=���3{,03�g�b��d���f��H�;�>�m����#��}� ���O��oD���^���xO���g���S���?��v�7g/;QYY΄�~#��UQX�}
�-�PXn����(,������+��+��Z���rhYC��j�#V�=�h�jY���X�why�P���ڊX��LmE,�;�\��ھg+��Z�Um�*��jUVuժl��U��T����VeSO�ʦ�Z�M-�*���Bs�Dp����Q��!�*�3DUvG���NU�u�{�bУ��v��U��`rQj'�=>�1�KR;���<�%�e���娝�b3\b-[�wʥ���q�Q���z�Z�z�Y��3ba��sF�,�t�pYZ,_Έ�}���;���|9#���|93�{l�}2����gf�\�\��;3J|n�Y��cx��BP��˙Qe]�����{�rF<��w���(Έ'��Q�/�|lW��/ZΈ��D��Qm�3CTY���U:3DU��QM�3CTQ���S:3DՔ�Q-���AB!9G $ǘ�x�X�x��;3$g��xG���Np��g��`���2�&���0���2�A��x�I�t>�V���]3�|������2SqT�y�i8����̙i>���B���3╟��x����n���{��x�on{&�o�5��$��d���s�Qu�s%��c�;QUU�/gBQ�1��>��~c��|.T%��˙PRY��	%�c���zSVj���'�n�jYq�����N��q]h�=�X+�~JW�Ҿ���X��TcEW�����eSY�˦�ڗMU�/��j_vվ��}�US�����ew�P���1�/�SD_v�����}9!�r8A�%���� -.M�@D ���M\�ځ�g�.P����g���:O}�%�{Y�ȅ�ث�3�պ5�z��9�e9�����'�9r�˒�"^[;gĲ�F�3b]q��������Y���=���(�vy�RA���Ό
�썝%��;3j|.o�����r��2��}e>�w$z�ȈW~�����{o�xc�]����,g�7�GE����`Dy�,cT[)˘TV�2&u���IU�,cRS)˘TT�2&����I5�,cR˳,cr�Tp�@Ȏq�e�N���q�e�ΰ��������18��v����W���c�r3���3D.I1�/#פ)x�\�b���`�1re���-��)>��x�ȈG�b\,�8���w��*���V��ڎ�c����(��/cU[_ƪ����{��5�XV�0cUW�/�DSV�a���~���TYS�o|��]S�c|y7o���p56��5��,��l=�u}wK�g���'��+�~P�H���$ЊX[�/cW\�̮�Z�]e�2��jevU���j���UT+���V�PM�̡�R��ABa8G ǈ�N�9"*s8CT�p����we���Q)���s�L�}�����mԛ�4k:��&�W!f"��0�yϨ7�5�t�2�M�@��;F���ߥ��`bX���Q������?#����+�I)XX�R���N��XZn�L�ھk���(.ƙ��(�9��+���\�\>Ǚ+���8se��g��c����"�{dWF��E̕Q�qf�������I9�Y�7~�5���u�>�䅟��vG<���]�;Q^)͔�VJ3%���LI]�4SVU)͔�TJ3e��LY=�4SVM)͔��,͔$�s$�c�x�Sܥ��Cܥ��3lx�#ܥ��|K����������Z�      8   0  x�U�ˑ$1D���L�|Y���j��K2(�)����#$L?�L�G��HDW�WR��GZ4Un�J⩲eT������W2Q���T�H�d�+3���l-����C������t�#��U�1�&��ڋ
�z�׃l��*�l������%9�j�Fz��ޛiAlBs�>�@�K�~#�sW)��j��W���)ۯ=�����@���%�ׇ��_^�v��9:l��Q�p�^m�+~���9;�%�W��t�^B���K�5,)pګ�����zu���Î�7��+���V�c�����%��pqti|Y���8{|�ԳKJxOzI	GeW2TQ?(�Q�
�^�%X��F����k�n/�ޅk@�G+��s��#F�gI@OTm��]�N��DN���nzeު��ܓ�F>�MG��F�Q�����JO��Tݐ3�Չf�Su�xM��h'G��f���3��o&BT � ��.Ԅ��.�d�C;?��L��9��3U�:���}_���?�`��%7���$�g�M>�]=�
C�6���V���TÝ8[�������G�      :      x�m]i�5)������	3����F�L�<ݕUy��	0�<��ɩ���,���j��ʘ���Wb���`�Y��_��!��~�>cҘ��_j���YO����\����K���d���.��+�y~�/�!�I�?�����k���7�w7ԟ}e@�����3$��]���o���8A������_���j�`�	#+={�4"5�<���a�ΫKP2�*�=%���or��>o⫇�Mx��^����_1�_ʟ���wL��x5�y�^�����,� Y�kI�Y��	r>�������?�5��V�����<����G�=�aD��=�Gp�f{b4��q�{�È���3FLܼ�=c���Kޫ"<�߼�3�A2�!K=S.���3�z���UJ;S�V�j�Le�q�2��Y����-�s&Lc�����$�7uI>��꿾
�rve`��zv���?}��=FA�[�ٮ[ ��#�ٮ����7~�y6��U�L~<����+u��ܕz���pW�jK�*w�ޥ�վƔ�i�������ν��t���~��`a�䮤�,�����ݵ1>��3��>ng��9CZ93��wiv&_���i�̘����9���T�~�r��1/m���S�J�MN�n�q��p*%�x��8�A��w�z�����	�w�I���X�8��u��',<��wNr����
6�݇���
���x�`)��HT�� �O<��^����P�K�ÄQ�yy��2j^]
�>5/��?��R�z�ɐ�=��6ǔ��_�������`9fb��ٟ/��_�/��{6�0 }�s���o|�MƢ��S����G����9�� 
36����|��i�z�gA���G]0m	������ s*5"CN>>�:)��r.u-h���ů�4�|�쒮�<c�0H���c����J=�\��h*u�I҄Q���R�$�>ͯV4��O��	��}�X�~1��W���9	���u��#{x)s��A�SIA� ?�J�<a����焧Z�o�����Sb~� {������Z�=|��I��p��1��>	ӿ`_j�y��h��|����s5�O!�Y��2���|e-���kU�g`��H�(X�hZp��B��{�V���{L#�-����K=x�*أknR{4����`OxG#�#��3��Y���C�t�6�L�7���0����n�[(Y@�A�P�6\�"��E}�R?�����\,�3h�J��Ko�uiȾ����e1IH=�����=)0-	��]\`�K*�0��9L\�H]���xK^b���e}�v4uj���x��<s�ׄ����p�����^��⍚p=��e�&�S���b��=1��9��ixf�-y����4�׿��R���f#�|�w�����S��^+�й{?��ykE<�J*VKyh,�`ϳ�%�����K����O������J_+k�XK%�?����y��on���!Q�9�/�9��ԂA�;�CkO����^/��W�]#$1,Sn[�ʒ]��u-?|a_A0��8,^W^��?�}��e�FB�G�p�=���x�Ɗ�X���<0��:����m��;��5��p���`�Y:@3�^�ι~I�"��WK%����2p֢o|��&�nۣZ0�(�ᷴ�8ӵ�Z{O�2����/#\���_Nۆ[8G' �F�ˆ��I�ǘO�Am������z۵�]�b�J{�H��k&˫�p��2X�L�S��jGq�e^�T~%����l�U����a�k�*���%p26E'��\kݥ��|W��Zkݍ�6��y$/�&<aٺV9
���#����؆}S�w}�-�s-�g\��9 �O��(Yw������A�s��鿾��k%,}J��F�q��%�F,��K��������,�u��	W��jcu4��A�'&r(��L��9��V�&g��v0w8�ݶ�!$(��a���`i��ߒ�l\;,�-q�� �8��Q�$V�X��?��G�m��N�|���z�������1$8;R��aK��L��Њ�%s����`E-�8�O¶����]Xv��$�7�Ѭ���A����N���3�whB�������)�e�nR/�/Nڛ7�c �-�LGnIX'i�z� �{$Mj�#�8"��5�K�	(�3�kB��6����Ё%�E��E<��x���;?���@Ќ`��,9�����U���J��#�Ú���q)p@)-{$�X�Mw�=�(�������]����:�9h�G^��?ߨѱ� �,�s?����6_��ƍ��C���4>ᭉ3a%��3q{r�x	 ��ԗa��{$p'aL�m66�Z��A��*����J�xv!�4S/�-�sKz��=i������ᦄ~���q���1�����:a_l�2unAyA��!��!��2��R�ı58��@|喼����>p�1Kr�� �û�|% FjѩB������{�hk�`���eb�)��_G	���~�v����X���,~�ބ>��L�/�}rx?8�����uL�'{@��?#`�LI�9��IuCA�,_��L4!\��<�P�粜�q��a�8�g��i��� ��F�6��0.���d d�w��D�b��m�l�cF�i6j>�1ms`M�,\�o�۴���_K�G��S��#��!���J�΍��l�|8F��6��47��4���k^�j[{����ݿ~��жÜ�j���=Z��w�a���X�%��Q+dۂQ��B{��d�5���)�F=RO��sR���.����.	��6�6bj���@x��@�����؀��G�n��ō��U]���p.k�D�����_�O�:������Y�[��o�p����a�n�t�`���YS�! �;q�뢗�L�&-��Bw�L�
�Wz��(�nr�֏�nrڼ�7&b��#n�V0���^=�.��չ�e��K5ĩ��Rc^	-�mc��b���y0*��"��E�7�L�C���x:�E>�H�
JR��GN�ޯd��#�����<�-A�u�h�`�7(J��i��u3j�y~����VH�k9ח]|�Ƃ�*��?tzu֜��lZ�
�Y�t���Tڡ�L�DN9��憨bٛ~5�eh"���0�N��7hhlz�q+Q��X�N��'���W��銷��7��{���q����h'���nå`c����d�6ez�%�⍂�U���N;�:i�G�ϴc0��Nϖ��������cM������E3��2Mx��ŭ�"2���Z��d�8�Y8��nnOh�� ��������V����q��*���t$��>;P��\�� 2�p<r�vΗd�u1�߼hdo�@� �p|��M~���Ym]gv4�R��A�&���p;xJk!B2;/��7I85MC����=g��=k��Vǯ�5Re��M���L�������'J|�{7��G��e>��ԇ��+�S�|�ĽpP�ҍ3,��\a���p���z?��h��LDwš��d���r
]a`B�BD��@'������x�GO���ο�Xvؘ]��8��
dx�p�[BC N���-a���ϓO��#�r`����n���CΫ����U�#�k�&�p��h��X`�x���d�e��x[�qn^����%q�FI��L�)��A�9��<s��j��o4�2�y�K�D|��+�90����X��=���Lw�I���G'{$��zF>�ʹ{\��\J⼹�,%͝����+�%e���Pwv����Vp�JsDh�9mC�&�ݛ�N�_ࢡ-R����"�b��ÐK�s�2�B ��8�z6~N]���Ϝ#�Y_���T݁�G�r忠d���mh_�-����5���v,�<R��VNx��Bc8��"�*S`���"br���c���ҲB�B8C+T10 w�be�p���&�}P�*�q��q
p �q�3t���t���'>�C*B5Ĥ��b4���?;    kY�, "���$[�D�ta�1 �[z,~�����q�"oy@��),�����A��0��>�Z�8��)}BH��>�Ȗ�!&�TmU'�"	��4���1k-L/Q�?Xg^�"	��kѓUs���$�E�hi*�X���\����ڒ�92<n��i�_�q�(��ا;����T�$��²[ړ���8�$�%Irj�0���>� �e��$���2��vxB��+��!1:P;@%
/	�^�iv@���"����q�່��D����nO���A:�p��s+:b��<�E�#��#�ccd���!X�9���@M��Vb"���[�=��t1B0C'#|��&�����*�K��˒Q�{\hI�-�M���IK��%9aZ�I!�.�L������b$Ŧp`w<c�Y�IϤ�C!��S�'�(����`����s�,E�%8����2F`ǘ�	|ӂ�p�����p:!���a %�����1)�$�`:�)�� g�[.O��(�U�n7�?I�C �'8o�7x��#}c�,νw���w=�Un���׶�;�c�K��a�B��$��Ѩ!�:�d������mt8�H.U	��V�}��3?
�Wl�l�L�R�JYa���Y���4`�˸�_(̅-]�J�O)�sU�5d�-��\!��ac"��f5��4�p���AV���ʅ�]����P�0U޷�.� ��%�DL ��QN��	����`���̊r �j���2�$��ےx�eG$Z�Z�����	'E��@	��OŪA����a�f��,�u��p��)5b�|D���0i��O����9���	rA�����.]�&C��(����6y��i������!�=19)8�&�.�<�;P��5����	 
��-��:8� "w�����<J�*�ğ�;B��V\� "(���I�EZ�q���r�%1D*�ub��`�dk�QIR!�e� �)� M��]t�G�6�E'�1'0�cn}U.%��
�;h��
l�8H|�����;%+3���9�[P�ĕIP�N��J����=�0>p���*���ئ��͜�)d�(ۣ�s*Fl���l�tڡ��'�����Ω)�����1��)8�TL�"_lC��`�f�����9ӿ(�@Z.�/Gԛ�^OQ��R���M���:�h��^#��r�}�5D�I#��ֆ#����(�)dz8P!oCB�8;�C��l������-0po؁uP���Lq������!{�p��,��Е�<�M�\@����ЗTCM�G�L�
,8R�̘ ���$Z��/�jD'�+�A��][ .���8� ��(�@�\���
�=��%TU����x W�r ��qbe��S4�#E&*�
��0i�3�g�(iDOg�����&2��/��ē��7i���<2�grڣă��܎\��P%d�QD�.Hfmp-�xl�79N+w�4� p��	�wH��w�Ϫx�� =���7�8q$*�"�{�{9H%��p�WF���gg�`'a��Yx���9�IS�I&����AX͘w��$�3�b�d�u<��z4D��İ/�xSF	��+ٙ#���c��0qR���	{������J�������R�^�!��	e5>��1)b���<ѓ�%~����4�!�.�p�Di����g�x�1��2r�7�<)��������<�CX���|m�w�L/�~<1waÎ�#��<n�W�qK��xz~�ǫ�ӈ��z0]V�\L�w����S���t�p�w����oU��;���O;�V�=X�!��O"&�З�s6��<���y�8���h��Z�óOU�K�'��1�Ѽ���Uh�rr0��ĺ07&����R&w���B$�p`5e.��wK���(��IHA�����$��o�"�zq�G>a=�#q�a�&ˁ+�U]��&y�t��)n�ɓ�i3����H'�pH"�Bo<t:ѝ��Tw?�&���W-tS*w)C�X�dCg��o%I���D�"l�`=���?M�2��S�~Wy<	�K��D+սLMD�!O<�53PU����~R_+�[(��q'1!�]I�tc�tF��tF&�����T�|�o�o,��O#U� Vy�tY Xd��F�ƹ����wC����+i*��D�d�iTRL�7��*,���Bd�S�q�I4��Lr*$Ѓ�O\���=^�M�b�x�	ɳ�Lrǔ�%qM1�c�!'I�%�<0�#hC���4�MqŷX�}��K�(��9�0���"{�;��[�⹯#R$�<��a�;q��L1�f���t����V�$*���1�Ce�V<T&hCz�NXQ�Y��Rӡrq'�u�U�#�|3dU�c�@O`/0�S��5�Ӆ<�s2+B'^.�s3�d:E�!�q��MD�'�t�)�72$gn���6�ƿ�	��̢��`��G6��a��nØ��!Y�o��)2��T��
�,�#�H�~�i�:]��	��~�ʸ?��?`�0q�6η̐v0�=��	L�+�����dF �cM�X����F	üy�T&���묫���y<'��47�dN�p��ZP4Kc���
��Τw?��eU�#�qZ#=���6N�tw�p��U�^S�C���(�wD0��K̄L2��-����Tp��aB#h�D苉qD�X��xd��M�`�8yS����q���T���0���&a��3���z��C�0�i����ʮ��E|
�x`-�$C��	���C�#�rf뛜TI@J��lX48s<ՈI-���`�M�$:s�C�L2�.\�ϡx6J^�M�v$P�"V�Ϧ�7%��%^�l���2!n�S��N�1��(�e����gF�(%�>b�;+�y͍JV�.�qx�h
I�l�8��j�1~Tz)�p+h�m�6_�z�"\�B�7Qz{��7�:hJrR�_�௘�'>��q�>�"E<JeXt�l�9Y8= �S����İ������Ry�.=�$�l��k<�k?�x[#Q̋<-���@`��?��H_��>B���;<9(D&O��G�3���7��(�^	 1�(��j�ؖ��sմG)��b����	����vl�Ҕ~BgA ���'&x�m�����1$S1i�z���:����:7Ln��9�WQ���PQI���TQ�1����	��1���'l�j���������MYc��x��3������ޔ�lH]<�A��7rV��!k��;T�I�����Py$Ƀ5��K�%_����$���
��3Pt��V!%�nHB0��A�:a�lw<�C�!��z�\ s�up�(9`�A[?:Q	�o��N��z���WEwxx�#�f�������f?��8� �ណt�T�T��pV�[����jbM��������Xh�>
��O:�C)��]O!q�<>����3��������`L�"Z�'��.S��Gd7���d(S0Rp�(L28S���Ɏ��<��?�� 9�=�-������G������{5����|�Ԩ�x4�=5�<�"�;�M��mT��H��h���E��3�%���8����)~�W��/У�\�}��FxlzT��;B-̓���6�<U*�ͱ]�a����(zT��S���g�Ƨ}2i�]o�C����X�������2s�|J�ϙ��K���0�|�]������	��z���ɦ��J�<Z9�=M*ZQ̯ Q�h^1�	J=*NQ��<��GE�#�K����)�YLf�ĥ9�W��BE'�~	v :Q���z�E��x�QI�n�P��}���S��_a��B��B���{{@�N�|_�'����ݢ�N2��n�P'�d��-Tt�_��0���w��t�o�z�����G�\�*zT�K�A+ZT�K`�#��CE����=�YyW��:O��|wU���|�wK�:I��uB��_�w���=(�牽:.�P����7�y4�ݷ�Nz(�݇���Dj>�_����P'k��wCE'���L�?���F�V��8    �}���yP�<~U
��0���� Ǒ6s�$��S��Y�O�>�h���Q	�\�����=\%��o�n�#�$Ε�9E�W��̉	�wg�$�����7>�{5��p���u��wk:^��Op�ʢ���0N�B]�%�}����]�-*�;@���c�~�������y��0W��yY�vI���)���yi�zI�b����kOL�Ү!���@zh���e�NC��tKޜ,K�d�wڵy��tI��o���|1T+=C�8\CB��K�0j(�~4\(c��d}\��L����-y!�!ǨH�ʠ���gD�c�N��9d�Ѣ9�Za������X�r�"_U$ϫ��+L��wT���Ý�db�{f�+'ڊT��bd=X�9�Ȑ�=cܫ�G�K�F�*�Jy�W1O���2�[}\��V8�o��U��wqC�r�J@��j�q�^u�y�ĸWc��|%�Xe�~�t��X��T��w��Y��|%�����悳-t�%���ls�'�r��f!��l쭑������<a�	���m�ک	�_%�U���T��<M૞p:�sr��j�vyh�l�ˋ"���Ŕ-1d#߭�"��'"�� ��	~��*�WL.�����󣄐�e���Q=���H>i4�FZ:����"a�q�Rpv[.�W����o�ڲpo��k��9:���Tf�qmy�;���e��0��,�f�2�
RXa��|;��kX}#�mj���"��*Ak%L�%h儆组�����hWu_C���U_�@T�XPr��S !_U$�>2�b �yB��������U�Օl�f������G��"E���G1�J�\'wY\CY�v	�M���;����>`?�ͭ�d���P�K����o�Q�!��L����evz���y�[c��f�~'��ܪ70{.	>
P�S��9�0{�滍�y׫rI^��y�}!����T.��91vD�wG${NG������G�W����+ݞ��A����\F��6�R�d���2��+�<�.�yuAK�f�My��R��B2/����8�k.F�����wΗ��`l�c����4$}x�393�.�5�,����Ih�L�gm�Q:�ھE����F9(Y>Ym�ND7D.�KP=��P����,z����'@8�(�M����<6K	ƕ�f�P?]��u~�X/Ȑ�~���<4D_�/�v�ZNk���Q,ސ�n�}��/�����@�^��n(�~�c��n�Sr��lw���m��2 =�Ȇ�@��Pn��z���熔���b(�y�?��a����Z�VG`�b�!Ca����X ��>4�Ua�P�|��yȐ)v�UPܼ�P�$�s!��PG����������m ߝ�L��ݔϞDw��iļ'_�Hta�$7.m�v���8��v�����D�9cr�Mh% ;�a���9|r1d�����b�
_���I>x�տi;��"��k9�^3��ͼ��kfRyw7CO�z	^��!z$������	�j�X~fT���5P��T/ah�4����[�Y�,���f�nBC[�~~�hi�ɮ��f�G�@U���w�K�2�������P�,�YfArd�}5!14w�Ɗp���gO�HP�俑��i�W_'W̉�W�2��p��
Xn�Ю|⻏�U�;�"��k��]���b#�!$VE��)3�*!�5]��\��K�ιJҚ%N}�65;ő�]��L��mjV��Hc:A<A|�1���s2��^ռ��e2Nt~_��{�֯�)�4�w�M{��W]LCj���_�G��Q���;�WL��kU�J��&��a�l>r3��@���p���4�Ť$F��x���x���$����Z���#��K�m����
!��4Z�G����,��U!(C)ﮛ0������ͫf�c�w.����kNy�c�MC��@����h��JY����6--�PJӼ�B�w*��@�(��Pc3}�3�@Y�)`��j���n�e7����t�,,���LC��?<�_�t=Xl�d�B�0�y��W�eh��ޟ��F��(��@�)TС��8�^
�P��i٦�7 ���^��3(_����IN�wU)CS��@��8X=��?���n`<.�X��j�!b�����WV�y�/o��Nǫ|ו2���wt�٩K9w��!{���[�_�Z8b�ic#�|G*����K�W�S���n������]�yV�W5���#�&�Ah�r��gHu�|2��:��y�/v�|BH>r�n�����n�T�y��%��ܽ�,��������1w�Rq�^����῝Mi��r&�_�ۥ�z�P(�V��$A�z���y싥Y#5��:�\�g��]��������K�6�[J�	�9o�s���if��5��h9���	�24��^��˨՟��Q�~�-R�y��Hs���������GH�p��;iE�*8���G��xr�c|r��B�e���K�N���f���w���T��ﲡ^�#yi�cpݩ��8��*�d����ݯ3iQ�fVO}�|�*6����05T�WOc�x`�`�_=-i�7���Z�������u��� �������e��{h���4��������E<'F;��
���T�A	̕���>�9��^�p��)�	�p��ʥt�е�[x���G�Ý�k�Iq�G��9
̹��������1Bn��T'�CP^l�c)7^���˿���E^�}"ǲA1�����c��Ȋ�3ʚe#��7\�Y�����x'W����S-W���tx��7hOT\�6�!�&�Qu�$��{ǄC����i�2e�tJQ�c�d��}W7RC���G�9$�.�۔���n��OyC֮ՓT����VOӂ��QV�P��ƽoD�y����8V���Wa3CÝtK6�^5G,b����U��P^��r*�Z��I5f:��e���w?Z�3Z�d��G<��tk� {��p_��rz\��OT�Ey�e��%����f���a�=���U]9�)�$|��н�7�_3�8�������:]<袏��j��0�Z�@����vqoV�{�z����/��TX�fJ7��
��b������;F��/V����R��֘�hh*��og*RP���(�~�����A�yG��Z<��s��(#hc�4K�(Q@��JT�o��Ǐ���!�rDK,|myF���im�'���:���s���ɋ��X��J&#zu��R�J�
�B)��6�.[�Z񪭴��A�w�+]�W�+��O�u�����Jieҡ+D����;`�Aa�}��X=	��.�h5D\i�V�`ḏ4���G��ߘrbWe��_��y�]�~5.�:By,�m�N�%B��	���}�&&��\��_�K՞�}T�W�4�|�l7��7����bd�/��0ȫ��B�DR�{�8��h�p!�2�B���.�k��\�����=����X=Q�����Mk�r�D
�.b���߫ ����۫���S2*��L�M^{��W�׫1T��)��	�zR�J7/����ˀ��ޫ!�+��"��)��+�5�'H���dw����}�{/g�����0:��l(1�n�ko�iɊ�P��(6����r�V��rW�5�&��d�ź�Lv\iW�
�:|��[:5б,���U(Kc��w{�O
=�證�ĭ)�X�ƪl����ՓU@�� t����2+�L�~O�J2�Bu�X��➡��e�o��z�Coy��1Y�_���ۮV�fJ ��R�9��/���}xhG���݅��<�<Uw:E�J�x<r�!
�]��])t)T�C�rv#��`�
},M�B8�Z�,Mk�Pqӥi-��K ����BT/�F�GR���a�(O�|�g`�.�j�/̨�xx�s��+*���z��P�C�;�c;�R���-���-FW������w���-�ۣo���<k���G]q�#����Q;�#DSl��6����q`�G��֖���
���Q�o*�8J�8{�ZeP��<�J�����ZM�MWs�����z�Z���8���$��7�}���>�n�tsW5 &	  ���&��VFY]弬�c��Q=%�cP��!X�����W�G�]���:���f�dd���:�;�*;K����J�MkU�9�8����#���3ţ�>�T-�:%P�&;'<�;��K�1�͔�&N`;��õ��3#������̟K!�[�)�e�Su��4��~�+�C���%4̚��މ��|�
|Y4��WoA�r�bk���X�~	Bxc,�$!���q�Hj=޾+��ç�=����м7O�>�H�H;���B/c)C��}1|��)�r'�B�K��%F��Ӊ#�3��l�R%��6X܁˥��������4ƾ�	�R�ח�8�;��HI�R��a��S�3��b������ly��d�F��K��#��TX��f�M���;F)5�Ɔ�E��{��W��&��6����ώ�@���/�h�	ǖ��w5�ݦ5�߬�&R�w�G�����	���9�;]��-��G��|3����|~�࿋�;���?���|���#6�K�����"������4�.������.c��X�q	��c#SC)��{�%�߇Ҕ5w��,bowk������R��%������BP#-3.vV54P��cN�����)1-� 1��������JNIy��y��b��R���p�5%�����}cM�a��m	a�eY+Y�_劉��OZ�#�{��l�-N�g�S���dd�[��@�tXm��)�Օ�W�]�U���>�$��]\�Š7��l�o�y�ڤ���Xq�~hI ��W���8�*�>=fG��ޕ���zb�6�����76Zȼ��)�-$ �i�r���	��p��^��Ցf�ŉ�Fx�� �*�c�&�y\Md�ۜp���.������f���=vq�^a��g�1��bN�B����f���K�^*��:  ��
�]va���԰�A�h@Y������Q(J��=�0�U�>?�?����A;��k�(��2y�ߕq�NXw��]0顥��髭)����y��F�~�]\�Mt%Zڄ�մ�pR�h]ьW-=�f
��|���k��<m�ˤ�T]��w�%C�;������e(?Ν�.Ck}0W��S@�4��I����y�3_~(��w?�5��v6���m$U�i�|�Wq���8ǘ��賫~�5FmI	8�@W�����S�C�3���<�!P�W�tG��\SI�T
>Yg\�]HѼ;D�$�%�J�̙�mB���gLe�3}��`�B퓆��u���l>cd��|��:���t�_?Oku��A�j��Z���Rm�]*BzZP��Y2wW�_�q���������:̏�ZA#w��Vw#wCÐ��X$4�O�����J��f�U��n�j=Բ�E��ZQ��UZԼ����"�LE��b�6T(�.�i��Y�c��\=�4��0x?�a��r���^�!����M^��]j	�������"D����8����o��}��Ξ��׮c��r���R1wG�u�3�Q�`H=�k��A3��]b�~�0 ��*iq��'֕
|wɳ��Sw�ZC��y	��}�)�@�vVK����QR���/(%BK�;|�&�,=�W3ݵ�D�_d��T���&�}8�\B��*�֗��رy�/� ����YS5��r������(�p���v\~� ��-n�L@$���~��\J+��k��e�C
��-��vm�`���S�����`R��#�B@ȏ/m|]�!Ja��^ē޿���]������\�V�	S���ZK
���0Q�W�	C�����nC�Zw�O��e�!n_���2w���I�����LZI��TS4,H7�N��|�ԲN���X�PU0��2��L1�n4κu�mCu��6�"J�p^su��d.��$,t*��H7<��z�~B�Ww��^+)Ԣ \���s�I�.4w5Z[�U���ޯ�u��s�Rªp`���{������GPB�X�ff(0>��0�t��oki��Zl�T�C�P1�'$R�^fk�E��&���:`�s��W}�5����G�y���HG'*�zu�[�Y��$��89]>�m*y�j*�&� ��1ޚHލ�+�n޲���9j%��%�b�
��Z,<m"��G�U���%�f�ݭ����m�k�%�[]W̻{嚷׽���?����B��	��'Yz�j!��'����&Y���`M��E�̧���70c��y�=^c�c��h᜾؋vt�P�wWB��;&Z��3H�j�]��b���D Dq{r+�p#�'�^�>�T�����&M?��0��`�8�����h�~X�h��uJR�L�����~����d      <   r  x�]����(E{���Hb#���X��ŭ�zS���2p8�<��k�g�����3"nC��<�8�F�+���蔈%���⟞x������c��ۣ��5���z��g��k�����j\n�76���G�7b�g���O��呵���qD�(n�|�o�m�0���;�7���@��-b]�ۊh�h��YȬ�M�}vf6-�l����ljܙG拹����Y�O�-AbqY}#��b�ræ���6{c\\&Η3ʂ��x�o	-��fj�=gbH=�L��L�#�8_�]��9U\���[�qo�z�/r��c��2������C��4��1��)}[dC�Xq����~f#�k�_q<~�0v;{�l�c7�nb�Kn_���1��Y7���
�s�7���q�'������%��}��~��0�0?��C����D׏Z��0��}"�1�����~�oĤ5�HI��f|��1i�_"&m"
��>{}�^Mn�����7r��F�u�1��F3/��x#'�P��,���@��̍HJgnA��,��iҽL��:�2�ʨ�*�-�(c�i��ʴɨ�*C���8�,y[�vy{����i}�߉yg]��r��"x�N�ku�^�5[���'b�/ӽ��	�LL�6C�ߒ;Klʽ�>��[�L��b"7l��N�:e��f��l��0j�J%�0��9���ܰuʒ��nOȉ���Ie!��IE0l1������I��#7�"H;�;��vBI/l'������N,���U�a��ӳ��bZ�F$nG�vJѷ"��"��"�R�R����1�	k)c~@$��!hoE�fEИ 1N.�2bq 1B�em~�l�}ǏY	��� �N\�"�y��� �H @gf �������W:� �0�B�S!�Ö*�� qJC$aJE�0mL-	SJ�)%���H���H��� R
E)�"��R@Ja	"��"�����)�A�tTD�>SX��`����DJi	 ���RX�H)-�� R�������X"��Rx��)<A���N6R�Ҳ���@Ji
 ��)��:�o�t�<��l�g�s�)������簍����d#��H$R��Y"�W������R��4q��'.R���V��J��
�M��	"%LH	���<q��'���	0$�X"K\�h	"DK1�vd`��,qR>%B@F�� Iez@H)Y K\�`��-A�`��,q�2����)X�"c��'��	"O\����h
"EW�늃����k
 �?��:��H��D"e�>�k�����a)��D"e��H����2��H٭&6R�Z"�2x�HY��S"e�ÖHE���� e����� R֙Z"e�K��� R6��t�������� a�ZH٠�!����*@�n-��,A������D�XK )c-����2ZH-��� b�z�	 f/�K�l2�D�&-�<A�l~v!��bFO ��Z6��lVk����l}PĽ��:,�������`g��V��l}��l�;cAA�V���� RR��*)@J�p��O@�� B�'��T��-'��	 BO!-v��3����� R�%�k	"EK)Z��� B��E��B�����Z̮%�k	"�Z�H�� ��q�舐����9�`D�ѥC�]:"��g,����!)G{3�����}]OQܾ�7�A��(n��{��(ol�%���{MJ�!9P�Mo���+��(��ɐ�v��+�yg�0���"��X<?	��"����CޑL.K�Z�e�l�c�}����H��ͧw6v�f�h�H�S ����~<��̳샿� �`c6��>��G��_.�\ҎWD��j��[ǫ��'�>��E��_,�xsA�o"H��Mw+8}aǛ���o*��u�z �>٭H�|V�9�	�,(@��*1_Ub���|U�9E"��'��k(�nM��r���Q��� '?݉=��i�@$?��Ύ�H�XQH��qgR%��b[R.UbNQ1�s�s���k��k��k��+�|�� Cl:�!-s\�,&`%�&��	H�YL�+sJRr�s�s�$��E���A)AI�W��}5�YJp�b1	�W�9�	"�b"��������?���W�Y      >   U	  x��ZMs�8=3��ٝ�S@Ԝ�v��ٵ��Imj/�[�Ȥ�����oS���U�)�����ݯ?i
�a��>���:}y͊�Zg���ߴ_*��9�3�X����gIOA���M�'����ؕE��̦*r�*�EPg\��p�$Mx��밣8
>e��֚|�������lҟ鰅�;�$��V�d�[)��ED!E��`��H�u	���mV���V���vt���Y�=l8�Ḻ
_\_�˯��������7���xs�N�����b[צ|��f�.L��]�cV�=*��=��?�����{]l����w�Ǉ�Υ�Md�X6�߲�MZU�#s�B�gI��C�Ipmʂ}+J�Xd�1��q��
8-|��烡���_Wl�.����P�cNtg��-`�"���ʲ�]�oi��h䑍<��~4r'�|���[��Ŕ�2��կ��T�W=�)�@"u�ë6�ܛ�Ǎ��5�/���,B[8���� Ѿ�����*��M�3���n��I�5�o�Cb%|K�ڰ�4O�͋�kv�.L��r��$��K8J<V����.�Eބ����)\],	=�'2�ߚ�.�,[�ڂ[9��@@�(��>� �'��P`0�b�;0 ��\��
�'Ή�
�J7�kZ�UA�X���q�N|����������GEH$��]z�����&�/���Q�}2�[��\<g��Mm�V F��!��6� o+����3[�2O�c�Ց_��g���v"�]\2ȴ@�]�k�&T�7�Ty|�B�Z�a�t)olZnL���%��T�D�!n�W�sZ>c��{�S�3T�&�U�. ,�]��r��>�"�z8SuDI�P2
.�2mD�o�:�4?���B�!nqYDҀ�A��ּe��3��@�+���#o����L�βe�%�k����ڤF@
��.�.`�E��4��&����;�9��
>�?�� �x���X�0�Z�s�ɘ�T�AH����}�׹+���|L�b3f��#,�'��'|�DZ4�e�mRA�D`�������m�뾓ÏN�Gv�xS���ra~����!9������R"
f���K�07=Crl���u��3,�d�y��)�Ht�Nz m%��i���ƣ��L���d�٣��it�٬�~�y��}ݮ̨��G����bTm4A���|4�;�('��,��<I���T�[�xv��d�����SB��ދF��.���0��;-_�dv�W�2͗�t���@��Ǌ�`��+�3��3[S_���+ߌ���F]=A����_�w5o���ɼ���s�޴^cמ�ЍcGc������ �&����&�����%$��f�������OS�����HD��Ԁܮ����V���E0�XB��������]^����L���7�%�fߦ�OH���^ ��F�j����!E޴u/���D��J�9���~�2�l9�'H߉����x���gm��s9�O�0w��(���$@]�'N���h�BF�:�#��`������w��1=S�	��@�n>��a�6�r��h��E���+����]��*���8����;�@�!ʫܮ	!?�d�B�kO���E�ٞr'�I<Zr���#�G8�݋V���;&[y:8���3�/���Ɋ���B8�m"=⎬g,�@0~qkΐ8�t���v�0��-GZ�溗�
��p4��kҍj�!��M��nw��V�0Q:��M<<��y�߱t�K�w�G���ɊP=��tV�wH'T��2���ğ���H�v�l#�6�
��7�}���0+?A��C�MXS@Z�e0Vt�h��2���u�������{!�G_�.����lH���~������m��V��@�δZb�yC����iåo�5�L�7J�R�肭40�����U�/=��]d*�5K{��<�O=C�U�`$RA"'#Ю��"����k;�w�>�'^؏��Q��׎��Cl���ݟ$�ȩ����'l���lC�9	_G~K~���n_�� �`�Iy!aV�0�/j���3�6Ɉ��2��,()c#�I�;3����Ŋ{�Ph���?�<������ҏ�w^X_F(���.(7�,�����Rn�{NK��F����xs&G36g�h&PH�R��RN�Q<^ʽ��HCݭtN��5�y�b��{�B`�tGd�8��u���*�h��UF��V�iNܯ�J˅��]�[�G��i��N���EA5�nv ������L˂����Y���FAN�R�P�qt�o���W �Y37-��t?fwl1{�/�s9r��8�M�(4���#��2T��7�d�Y�Zͻw��Umϒa����Ç��9y      &   �  x�}�Kn�0��)�/L��R�����"i�\�f"E�._�i��G�n|7�f{q��i6�i�tq����Ah�a�Fi�4�(�q�ذQzu!b��l�(^]@�S��9l��xw� >$�G�`R���aV
z�F��Z�hՃ[W����]tS���8(��lČ�6JCm�� �u�=�a��}�$5Z�4�,��7�k%��� 1Y'H��R��l�.���q��#�)�S:/6&Y�U�Q���`�Fi�2���S�������������|�u4�In���e`p��d1��4�2h1��p���P�8�ߠ�I�\9:���tPj#G�źt,����}�҇�<(���!�\$��]�t]��C�      (     x�}�K��E�Y���C	"E���^A��r�Iھj &��<����4~8�)��C?��s��7O�}�,G�i�_��%����ӌD�ę�a���@��T;C�KN�HL�$sb�INd#��xQ8��1�$'�H�^I4&��D�čk*�b�IN����cKmL4�"��Wm��������s���������ZcL4�"����x3�)W��Q�	������&ٝ�"r���"/3��K�n��bq�U�#�}(u�Id܀oɉ���%IL4ɉ%&Jʍ0�$'J$ʎ8j�%�Ǹ0����:oɉ%$2k�a�KN�HL�Tǆh��w�p��H�ʇƑ�*�I!2Pr"E"c"��&��D�Ă��8�JN,�(�XR�\�R.ި�#gXrn�D��ը}�.G������������&Y�����v�|��TG�[�%'�HdH�V�3&������+�D��8"Q0q��7D�,s��)������v�Y�����8s$2&�D�0�$'R$�q��&9�#Q0QW��Kq��_�xq|h��z��f؟��D�D�Dmѣ`�I�;�ۄA�ft�H��3w�G$�*�4�9�1 �%'�H|U��LSN6D���~�W�׌ӘM����#�-���ȸ������s�1�$'�k�f��|��V�\��r�G 9qD"cbO�M������?y�Y�c+{KNl����4�K�D������e�g��.9q��o3k�;c�I�#S`d
����V�9�dϸ�'� �3��O�%'�H|n��fM�c�INl���D͆.��IN���D�f�^r�D�.b�'�3.��"�d\�.9ў���UMe=�Q�7�&9�#T�2�UI@U�$'�H�Hrd�$Fg��%���._�a�IN�|�ڡe���蒯�%��ץ;�HŚ�Nr�� �^L�gA�(��[�3�����2�Mrb�D颃�6^4ɉ#q��6�ɘh��f�D��Z5x��Hy3c��>D�M��D�̘h��M�gtɉ��1�L�b�X��D���XΚ���D�D�Ǻ^h!`�IN�����f���(9�E"�c�Q�u�]r��eu�G-�!(2Qr�D���S���.9qF"������%#��F}3������ �%'J$2&��g�D��X#�`bM�e�h�[$
&��isF������]f��$��G$b?j����%'�H�~�q��KF\/�����>@��D�.b+��B>߉�>�<�O�P2��HdH�4�,��)&j��JF�R<C��~�\��{�CɁ3 j㯵@�K�������{X����Z�hRɶ�5��>��kLY������טo�O8�	�����A�8�M2��,}u�+�$�2����r��&��G	#k'9� c`M�q����L0l$���L��iR��}��yN�<�ć�����fe�10�%#��?'H\_y�C�KN�H|��k���N�<,�*=�Ck�6m)푇OɁ�����i�gb?%�����_����B� .7ɉ5A��YI�>��$'�H�^f�Wۜ�$'�H���m�/:;ɉÈ�o;_�z��ȯ�~H�G�a���Q�LSn��uR��eI�߷n�|9�8�Q`�s��j�.�;D ������7�6ɉ�(0u����h��q}-������W�(�����|�i��-��o`���MG�������P�g�V���}L]�����*��\?+�&-��-�+ c`O�0�R<����K��>��V�=��8����ר�1+��*�Jl���ʽټ%����_��o�Wj%d���[2`��(����ϟ���)      )      x������ � �      #      x��ZYo�Z�}�E?|oW&����Ƙ�c��J�f�����t�3��>�dE������jժl�V�O�/��1ȫ������O��v�Y���si����*r�"]�P���YSgP]d�SM�<�������_� `�A6F|�Y}���vx^�4�n#ߍ)�z�4�8��9w7jQ�f蕵b�Y1�w�y�(�#qrs�*�TG��]�����j\�k4Zץ����Y
�u�ꔍ�+�U�[�7۝5�+�G�.M�uQh d� +��� {�HG���Y�آ���ˏ����;��#����X.�P�I�#��1A?m�9�U�%��~q�O��N��.Bf��<j���E��\X��Ѷڬ�q�/oy�s�k:�@�enO�u�U
.���+��j����TC���F�U�^V�=���I-�10:�	5��bƙ�����U�/Rѭ��8�u����!T	-���� �+9�3NA(B����L>c�3N@ �^���m�N�I��?��={���`��D,�!�Ā
�z�]vg��	��m�؋ʈ`���	���rޏ�����*�`z��@�g}$D��o򾅖���N��'�n$��|�zݐ��y��̩�eG�{.��*c'��.C"x�r3c}�aR����?`����BB}�h	��{�{��ގ��a'[�@�T@�=|أG�?<d8@���C#a-�D�3K��^~�������/�C^e9�+�B"�a衄Sz[+%-`h7�5y�d���ex��WL�Qْ;�����ݴ>3إ������]� Z�;<y0&sL1�K8a�dgE@�0moA�	�5�K�y!wO�C�"��e �����0}/_�%�h���6AVM�DA��߳��0��a�m����WG�R/��e��8�\-�EӁҩ��Cv�>�8V�/P �ZxCU1�1s�g�^�:��KQ%��h�E����|��޳qz��w�SNqГL�Kؔǭ:}�+�7(�R��m�oVg�Bkq����#���~O�b����tfR]�RP�q���$!֟��^2A��,�E!X�s=�? xF��E��W	^�U9'�A^݂��&�`�5��(0��ʇ����Eȴn�k������z�rxvT��c�P�0҆�F��8�ߒ0���%�Ӄ�d0�aK�x;��0#{��p����W6�f��d�7#�6��
G��bQ���jj�4���������ni���F�5��kƔ�,^�)7�LM��5�P��m����O������ս��u'J�T>�2f�1�ۯ���6qfߔ!2�OM"�_��x;��N���&J@4�>I�'h����+����ol�d�F?V�p��� �d1A9������=�Ʈ���گ�>������s��-��/wf�ƪɾf]�3�6��2��1���t��~WgE��\}�af������[e�`_]�7}�{�3�>#�k�_�%��ފ�y]_ ����FL�@�ڥu?�;���g��ޠ��
6-�O�q����v�����Ϙ75)o5�2`^�+#�w')f�+��t��<n�k�l	Ύ ��&"�������A�hKW����uM������p����C���"ǯ)ì�rd���ĭ���b��	bFL�ݧ��[(�!�&���{h	���!��Ȃ}���㭭�n7uB�1@�]!gO�~�����^şL�9���}?��o-�!{5��|�wВZ���p6�����5��lB������9n�'��<��?l'"�<�;��6S���v`�3�C��Z��+c12��=j�?MӮr��H��3k3qn��x�by�pՊe�V����?��3NCL��{h	�k2 _o���	�j݁L�����Af�Z���ֳ�@�M�~�M^"��SsQ}qz�/I5+<BA4�5��!K^��0�=ϽJn�$P ����|0��yێ�j�L\ߩh �Ae�=��#g�D`�&�o�z-�H�҉�A���	��M�3B�R��0��n�f}p|`���0���6�e�6c�9��Bm��J��^�}%���qs/і�a{H�<�h�[��<�)ފn��G*\6'��5|�dخ�3(��b����p"a9��U#�+�A�b�N��V1b@W3��u��,MכE5�<��65�{$0���H�q���V&���	^�u�B�a����w�����	���G�8��K������a;{w��}D�[���t��a�:���'��;�6OM\yx['���e�֙��A��z��<Rfs*w�<��l�7	��}k�����c7Y4Œc��1s�э�8.w���Ov�J���A��l�<M�����i��y�Ơ���F_Hg�H�|��BK^$���<�c�b�d4�m-��V�{[�=č�3��Cǽ�%r�P�;:qa��śc�+����0H����[{�fz8�u�����daW�\u|�j�+�a�ұY��
�P��q�w����ɒ�8��o�c�V"���b`rl�/\��j!��@��pfX]%q���G�OJ�/S'6&�8�!۾@K@�l}!��u�=�QrF��9T��H�P8���tQ�@�]�����$���&�!�{�ސ%J/�$N��z���/��Ղ��b/)�!XY�TMZCߩ�o����~��+f�h����E^60�K+z�$�!��BK��]`i�R��L�a��(����v�e�k�O�e�O#ˋΦ�]����l)�����/'-�b�x�^0%��T�2N��3{��l�[]t.
]#��vFS劯;�=������:y�=0cq�h$jr�u\j�HFRRȒ�È��i� �9�[^�[ɚ?ci�����)s�?� ~ ������+����6 ��YbM�R�d�K��l��*݈exYKN�����$V�My?=���)c�n������z����F%މ3���Q�v@Z��߻�������[�vr���v4
wOl�ޕ</�����-*nڭL� $0E ��2J$.�.r������C8�K���2�3��~�ZI����2���>��C��h� ��T=���7����1q"��A�V��}�$�Զ�Vދ��ݔQ/f}��/K�������߬ �"cw�hi<��z����]��F��6T�<%{$���̍[�6h^�����˦[��o�+[4���'ƴ��6m� ӏ�W]n��q( �	j�.F}�������� 6��y�$\�W�f=L�I�0���$Q�8�,�w<�zJ>�rf�&HIWkL���Fr3RX��l9%�3�#��2��-�,��Q�-1��0�����ܴ��i�e�i�rH;�y��Ixҏ�a䩳���e�{��w��N�s��0�Z���������dL�W��tؚ��ثG� (����:�����:��z8��`r'z�A�����a�[¶6,l�d2k��{���έ���S%�ac2�>Ġ��H�OɭjsMư&�C���2P��.��=&^aL���������I�����K��-e`ON��j��	��A��'l�a�ds�G�n����_f��,"_��=���}���m������S°�K�������������:cI��ai���s�)=��L-��&_�u�>4�%������!i�>Hʰzg�.��(ܬA&���I��j��<��#~��D)���!���z�J�Y����38m�8���&ȏ�u��3�!����@K�W�_�|��B�=��v�kԸ'w�$��~��r�}�R�:J����´��ߋ�&��T�<��: ����#�Ģp�}�/[:|��1�m2��p��dL�x����W�q���^审ې�c6�By9�����x��y��$s�ޟ7����� ���%�Cҷ��p�xh2	Ys�!�� J�����oC�$�S�G���t��8�o�Ȟ}��p8�7▢V�M�+���}w�(i �8N�>�}5�~{*/RK������q&����Z���^S�A�U�;%��� �  m
R[�H�7<���e^z/6��0�� ��=�T�h�����<s�z�Bz=��'d�N9��_U���h�q����'������&�VG�Nq�<��u ��?#X�x�Ȕ6`<�$��F}��1��<�q��f�e�v2I)������L8��%����8U"��`
��cԱ y�����@K�e�����C������D��L�{��C�X�b�������#�$�Z�����wͳ�GB��)���BK��j�^WMͧU�&x�2�D�yL���"ea���y����]c#����${K!K��j����5�dD�ǀn���7�u����\�[��n*��T�@eo`�h���HR&�&��.��� �~@�����|լ����u��*o����:��7�QR����q�R���;�v�����36�W� {�'�>�e����}-1l�6��5�N�Tc�$E�>9�.�n�3��<�{N����MA ��n)=�j���w��iz/�K�#~���\(���Wh����[N�3���ߓ��4;����Ж��S,?8
z��q8�O�Q� ͂�V�_M���qC�o�{-1b�~�_^a"}��YrqSU�<� �GЩ�DY��znLT��A���1~��b]���J�j[�K�.���]ᘔ��=��s�{�s�R�At@<����ًW����EA!Z�6���{�Pwk	�al*��G��1�V�M�2���ܤT�����Ȉ=�oĘ#�~:�e=����C�=5 ~y�� �&>��	Zb�"�^��¿�X���O���]��.��/֭���� �fh���f�>�b��c(N�}��"�oM9�eG����{���Ĩ�[Ny�n�އ��э����)��r*�Mߪ���C՘���TX���YE4J��.�S-L��q�|�΋a������N�d������T��M�Wn��ʴ��yV��.U����Woa`�]���b����FH�!���l���0`h7��
;^a$���*���,c\���A)Ҟfh��e�|z�e��}�Fݿ@K���T�s��ezH5���Q�� �U�w(��@ǆSs:]B���4��#��o��p>�ڿ�]�w$���!��B�_�%ϭ��/�6��c���
�Y���Ɵ2c@�GM��>fu5�$�Y���W�m~�7J��*
Z���S1ȸ��Ơ�q�6N����
�S�3�u��~�؊l��z-�S��0GwQE&��Z�7pf�1l	��f��*W	)��$��e���_��)�4�5�8+j':n��×��?��!/���o�{�,qd�5A4o��Tt�/�$�h��ʠ�r�C�ȃT����<�Xq'�e�Z�$�P!;����o�]��=��� ��&���_h�\�mW�W      @   �  x��XQ��(��]�E(u/��u*vLt��=��HUI����e!�
����JI�]���4x<JD�z����gD"\\�hD�X��f���Li�ѿ�(+����hD�2�8�A�URg�ڕ��!Q�",znȕ��=`�����d����R���d�h+"�8�<�z$��^Q.
�3�n�J�5������0HE�.9�D��\��5��q����c3��,�D_`��H���!],BuQYd�I�8#,B���4i�E���I� .c����04�\�����GD�%��:�AWF]��F��!!��I��dKL�E��A�xI3����*s+�~�dC��SV���d}�.� �Cwej�󐎾{���R��yP�A�ǝU���4<9���*�+��B��VF"OuJ2<3}���~���,B�%m(q$��GR<#�'B��A���Z'4�1�o)ƚ��Q�K=,�96�]s����#�4Zt�幑���f��Q3��}�ˮz��yCڔ+֝Hu�E<�[-�*��n@~T?!t��������%�X��F�qN2��4�j�ږ�M=-@�y	ͷ!nu��3��k yj�v�K����2-dT�V�F�W@'T�q
JV��o�_	���wʛ�4�E���Qn��!9^��LA��y�1�4d���#��CK-Y;��$��Ʊ�y�d�r��B���Y_����Y_0��v�c\�����Bl��?��^�w��`��g}��˹��^��]�w��|y�!���������+���_�\�/��{H(}E,4�X�a\��K/��<%����J������!x�K��i>��}� ��B~��k �׶�{?X��1	{h��h���T���Jo<��3_�WP_q5���
��W�j����_,�����|�Z�yj�������h��ݺ�kO>�=��|�{y�G*C�7�V�����.��7���]���j��]�������#��+��(!�����!�>���rr5��]���'���O���,>O�Y��W��$rË�/'(P���V��=z�) �*$�Z`u������q���/��N�����}	��#�e[��b�NhK�ؤ�(֠���u�-��͢�a��0��o�x���y��!{��&T�\�pBl�'T�R��O�ƥ`vަO���d�j{��!����:4��Uq-'��#�]ـG.���c��6HжuM��>��f?���9�x�a���nW�e����*Էf׆c6x�r��1;,4t!�슬,Ⱦđa�5��p� v�C7�}&߉�I#�إ3���m�D`�$4pP�,p�-��wC}1pP��Ȟ�v�c�-hZZдM��	9��G+�l�u����ԟ���?��4��hU���f�����k���@3?��̏������I(      B      x�m�m��:�[�L�e}O"#���������$+���K�@��6�}Ɗ���>/����m�עa������g}�����w��|�����w�;�ou�{o����iX���q�;��5��հ~�:O��5�+��������v��C>[<���v5���ψ���i������ћw��V= �t�z�h�O����l���qYtn|>j��ݠ!���v��>���F�6��[����O<V���K��.���6��
�yO��6�Ǝw������j/�7^�1�QO��1����G���W\�_���{D���>��yܜ7��;�z�\w�}�
�{��W4c{���+J:7V�Xw�������M�����u��=�[�C�����֛�#�zo����o�����o�#����p�{�{g�ݸKw��>հ~��O�/���+b��M^��
��6�'n�nn8f�Rw������w�n8���H��1;�n_������u�u�[����q�[�d���ď��n�
<�-���8�[�1t�ť4F	��p�G�n��D������+n�o�k᷽#@G��4�-�1��C�vV48܆�j<�g��\5D��gƿo��V�[b�[����u+�[DC4|�V���pC�����7��x�TC��[������������P�.����\5#V������xw��ӏ;�1	��ˏ+���П��Ki���#�M��4��GŔ���!Xgux��n�=��֜��V���o�7qO@��n%?7�6�
j���ĺD�,X�ʀq+r��{6t�����٠����ꩠ��ҹ��]�ȱ�ң���_QA�Q{�\������
< �<�f/�b�̶a�^�z�Ws	J�W\�K����zpe'i��l��M��0�8�g�
��L�1�{<>�P=<�t�5����v݊�/x�����ְO�O���gĿ��!Ȉ����^�$���T7d��dA�њNz���dt������2^_z�E��8�]�z�+��P�)%8�׻��Z���6�Ά�Cq���T�4�Ȧ��[�[��>�����s ���T�5�1�*;��ģk����������9����8J�$�k�2r�@�C�"/�o�?�w�ū���+�̇�n��1�Rw��ĸg�ܐ�� �x��
\�ȻH�f�..�L3�x�!�y�.Ԑx�m����XҟH,�����y��N��ו ���uR���@F��5���zj���s����;��t�4V)
i`��
AF��f�9��wN�������@W>d��R�wu�z�f��l d�d�`��WD��`�p]�
�#���C����%y|���^����p@F:�f�k؁��ZD�t�&&��o�ǝ�sM3\HL5��É����q�p}gC\[�3\Y9�M0��f"���%}��
�{����y�
%߈D3\���5��o�ױ�v.*N$��w�]�9�Ẋ% ��2qN�\�0\�B����p��Q�p*�y���n�}yZ�r^AJ}���d��b�É�$���\���Z��d�'�`1\�U@��ۏ��J� �� e�(�6���Yd9��n��0�MN ��y�/�-5@��7Z^q�E�8�pCj	Ȩ����U��o��x\
Vo���F�+6I�A����I_��o���Ɏ]�7T�9n�Ot�g�V�;AK�7�l@�5��7޼��R���?�W��Lޖ	n�b�=a�"8��b���nt��a���B�L�a�*��.�Y�<��l��p�	n��K�x�w\\	�X��)�l�<U:#~��ǔ�A�W����H^������R�7�Y����RB�Q�m��q��� �
/��V&\zm�G�ӐYƹ���Z[��-��{˄�^v��_�+te���[�W��z��'�\�<��-�]�)��9���󕕁�r������_���WR��v��r�RRCT���3n���"�jS9���5o��"�m�Z�r�p�QI��@p2�\��Bh0�I�ms��c�7�ێ;�fnа�T&�@�X�\���$�L�l�ֆ�/��O�`yE{;�G�"�je���vvET!c�!E���K	���z�i��u��(�2��
���o�p��^�>$��i�-$�<�Uϔ�*',�������m;J����{�%�y�h"����|#�`#\��'YR�� ���n\W$�|E����o�d�.�1�
e�q�w�p�%x����>t�x��D����c�,���Y�<XI�Rd����s�����A}��ѽ4\Ւ̷��H[K#�6w���%E"��8�L�7ZfT��d�P�C�1pC������~ˆKS�E�`{9��L\̷o��7��j��ȫ��8�̥�lw(�u�(-ߟ1�����0IH^e�eV��bd�]ܡ
 W.�?5�A8.���vq��W\����r/NK>B�f���D\����aw��"�A�\nD�F�lB�=W$��G,O�T԰��.
�aw(DG.r����4�}\Q����=(�iw(D�Uϻҽ�`�,bt����?�\ܹq:.Cx�Ž��p<��;���U���`#�N��NE�d�����vq�r��*��.����BN�nE�+�V�j�o�<8M}S�8��-�O4���I�FJpSߔq/����3�M���;Ҥ�o*D'v�x���n2�Ah�AT�E}O�4�-�%1�qm�{4\d9�kI���7UN�K��7U�M��c�MS�TE��B@ƭL}K5�\�?��7�9M"v�w��o*mO%�=i0x�/��F��UF����L}KԷ�'da4|����j��g����ĥ��DI�L}{f�a���X�2����s���j���6�o9���a�/��pK�9�10\l�jK��pK	r��pa��[҉k���V���ZS�1��r�-k���s���X0�cbw.O�*�gūn�B�K�.��7��,q�5�r�-��"�v��r�-1�O&
\W���rݾD}�^�`��[
8�Vh����[�}�v2����'�����l�R�dɐ�
8�(����o0�*�7���#��T�XU.)sʀ��Qe��Zؒ+�f�%3D I�Nv c:k���+(R)e�-���H�Z҆K6����dpYK@b��Q3݄-�Ė��;��k�(ѸAW&�*�[���X�i�"��y��G�#G�=?y+��H�d�A^�xؒ"K 1&�_U"g��J�U"k����;�ګؤ�� ���r[2KD&H$��l B~0 !�iKf>������O�a�aK������ ��ܠ��TW�l��U� �
ٹ��T�$٬��
a4��[��$�sY�%3�̔�1Kf/p=�,��4Y����Ɩ̒3)Ȑ���O^A� _�^�Į��M�H2����ϕk����iOfJ�Ѩlhp	a��+���bjAޥժR ��4u<�=�)�;�����Y�y+�W�ʞ̔�dg�;{2s��`�#��s9s�����/I��]�2�ɁӞ̔w&�C�?�pSd�=�0�M1� 9aÉ��d.���w�x؁4wi�T8��,�L��X�5�J��EW F���b��'T4�&��SM9�%w\{,9z��Ē8�x3�M��@���:0�M� _,�Y'ٮ]0��u��X	�)�{�
v=.�1P�7�J@����J����`�`���d�FU�A��:��2�M%NAF���%��O*�N9�Q�ǴZ&����˙�NՒ �p��J�e�[OJ8&
�L���b�x�蕷����؉Sjp����)�KJ�$��h0�Ht���CK�^3M=���%�	n�|�j���	�Ma���$Z���^&����(��j� x�T��!�yJ�\�H����>R�B�'�f���a�K`� �t^=�Bt��z*L��.�e�    [���d��BƻA/* ۃ��LpKf-�(���US/j��&\&�5S �d��*��eU��,�Lp����AZ��f�`���[ K^9�βv���kjE�����Ԁ��*�W�0�a�h��l #F�S�����lXf��R�k�Τ��9V��r���4�XK���ĢRu���R�[� 7u�2í,�PC#.�[��_	�!2��
��u�+�:/�Se��`.-�������m�["KA�Xk��?�$�Q�)�d�Z������
zJ�*�H�Q	G�I��֯��db{5�����=ګYY3,��\����J�@�\��C��0f��(��ME����J?�ϡm2y�r���er��^C��T���ɩ�!o���TF���G�!4ݐ��4U�<s�Ǜ�?iř�TrӤ?�T�Ȉ�ik�gjԣ�Ƽ`�\���E����˥J�y$d0�|�X4��������<@��;E�*d�QjPD���X�xr���#U�Ĭ�H� <���![�ڙW�2����b7��gʨ�M��/�R��࠹ˌR� }l8{�3� ��>O�\x�~�˜;Ւ��"E�eN���i0x^���Qd�4 �vq�1��e.�QAV�W�,E	���
�ET�J򲗹dYbA�{⊷� Q^�K��%&Dd,�^���K��4��|,�2��>j}3$���4�^��=�6(�x�QfT�T�놻3�R?�<�����!='YE�̨L��dЉ��|�u�K�*N�%�L^_ِ..y�����XC�/]�OJ%��"��
8r�n��Z@3�2��A�m�A.�ڙ���h0��Z��y�������T�W%�E���������,��U��yENt�ܽy�j;���+�E���]o�C�]��-w�t�oȲ�z~K��[��QR��_,�ns� d�O��m��E�@�M�-w�|ԝ�|���|�HaX�n�]���sѼ-w�����!�����
d1!v��+&��$�rw+��}��rwkz�Sw[�n�Av5�Y��e=�� Ud_�1ۖ�[�.�9\a�WPe<�+~o.э��Ԯ���2vylOͭ\ b�%AMۮ�3 "KdэR��[j�Rc[�nMM �,q�'�V9�1,�۶�ʑ>���恽\��䖢Ǭv���v�l̫�\a���6x[�~0��_���v�2[���m��%�w����[�'��f�%ѧ�G�v3�>� �L���'�Ű[����!��-p���p��v��`t}#��A�{��-zsLJ$W��~��v���$� 9%v��������%ǎ���M=�QWN������\�B���q9�Vl��?ΧG�`5��SK5*���Pg[���(��8�0F�8��%='���j�)ɪOt�4vD|�<̅��|�o�ܮP�Z���w�At�>*��J���ߎ�����s�VG���cQ����H�t-h������
�+7[���b��7<f���dh��cR��7@v��?��Տ���a��Vتa5���	��џY���I�1鬚�� ��e=�8?">An��
\=�8�H�c�:�����E�c���m���~�e0�8?�Aj%�8?R+�<8��#M$uW=$� 1�EW2�d�H��2&&��������A�J�7����pQ0߹�;���Ҧ���6]j�����=?y�6�%f�#�����O�\�~e��P�*�Uj�ց��	�e+�5]�F�\�)lJ�Qw���J ��v�M�W^�<r�VW�b�'��Z��'!t`�m��u��4��Bj,B��Z�]i+A�ݰ�b�+5Ƃ�}��-�A�4vUa�%i>T��j쪐 ����VcW�������ƀچx��܀Ķ���J)]ZbGƟ�`D��i��,�Ӏ��k~�#t�"r�5�}�Zm���ob��ޏ+�oW�t�㕪���C"-���߮J���>��+%�Ho�W�(��Gd�k~���ؿ�Ц�î*�j���rW�+����.�c�淫*F��|�o�~,�G������=w�:�d8nepM�r,�����#�_�F�V���ټ��tW�|�a�P��p�����l>��vn�2�u|l�L�+�,Jt�i��ʴ[{D�]���i@Բ�~�jګ��uټ��b��RI�5{�to�l�r]8��쏯6W$�%e*;�ͻ�n~8Ha�Ki���9{0V��z��>ڳ��6��EΉxT��Si��,
�����|��~Ů��͞�Ŧ���y��%p𴐮��u+|�x��P-8��$��3�?:3�ѕ�)8y�O������@�b��1!2�u��,����l��(�c�=2p��v�R�WN�y�I�[�EO�f-9�,���8e���t�_�&���q$��+M�&���H<�!�x�Ǒx%gh�Y��L�wt�&0�G!��:���~�A�����ߪK��f�ˋz�Lӝ���~M�TD�fH��@<"�#��]�d̒���
ެ�Tbg.;_D���G�p��S1����W�d,h�NW��W ����u[�s%V��Y�����*p؜��J�&O;��e�,���f�+ヿC���y��G��Ε������'�b��_�f�m���̏lU"俩Vn��5��s��xC_�۝���}�����A�C5u���Ҿ������v�-��7�IPkբ���������p���#�������i��LƊ�"{��G�m_}�D�1�e�EHlo�K[�:X+�ZW=�i�o2�I�)ci(�� nIe�{���
md�x{���<�C^q�U>*c-(�ke��-��O1x�1l~dw���Iӎ�v�<��]J��t��H�S�+�}ɀ��J��y�v�������u0����7Ȟ��R��J�>�p��@���+�L4��c��Dt+V��܇�l	�([ 7�#�K�#�6�������7\��c�����!Qr\��.8�[�#m	��P{��	Ǯ��� MD��xt$5��(� Ψ[�,ٌ9�LTF�8��F��8OO���'�w���'~<X�]KZQZ�zG�Ɍ:�K�o S<�T8��3A�f����|�"�"��K��4��T�ʌC�Y������v�,�Yv�`؟�yi֒�.�C�º{��z\E"��:O
v?����n&}k��H�Ȥ�~9�v[%/�+)�q�W���h'g�[�+KN��2�(��ߕ�����<0L}W&��Q	�q�d4����ī�cI��jP������wGVd�CY뀻�>Wԇ���T��f�q������6wU�8��'����ʆ�ny^W�����^\Ewki��u�]im�U�j���A�����Z�\Q�E��ǵ��7�>�����,��1���>�7U�[.���>�s�_�j�êĵ�tWb� :��>mv#7d��;k��v������z:]�M ·-������v��z<v�9�C��t^�`�zX�ǫ�����^�ǉ�������@4���~��.P�w�8���f�Ⱥ������3��	�G���{ھ�`�Pk���^�ʕG+�d(�Me�i#�>ē?+�<��}���nµ�"U}���¡>y��nԥ�����B^סC=	T2�����?k���u�K���	��_z���1�uI?���6X|�z�g� ���z@�ckS���z㬦ײ5?�j�ّUշ�[�"m֒�^�Jo�/U���q����o"��X������������{�֝3�5��#��u��f������՞����Q�\�:�al��n�`��)��>��\�'� M�5<M
��/ɠ��c��֗�؎�\�4IEv�s,<��r���qƋ�u���`�e-�9��d5�����TM���a���jR :U{��XM�Lӗ�v͡�T͐��*�W�56���j������t ;7hH�fE�7�X�D�D�nGYS��ƀ�y*�YS�����A$�M٨�K<z�%�|�'�oT�I$�Ͼ�����Cs�5��NR˾� �Gz��g>��H�l� Q  �rZ���8�QA&*xdE��6�|T���ShFqǛG\�O���5�u'��i�(�����|�׭�&��GQ���Po�w��+�e!���*��qU�3ԭ9�h}��P߻�P�����~>� ��|~V'9��<:~�!6!�b�[���=�� ��j�����uL7Q��.*ɝ��Re=8�ּ�Y���q��'��S��*�~F��q8=K�ॅ��p��Oc�ξ�Pߚ���`i�2��D���0��+�K��iO���F�{9��\�5)fزw���V���d�X̏�b/ltIs�5���1��|������e�9ƚ"U|y�Z/pa��_62�^�)��o`�;o���X�/�>��UM�_F9m;�������YM(M_��ͱՔ�K��Aw�N}�2DCs|��ɎK�k����kbtps�|>�̈́?m�zN�u�%�S�<��tW���	C�q;E^�j��b�
��M
�d�c�í)�|�qg�
Q���|�~$��_�H���Ҥ_�~F�`��TP�a�D2�<��V��Rk}�C?����7R>?'A�a&o}�P7y�5H�B>���H��{*�<����Y���n0��k7�h:w����n��>��џ��H����Y���ȭ�l�<m�f�p7�ϸ,pY��G}JJ���SV���[S'[�3_֡ЯsT��ԡF��A&��aI��눁 Y�{(�뀁����ǝ�§������??'��q1	]}�ԦTT,���<x89uش�kK?o}�0~�m}��ʊc��� ���̭=�d9��y��`����`X�w�����,���*e//�z�WA�i�Q�ک�<�b����S#�5�m��]
�9�(}]�!��r�fT7��Atx�b�|
�`)�7(�~t<�Z�yB{2�h#��~
XÞ��ڤO[9�M�tŷ��Z�A�=��j<�~M�_!�"���	��hU�I<ɺ&�4-�a@���o6��9���6��]����^�zv����qWe	���>N��-p�v(,�ϚkʶS�_�m���
�<��z�Q����f�j#�"o���f�j�) ���4�T�9��6��Yhl9��2��1,K��f�j"  ���˿}+a�C�2kf���W�|�(*dJ�I��6k���C�VQ�� 7�L����l�C9h�f�j�4 ��+I����S��*�l �`	73X˯x�;G�9��XAb���bM"H�h�(�X[y�&I��L�n�E@�41�5e��(օک�멶�r�9p���͌�Nj>��
��'18C���N�g]��Qgh�&�+H}Ŭ��������m��ٲ\� x�<ou�.ْ�qC�;@J�s�����?�����q�L�     