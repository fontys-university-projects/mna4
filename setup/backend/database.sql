PGDMP     1                     |            videolab    15.3    15.3 �    T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            W           1262    59688    videolab    DATABASE     �   CREATE DATABASE videolab WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE videolab;
                postgres    false            �            1259    59751    directus_activity    TABLE     �  CREATE TABLE public.directus_activity (
    id integer NOT NULL,
    action character varying(45) NOT NULL,
    "user" uuid,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ip character varying(50),
    user_agent character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    comment text,
    origin character varying(255)
);
 %   DROP TABLE public.directus_activity;
       public         heap    videolab    false            �            1259    59750    directus_activity_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.directus_activity_id_seq;
       public          videolab    false    220            X           0    0    directus_activity_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.directus_activity_id_seq OWNED BY public.directus_activity.id;
          public          videolab    false    219            �            1259    59689    directus_collections    TABLE     o  CREATE TABLE public.directus_collections (
    collection character varying(64) NOT NULL,
    icon character varying(30),
    note text,
    display_template character varying(255),
    hidden boolean DEFAULT false NOT NULL,
    singleton boolean DEFAULT false NOT NULL,
    translations json,
    archive_field character varying(64),
    archive_app_filter boolean DEFAULT true NOT NULL,
    archive_value character varying(255),
    unarchive_value character varying(255),
    sort_field character varying(64),
    accountability character varying(255) DEFAULT 'all'::character varying,
    color character varying(255),
    item_duplication_fields json,
    sort integer,
    "group" character varying(64),
    collapse character varying(255) DEFAULT 'open'::character varying NOT NULL,
    preview_url character varying(255),
    versioning boolean DEFAULT false NOT NULL
);
 (   DROP TABLE public.directus_collections;
       public         heap    videolab    false            �            1259    60066    directus_dashboards    TABLE     I  CREATE TABLE public.directus_dashboards (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(30) DEFAULT 'dashboard'::character varying NOT NULL,
    note text,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    color character varying(255)
);
 '   DROP TABLE public.directus_dashboards;
       public         heap    videolab    false            �            1259    60275    directus_extensions    TABLE     �   CREATE TABLE public.directus_extensions (
    name character varying(255) NOT NULL,
    enabled boolean DEFAULT true NOT NULL
);
 '   DROP TABLE public.directus_extensions;
       public         heap    videolab    false            �            1259    59728    directus_fields    TABLE     �  CREATE TABLE public.directus_fields (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    field character varying(64) NOT NULL,
    special character varying(64),
    interface character varying(64),
    options json,
    display character varying(64),
    display_options json,
    readonly boolean DEFAULT false NOT NULL,
    hidden boolean DEFAULT false NOT NULL,
    sort integer,
    width character varying(30) DEFAULT 'full'::character varying,
    translations json,
    note text,
    conditions json,
    required boolean DEFAULT false,
    "group" character varying(64),
    validation json,
    validation_message text
);
 #   DROP TABLE public.directus_fields;
       public         heap    videolab    false            �            1259    59727    directus_fields_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.directus_fields_id_seq;
       public          videolab    false    218            Y           0    0    directus_fields_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.directus_fields_id_seq OWNED BY public.directus_fields.id;
          public          videolab    false    217            �            1259    59775    directus_files    TABLE     �  CREATE TABLE public.directus_files (
    id uuid NOT NULL,
    storage character varying(255) NOT NULL,
    filename_disk character varying(255),
    filename_download character varying(255) NOT NULL,
    title character varying(255),
    type character varying(255),
    folder uuid,
    uploaded_by uuid,
    uploaded_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified_by uuid,
    modified_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    charset character varying(50),
    filesize bigint,
    width integer,
    height integer,
    duration integer,
    embed character varying(200),
    description text,
    location text,
    tags text,
    metadata json
);
 "   DROP TABLE public.directus_files;
       public         heap    videolab    false            �            1259    60180    directus_flows    TABLE       CREATE TABLE public.directus_flows (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(30),
    color character varying(255),
    description text,
    status character varying(255) DEFAULT 'active'::character varying NOT NULL,
    trigger character varying(255),
    accountability character varying(255) DEFAULT 'all'::character varying,
    options json,
    operation uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);
 "   DROP TABLE public.directus_flows;
       public         heap    videolab    false            �            1259    59765    directus_folders    TABLE     z   CREATE TABLE public.directus_folders (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    parent uuid
);
 $   DROP TABLE public.directus_folders;
       public         heap    videolab    false            �            1259    59939    directus_migrations    TABLE     �   CREATE TABLE public.directus_migrations (
    version character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 '   DROP TABLE public.directus_migrations;
       public         heap    videolab    false            �            1259    60126    directus_notifications    TABLE     �  CREATE TABLE public.directus_notifications (
    id integer NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(255) DEFAULT 'inbox'::character varying,
    recipient uuid NOT NULL,
    sender uuid,
    subject character varying(255) NOT NULL,
    message text,
    collection character varying(64),
    item character varying(255)
);
 *   DROP TABLE public.directus_notifications;
       public         heap    videolab    false            �            1259    60125    directus_notifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.directus_notifications_id_seq;
       public          videolab    false    240            Z           0    0    directus_notifications_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.directus_notifications_id_seq OWNED BY public.directus_notifications.id;
          public          videolab    false    239            �            1259    60197    directus_operations    TABLE     �  CREATE TABLE public.directus_operations (
    id uuid NOT NULL,
    name character varying(255),
    key character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    options json,
    resolve uuid,
    reject uuid,
    flow uuid NOT NULL,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);
 '   DROP TABLE public.directus_operations;
       public         heap    videolab    false            �            1259    60080    directus_panels    TABLE     /  CREATE TABLE public.directus_panels (
    id uuid NOT NULL,
    dashboard uuid NOT NULL,
    name character varying(255),
    icon character varying(30) DEFAULT NULL::character varying,
    color character varying(10),
    show_header boolean DEFAULT false NOT NULL,
    note text,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    options json,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);
 #   DROP TABLE public.directus_panels;
       public         heap    videolab    false            �            1259    59801    directus_permissions    TABLE     �   CREATE TABLE public.directus_permissions (
    id integer NOT NULL,
    role uuid,
    collection character varying(64) NOT NULL,
    action character varying(10) NOT NULL,
    permissions json,
    validation json,
    presets json,
    fields text
);
 (   DROP TABLE public.directus_permissions;
       public         heap    videolab    false            �            1259    59800    directus_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.directus_permissions_id_seq;
       public          videolab    false    224            [           0    0    directus_permissions_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.directus_permissions_id_seq OWNED BY public.directus_permissions.id;
          public          videolab    false    223            �            1259    59820    directus_presets    TABLE     �  CREATE TABLE public.directus_presets (
    id integer NOT NULL,
    bookmark character varying(255),
    "user" uuid,
    role uuid,
    collection character varying(64),
    search character varying(100),
    layout character varying(100) DEFAULT 'tabular'::character varying,
    layout_query json,
    layout_options json,
    refresh_interval integer,
    filter json,
    icon character varying(30) DEFAULT 'bookmark'::character varying,
    color character varying(255)
);
 $   DROP TABLE public.directus_presets;
       public         heap    videolab    false            �            1259    59819    directus_presets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_presets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.directus_presets_id_seq;
       public          videolab    false    226            \           0    0    directus_presets_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.directus_presets_id_seq OWNED BY public.directus_presets.id;
          public          videolab    false    225            �            1259    59845    directus_relations    TABLE     �  CREATE TABLE public.directus_relations (
    id integer NOT NULL,
    many_collection character varying(64) NOT NULL,
    many_field character varying(64) NOT NULL,
    one_collection character varying(64),
    one_field character varying(64),
    one_collection_field character varying(64),
    one_allowed_collections text,
    junction_field character varying(64),
    sort_field character varying(64),
    one_deselect_action character varying(255) DEFAULT 'nullify'::character varying NOT NULL
);
 &   DROP TABLE public.directus_relations;
       public         heap    videolab    false            �            1259    59844    directus_relations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.directus_relations_id_seq;
       public          videolab    false    228            ]           0    0    directus_relations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.directus_relations_id_seq OWNED BY public.directus_relations.id;
          public          videolab    false    227            �            1259    59864    directus_revisions    TABLE       CREATE TABLE public.directus_revisions (
    id integer NOT NULL,
    activity integer NOT NULL,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    data json,
    delta json,
    parent integer,
    version uuid
);
 &   DROP TABLE public.directus_revisions;
       public         heap    videolab    false            �            1259    59863    directus_revisions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_revisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.directus_revisions_id_seq;
       public          videolab    false    230            ^           0    0    directus_revisions_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.directus_revisions_id_seq OWNED BY public.directus_revisions.id;
          public          videolab    false    229            �            1259    59699    directus_roles    TABLE     }  CREATE TABLE public.directus_roles (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(30) DEFAULT 'supervised_user_circle'::character varying NOT NULL,
    description text,
    ip_access text,
    enforce_tfa boolean DEFAULT false NOT NULL,
    admin_access boolean DEFAULT false NOT NULL,
    app_access boolean DEFAULT true NOT NULL
);
 "   DROP TABLE public.directus_roles;
       public         heap    videolab    false            �            1259    59887    directus_sessions    TABLE       CREATE TABLE public.directus_sessions (
    token character varying(64) NOT NULL,
    "user" uuid,
    expires timestamp with time zone NOT NULL,
    ip character varying(255),
    user_agent character varying(255),
    share uuid,
    origin character varying(255)
);
 %   DROP TABLE public.directus_sessions;
       public         heap    videolab    false            �            1259    59900    directus_settings    TABLE     �  CREATE TABLE public.directus_settings (
    id integer NOT NULL,
    project_name character varying(100) DEFAULT 'Directus'::character varying NOT NULL,
    project_url character varying(255),
    project_color character varying(255) DEFAULT '#6644FF'::character varying NOT NULL,
    project_logo uuid,
    public_foreground uuid,
    public_background uuid,
    public_note text,
    auth_login_attempts integer DEFAULT 25,
    auth_password_policy character varying(100),
    storage_asset_transform character varying(7) DEFAULT 'all'::character varying,
    storage_asset_presets json,
    custom_css text,
    storage_default_folder uuid,
    basemaps json,
    mapbox_key character varying(255),
    module_bar json,
    project_descriptor character varying(100),
    default_language character varying(255) DEFAULT 'en-US'::character varying NOT NULL,
    custom_aspect_ratios json,
    public_favicon uuid,
    default_appearance character varying(255) DEFAULT 'auto'::character varying NOT NULL,
    default_theme_light character varying(255),
    theme_light_overrides json,
    default_theme_dark character varying(255),
    theme_dark_overrides json
);
 %   DROP TABLE public.directus_settings;
       public         heap    videolab    false            �            1259    59899    directus_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.directus_settings_id_seq;
       public          videolab    false    233            _           0    0    directus_settings_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.directus_settings_id_seq OWNED BY public.directus_settings.id;
          public          videolab    false    232            �            1259    60146    directus_shares    TABLE     �  CREATE TABLE public.directus_shares (
    id uuid NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    role uuid,
    password character varying(255),
    user_created uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    times_used integer DEFAULT 0,
    max_uses integer
);
 #   DROP TABLE public.directus_shares;
       public         heap    videolab    false            �            1259    60231    directus_translations    TABLE     �   CREATE TABLE public.directus_translations (
    id uuid NOT NULL,
    language character varying(255) NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);
 )   DROP TABLE public.directus_translations;
       public         heap    videolab    false            �            1259    59710    directus_users    TABLE     D  CREATE TABLE public.directus_users (
    id uuid NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(128),
    password character varying(255),
    location character varying(255),
    title character varying(50),
    description text,
    tags json,
    avatar uuid,
    language character varying(255) DEFAULT NULL::character varying,
    tfa_secret character varying(255),
    status character varying(16) DEFAULT 'active'::character varying NOT NULL,
    role uuid,
    token character varying(255),
    last_access timestamp with time zone,
    last_page character varying(255),
    provider character varying(128) DEFAULT 'default'::character varying NOT NULL,
    external_identifier character varying(255),
    auth_data json,
    email_notifications boolean DEFAULT true,
    appearance character varying(255),
    theme_dark character varying(255),
    theme_light character varying(255),
    theme_light_overrides json,
    theme_dark_overrides json,
    theme character varying(20) DEFAULT 'auto'::character varying
);
 "   DROP TABLE public.directus_users;
       public         heap    videolab    false            �            1259    60238    directus_versions    TABLE     �  CREATE TABLE public.directus_versions (
    id uuid NOT NULL,
    key character varying(64) NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    hash character varying(255),
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    user_updated uuid
);
 %   DROP TABLE public.directus_versions;
       public         heap    videolab    false            �            1259    59928    directus_webhooks    TABLE     �  CREATE TABLE public.directus_webhooks (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    method character varying(10) DEFAULT 'POST'::character varying NOT NULL,
    url character varying(255) NOT NULL,
    status character varying(10) DEFAULT 'active'::character varying NOT NULL,
    data boolean DEFAULT true NOT NULL,
    actions character varying(100) NOT NULL,
    collections character varying(255) NOT NULL,
    headers json
);
 %   DROP TABLE public.directus_webhooks;
       public         heap    videolab    false            �            1259    59927    directus_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.directus_webhooks_id_seq;
       public          videolab    false    235            `           0    0    directus_webhooks_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.directus_webhooks_id_seq OWNED BY public.directus_webhooks.id;
          public          videolab    false    234            �            1259    60293    doc_category    TABLE        CREATE TABLE public.doc_category (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying
);
     DROP TABLE public.doc_category;
       public         heap    videolab    false            �            1259    60301    doc_category_directus_roles    TABLE     �   CREATE TABLE public.doc_category_directus_roles (
    directus_roles_id uuid,
    doc_category_id integer,
    id integer NOT NULL
);
 /   DROP TABLE public.doc_category_directus_roles;
       public         heap    videolab    false            �            1259    60300 "   doc_category_directus_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.doc_category_directus_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.doc_category_directus_roles_id_seq;
       public          videolab    false    252            a           0    0 "   doc_category_directus_roles_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.doc_category_directus_roles_id_seq OWNED BY public.doc_category_directus_roles.id;
          public          videolab    false    251            �            1259    60292    doc_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.doc_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.doc_category_id_seq;
       public          videolab    false    250            b           0    0    doc_category_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.doc_category_id_seq OWNED BY public.doc_category.id;
          public          videolab    false    249            �            1259    60283    documentation    TABLE     �   CREATE TABLE public.documentation (
    body text,
    category integer,
    id integer NOT NULL,
    title character varying(255) DEFAULT NULL::character varying
);
 !   DROP TABLE public.documentation;
       public         heap    videolab    false            �            1259    60282    documentation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.documentation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.documentation_id_seq;
       public          videolab    false    248            c           0    0    documentation_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.documentation_id_seq OWNED BY public.documentation.id;
          public          videolab    false    247            �            1259    60308    videos    TABLE     1  CREATE TABLE public.videos (
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    thumbnail uuid,
    title character varying(255) DEFAULT NULL::character varying,
    user_created uuid,
    user_updated uuid,
    video uuid,
    about_project text,
    camera_name character varying(255),
    camera_lens character varying(255),
    camera_settings character varying(255),
    is_group_project boolean DEFAULT false
);
    DROP TABLE public.videos;
       public         heap    videolab    false                        1259    91869    videos_directus_users    TABLE     z   CREATE TABLE public.videos_directus_users (
    id integer NOT NULL,
    videos_id integer,
    directus_users_id uuid
);
 )   DROP TABLE public.videos_directus_users;
       public         heap    videolab    false            �            1259    91868    videos_directus_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.videos_directus_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.videos_directus_users_id_seq;
       public          videolab    false    256            d           0    0    videos_directus_users_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.videos_directus_users_id_seq OWNED BY public.videos_directus_users.id;
          public          videolab    false    255            �            1259    60307    videos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.videos_id_seq;
       public          videolab    false    254            e           0    0    videos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.videos_id_seq OWNED BY public.videos.id;
          public          videolab    false    253            �           2604    59754    directus_activity id    DEFAULT     |   ALTER TABLE ONLY public.directus_activity ALTER COLUMN id SET DEFAULT nextval('public.directus_activity_id_seq'::regclass);
 C   ALTER TABLE public.directus_activity ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    219    220    220            �           2604    59731    directus_fields id    DEFAULT     x   ALTER TABLE ONLY public.directus_fields ALTER COLUMN id SET DEFAULT nextval('public.directus_fields_id_seq'::regclass);
 A   ALTER TABLE public.directus_fields ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    218    217    218                       2604    60129    directus_notifications id    DEFAULT     �   ALTER TABLE ONLY public.directus_notifications ALTER COLUMN id SET DEFAULT nextval('public.directus_notifications_id_seq'::regclass);
 H   ALTER TABLE public.directus_notifications ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    240    239    240            �           2604    59804    directus_permissions id    DEFAULT     �   ALTER TABLE ONLY public.directus_permissions ALTER COLUMN id SET DEFAULT nextval('public.directus_permissions_id_seq'::regclass);
 F   ALTER TABLE public.directus_permissions ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    223    224    224            �           2604    59823    directus_presets id    DEFAULT     z   ALTER TABLE ONLY public.directus_presets ALTER COLUMN id SET DEFAULT nextval('public.directus_presets_id_seq'::regclass);
 B   ALTER TABLE public.directus_presets ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    225    226    226            �           2604    59848    directus_relations id    DEFAULT     ~   ALTER TABLE ONLY public.directus_relations ALTER COLUMN id SET DEFAULT nextval('public.directus_relations_id_seq'::regclass);
 D   ALTER TABLE public.directus_relations ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    228    227    228                        2604    59867    directus_revisions id    DEFAULT     ~   ALTER TABLE ONLY public.directus_revisions ALTER COLUMN id SET DEFAULT nextval('public.directus_revisions_id_seq'::regclass);
 D   ALTER TABLE public.directus_revisions ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    230    229    230                       2604    59903    directus_settings id    DEFAULT     |   ALTER TABLE ONLY public.directus_settings ALTER COLUMN id SET DEFAULT nextval('public.directus_settings_id_seq'::regclass);
 C   ALTER TABLE public.directus_settings ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    233    232    233                       2604    59931    directus_webhooks id    DEFAULT     |   ALTER TABLE ONLY public.directus_webhooks ALTER COLUMN id SET DEFAULT nextval('public.directus_webhooks_id_seq'::regclass);
 C   ALTER TABLE public.directus_webhooks ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    235    234    235                        2604    60296    doc_category id    DEFAULT     r   ALTER TABLE ONLY public.doc_category ALTER COLUMN id SET DEFAULT nextval('public.doc_category_id_seq'::regclass);
 >   ALTER TABLE public.doc_category ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    250    249    250            "           2604    60304    doc_category_directus_roles id    DEFAULT     �   ALTER TABLE ONLY public.doc_category_directus_roles ALTER COLUMN id SET DEFAULT nextval('public.doc_category_directus_roles_id_seq'::regclass);
 M   ALTER TABLE public.doc_category_directus_roles ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    251    252    252                       2604    60286    documentation id    DEFAULT     t   ALTER TABLE ONLY public.documentation ALTER COLUMN id SET DEFAULT nextval('public.documentation_id_seq'::regclass);
 ?   ALTER TABLE public.documentation ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    248    247    248            #           2604    60311 	   videos id    DEFAULT     f   ALTER TABLE ONLY public.videos ALTER COLUMN id SET DEFAULT nextval('public.videos_id_seq'::regclass);
 8   ALTER TABLE public.videos ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    254    253    254            '           2604    91872    videos_directus_users id    DEFAULT     �   ALTER TABLE ONLY public.videos_directus_users ALTER COLUMN id SET DEFAULT nextval('public.videos_directus_users_id_seq'::regclass);
 G   ALTER TABLE public.videos_directus_users ALTER COLUMN id DROP DEFAULT;
       public          videolab    false    256    255    256            -          0    59751    directus_activity 
   TABLE DATA              COPY public.directus_activity (id, action, "user", "timestamp", ip, user_agent, collection, item, comment, origin) FROM stdin;
    public          videolab    false    220   %,      '          0    59689    directus_collections 
   TABLE DATA           *  COPY public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations, archive_field, archive_app_filter, archive_value, unarchive_value, sort_field, accountability, color, item_duplication_fields, sort, "group", collapse, preview_url, versioning) FROM stdin;
    public          videolab    false    214   �O      >          0    60066    directus_dashboards 
   TABLE DATA           f   COPY public.directus_dashboards (id, name, icon, note, date_created, user_created, color) FROM stdin;
    public          videolab    false    237   XP      G          0    60275    directus_extensions 
   TABLE DATA           <   COPY public.directus_extensions (name, enabled) FROM stdin;
    public          videolab    false    246   uP      +          0    59728    directus_fields 
   TABLE DATA           �   COPY public.directus_fields (id, collection, field, special, interface, options, display, display_options, readonly, hidden, sort, width, translations, note, conditions, required, "group", validation, validation_message) FROM stdin;
    public          videolab    false    218   �P      /          0    59775    directus_files 
   TABLE DATA           �   COPY public.directus_files (id, storage, filename_disk, filename_download, title, type, folder, uploaded_by, uploaded_on, modified_by, modified_on, charset, filesize, width, height, duration, embed, description, location, tags, metadata) FROM stdin;
    public          videolab    false    222   �U      C          0    60180    directus_flows 
   TABLE DATA           �   COPY public.directus_flows (id, name, icon, color, description, status, trigger, accountability, options, operation, date_created, user_created) FROM stdin;
    public          videolab    false    242   �\      .          0    59765    directus_folders 
   TABLE DATA           <   COPY public.directus_folders (id, name, parent) FROM stdin;
    public          videolab    false    221   �\      =          0    59939    directus_migrations 
   TABLE DATA           I   COPY public.directus_migrations (version, name, "timestamp") FROM stdin;
    public          videolab    false    236   n]      A          0    60126    directus_notifications 
   TABLE DATA           �   COPY public.directus_notifications (id, "timestamp", status, recipient, sender, subject, message, collection, item) FROM stdin;
    public          videolab    false    240   �b      D          0    60197    directus_operations 
   TABLE DATA           �   COPY public.directus_operations (id, name, key, type, position_x, position_y, options, resolve, reject, flow, date_created, user_created) FROM stdin;
    public          videolab    false    243   Td      ?          0    60080    directus_panels 
   TABLE DATA           �   COPY public.directus_panels (id, dashboard, name, icon, color, show_header, note, type, position_x, position_y, width, height, options, date_created, user_created) FROM stdin;
    public          videolab    false    238   qd      1          0    59801    directus_permissions 
   TABLE DATA           v   COPY public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields) FROM stdin;
    public          videolab    false    224   �d      3          0    59820    directus_presets 
   TABLE DATA           �   COPY public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query, layout_options, refresh_interval, filter, icon, color) FROM stdin;
    public          videolab    false    226   Rj      5          0    59845    directus_relations 
   TABLE DATA           �   COPY public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action) FROM stdin;
    public          videolab    false    228   [l      7          0    59864    directus_revisions 
   TABLE DATA           j   COPY public.directus_revisions (id, activity, collection, item, data, delta, parent, version) FROM stdin;
    public          videolab    false    230   7m      (          0    59699    directus_roles 
   TABLE DATA           w   COPY public.directus_roles (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access) FROM stdin;
    public          videolab    false    215   y�      8          0    59887    directus_sessions 
   TABLE DATA           b   COPY public.directus_sessions (token, "user", expires, ip, user_agent, share, origin) FROM stdin;
    public          videolab    false    231   ��      :          0    59900    directus_settings 
   TABLE DATA           �  COPY public.directus_settings (id, project_name, project_url, project_color, project_logo, public_foreground, public_background, public_note, auth_login_attempts, auth_password_policy, storage_asset_transform, storage_asset_presets, custom_css, storage_default_folder, basemaps, mapbox_key, module_bar, project_descriptor, default_language, custom_aspect_ratios, public_favicon, default_appearance, default_theme_light, theme_light_overrides, default_theme_dark, theme_dark_overrides) FROM stdin;
    public          videolab    false    233   ��      B          0    60146    directus_shares 
   TABLE DATA           �   COPY public.directus_shares (id, name, collection, item, role, password, user_created, date_created, date_start, date_end, times_used, max_uses) FROM stdin;
    public          videolab    false    241   ��      E          0    60231    directus_translations 
   TABLE DATA           I   COPY public.directus_translations (id, language, key, value) FROM stdin;
    public          videolab    false    244   ��      )          0    59710    directus_users 
   TABLE DATA           [  COPY public.directus_users (id, first_name, last_name, email, password, location, title, description, tags, avatar, language, tfa_secret, status, role, token, last_access, last_page, provider, external_identifier, auth_data, email_notifications, appearance, theme_dark, theme_light, theme_light_overrides, theme_dark_overrides, theme) FROM stdin;
    public          videolab    false    216   �      F          0    60238    directus_versions 
   TABLE DATA           �   COPY public.directus_versions (id, key, name, collection, item, hash, date_created, date_updated, user_created, user_updated) FROM stdin;
    public          videolab    false    245   S�      <          0    59928    directus_webhooks 
   TABLE DATA           o   COPY public.directus_webhooks (id, name, method, url, status, data, actions, collections, headers) FROM stdin;
    public          videolab    false    235   p�      K          0    60293    doc_category 
   TABLE DATA           0   COPY public.doc_category (id, name) FROM stdin;
    public          videolab    false    250   ��      M          0    60301    doc_category_directus_roles 
   TABLE DATA           ]   COPY public.doc_category_directus_roles (directus_roles_id, doc_category_id, id) FROM stdin;
    public          videolab    false    252   ��      I          0    60283    documentation 
   TABLE DATA           B   COPY public.documentation (body, category, id, title) FROM stdin;
    public          videolab    false    248   s�      O          0    60308    videos 
   TABLE DATA           �   COPY public.videos (date_created, date_updated, id, status, thumbnail, title, user_created, user_updated, video, about_project, camera_name, camera_lens, camera_settings, is_group_project) FROM stdin;
    public          videolab    false    254         Q          0    91869    videos_directus_users 
   TABLE DATA           Q   COPY public.videos_directus_users (id, videos_id, directus_users_id) FROM stdin;
    public          videolab    false    256   �      f           0    0    directus_activity_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.directus_activity_id_seq', 523, true);
          public          videolab    false    219            g           0    0    directus_fields_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.directus_fields_id_seq', 41, true);
          public          videolab    false    217            h           0    0    directus_notifications_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.directus_notifications_id_seq', 2, true);
          public          videolab    false    239            i           0    0    directus_permissions_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.directus_permissions_id_seq', 76, true);
          public          videolab    false    223            j           0    0    directus_presets_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.directus_presets_id_seq', 15, true);
          public          videolab    false    225            k           0    0    directus_relations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.directus_relations_id_seq', 12, true);
          public          videolab    false    227            l           0    0    directus_revisions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.directus_revisions_id_seq', 459, true);
          public          videolab    false    229            m           0    0    directus_settings_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.directus_settings_id_seq', 1, true);
          public          videolab    false    232            n           0    0    directus_webhooks_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.directus_webhooks_id_seq', 1, false);
          public          videolab    false    234            o           0    0 "   doc_category_directus_roles_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.doc_category_directus_roles_id_seq', 6, true);
          public          videolab    false    251            p           0    0    doc_category_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.doc_category_id_seq', 11, true);
          public          videolab    false    249            q           0    0    documentation_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.documentation_id_seq', 22, true);
          public          videolab    false    247            r           0    0    videos_directus_users_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.videos_directus_users_id_seq', 3, true);
          public          videolab    false    255            s           0    0    videos_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.videos_id_seq', 2, true);
          public          videolab    false    253            7           2606    59759 (   directus_activity directus_activity_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_activity
    ADD CONSTRAINT directus_activity_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_activity DROP CONSTRAINT directus_activity_pkey;
       public            videolab    false    220            )           2606    59698 .   directus_collections directus_collections_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_pkey PRIMARY KEY (collection);
 X   ALTER TABLE ONLY public.directus_collections DROP CONSTRAINT directus_collections_pkey;
       public            videolab    false    214            M           2606    60074 ,   directus_dashboards directus_dashboards_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.directus_dashboards DROP CONSTRAINT directus_dashboards_pkey;
       public            videolab    false    237            c           2606    60280 ,   directus_extensions directus_extensions_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.directus_extensions
    ADD CONSTRAINT directus_extensions_pkey PRIMARY KEY (name);
 V   ALTER TABLE ONLY public.directus_extensions DROP CONSTRAINT directus_extensions_pkey;
       public            videolab    false    246            5           2606    59739 $   directus_fields directus_fields_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.directus_fields
    ADD CONSTRAINT directus_fields_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.directus_fields DROP CONSTRAINT directus_fields_pkey;
       public            videolab    false    218            ;           2606    59784 "   directus_files directus_files_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_pkey;
       public            videolab    false    222            U           2606    60191 .   directus_flows directus_flows_operation_unique 
   CONSTRAINT     n   ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_operation_unique UNIQUE (operation);
 X   ALTER TABLE ONLY public.directus_flows DROP CONSTRAINT directus_flows_operation_unique;
       public            videolab    false    242            W           2606    60189 "   directus_flows directus_flows_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.directus_flows DROP CONSTRAINT directus_flows_pkey;
       public            videolab    false    242            9           2606    59769 &   directus_folders directus_folders_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.directus_folders DROP CONSTRAINT directus_folders_pkey;
       public            videolab    false    221            K           2606    59946 ,   directus_migrations directus_migrations_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.directus_migrations
    ADD CONSTRAINT directus_migrations_pkey PRIMARY KEY (version);
 V   ALTER TABLE ONLY public.directus_migrations DROP CONSTRAINT directus_migrations_pkey;
       public            videolab    false    236            Q           2606    60134 2   directus_notifications directus_notifications_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.directus_notifications DROP CONSTRAINT directus_notifications_pkey;
       public            videolab    false    240            Y           2606    60204 ,   directus_operations directus_operations_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_pkey;
       public            videolab    false    243            [           2606    60213 5   directus_operations directus_operations_reject_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_unique UNIQUE (reject);
 _   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_reject_unique;
       public            videolab    false    243            ]           2606    60206 6   directus_operations directus_operations_resolve_unique 
   CONSTRAINT     t   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_unique UNIQUE (resolve);
 `   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_resolve_unique;
       public            videolab    false    243            O           2606    60089 $   directus_panels directus_panels_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.directus_panels DROP CONSTRAINT directus_panels_pkey;
       public            videolab    false    238            =           2606    59808 .   directus_permissions directus_permissions_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.directus_permissions DROP CONSTRAINT directus_permissions_pkey;
       public            videolab    false    224            ?           2606    59828 &   directus_presets directus_presets_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.directus_presets DROP CONSTRAINT directus_presets_pkey;
       public            videolab    false    226            A           2606    59852 *   directus_relations directus_relations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.directus_relations
    ADD CONSTRAINT directus_relations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.directus_relations DROP CONSTRAINT directus_relations_pkey;
       public            videolab    false    228            C           2606    59871 *   directus_revisions directus_revisions_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_pkey;
       public            videolab    false    230            +           2606    59709 "   directus_roles directus_roles_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.directus_roles DROP CONSTRAINT directus_roles_pkey;
       public            videolab    false    215            E           2606    59893 (   directus_sessions directus_sessions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_pkey PRIMARY KEY (token);
 R   ALTER TABLE ONLY public.directus_sessions DROP CONSTRAINT directus_sessions_pkey;
       public            videolab    false    231            G           2606    59911 (   directus_settings directus_settings_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_pkey;
       public            videolab    false    233            S           2606    60154 $   directus_shares directus_shares_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_pkey;
       public            videolab    false    241            _           2606    60237 0   directus_translations directus_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.directus_translations
    ADD CONSTRAINT directus_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.directus_translations DROP CONSTRAINT directus_translations_pkey;
       public            videolab    false    244            -           2606    60116 *   directus_users directus_users_email_unique 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_email_unique UNIQUE (email);
 T   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_email_unique;
       public            videolab    false    216            /           2606    60114 8   directus_users directus_users_external_identifier_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_external_identifier_unique UNIQUE (external_identifier);
 b   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_external_identifier_unique;
       public            videolab    false    216            1           2606    59719 "   directus_users directus_users_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_pkey;
       public            videolab    false    216            3           2606    60124 *   directus_users directus_users_token_unique 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_token_unique UNIQUE (token);
 T   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_token_unique;
       public            videolab    false    216            a           2606    60246 (   directus_versions directus_versions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_pkey;
       public            videolab    false    245            I           2606    59938 (   directus_webhooks directus_webhooks_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_webhooks DROP CONSTRAINT directus_webhooks_pkey;
       public            videolab    false    235            i           2606    60306 <   doc_category_directus_roles doc_category_directus_roles_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.doc_category_directus_roles
    ADD CONSTRAINT doc_category_directus_roles_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.doc_category_directus_roles DROP CONSTRAINT doc_category_directus_roles_pkey;
       public            videolab    false    252            g           2606    60299    doc_category doc_category_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.doc_category
    ADD CONSTRAINT doc_category_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.doc_category DROP CONSTRAINT doc_category_pkey;
       public            videolab    false    250            e           2606    60291     documentation documentation_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.documentation
    ADD CONSTRAINT documentation_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.documentation DROP CONSTRAINT documentation_pkey;
       public            videolab    false    248            m           2606    91874 0   videos_directus_users videos_directus_users_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.videos_directus_users
    ADD CONSTRAINT videos_directus_users_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.videos_directus_users DROP CONSTRAINT videos_directus_users_pkey;
       public            videolab    false    256            k           2606    60317    videos videos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public            videolab    false    254            n           2606    60118 7   directus_collections directus_collections_group_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_group_foreign FOREIGN KEY ("group") REFERENCES public.directus_collections(collection);
 a   ALTER TABLE ONLY public.directus_collections DROP CONSTRAINT directus_collections_group_foreign;
       public          videolab    false    3369    214    214            �           2606    60075 <   directus_dashboards directus_dashboards_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.directus_dashboards DROP CONSTRAINT directus_dashboards_user_created_foreign;
       public          videolab    false    3377    237    216            q           2606    60031 ,   directus_files directus_files_folder_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_folder_foreign FOREIGN KEY (folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_folder_foreign;
       public          videolab    false    222    221    3385            r           2606    59962 1   directus_files directus_files_modified_by_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_modified_by_foreign FOREIGN KEY (modified_by) REFERENCES public.directus_users(id);
 [   ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_modified_by_foreign;
       public          videolab    false    3377    216    222            s           2606    59957 1   directus_files directus_files_uploaded_by_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_uploaded_by_foreign FOREIGN KEY (uploaded_by) REFERENCES public.directus_users(id);
 [   ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_uploaded_by_foreign;
       public          videolab    false    222    3377    216            �           2606    60192 2   directus_flows directus_flows_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.directus_flows DROP CONSTRAINT directus_flows_user_created_foreign;
       public          videolab    false    3377    216    242            p           2606    59967 0   directus_folders directus_folders_parent_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_folders(id);
 Z   ALTER TABLE ONLY public.directus_folders DROP CONSTRAINT directus_folders_parent_foreign;
       public          videolab    false    221    221    3385            �           2606    60135 ?   directus_notifications directus_notifications_recipient_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_recipient_foreign FOREIGN KEY (recipient) REFERENCES public.directus_users(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.directus_notifications DROP CONSTRAINT directus_notifications_recipient_foreign;
       public          videolab    false    3377    216    240            �           2606    60140 <   directus_notifications directus_notifications_sender_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_sender_foreign FOREIGN KEY (sender) REFERENCES public.directus_users(id);
 f   ALTER TABLE ONLY public.directus_notifications DROP CONSTRAINT directus_notifications_sender_foreign;
       public          videolab    false    216    240    3377            �           2606    60219 4   directus_operations directus_operations_flow_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_flow_foreign FOREIGN KEY (flow) REFERENCES public.directus_flows(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_flow_foreign;
       public          videolab    false    243    3415    242            �           2606    60214 6   directus_operations directus_operations_reject_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_foreign FOREIGN KEY (reject) REFERENCES public.directus_operations(id);
 `   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_reject_foreign;
       public          videolab    false    243    243    3417            �           2606    60207 7   directus_operations directus_operations_resolve_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_foreign FOREIGN KEY (resolve) REFERENCES public.directus_operations(id);
 a   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_resolve_foreign;
       public          videolab    false    243    3417    243            �           2606    60224 <   directus_operations directus_operations_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_user_created_foreign;
       public          videolab    false    3377    216    243            �           2606    60090 1   directus_panels directus_panels_dashboard_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_dashboard_foreign FOREIGN KEY (dashboard) REFERENCES public.directus_dashboards(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.directus_panels DROP CONSTRAINT directus_panels_dashboard_foreign;
       public          videolab    false    3405    237    238            �           2606    60095 4   directus_panels directus_panels_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.directus_panels DROP CONSTRAINT directus_panels_user_created_foreign;
       public          videolab    false    238    3377    216            t           2606    60036 6   directus_permissions directus_permissions_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.directus_permissions DROP CONSTRAINT directus_permissions_role_foreign;
       public          videolab    false    224    3371    215            u           2606    60046 .   directus_presets directus_presets_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.directus_presets DROP CONSTRAINT directus_presets_role_foreign;
       public          videolab    false    226    3371    215            v           2606    60041 .   directus_presets directus_presets_user_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.directus_presets DROP CONSTRAINT directus_presets_user_foreign;
       public          videolab    false    3377    226    216            w           2606    60051 6   directus_revisions directus_revisions_activity_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_activity_foreign FOREIGN KEY (activity) REFERENCES public.directus_activity(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_activity_foreign;
       public          videolab    false    230    220    3383            x           2606    59992 4   directus_revisions directus_revisions_parent_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_revisions(id);
 ^   ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_parent_foreign;
       public          videolab    false    3395    230    230            y           2606    60263 5   directus_revisions directus_revisions_version_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_version_foreign FOREIGN KEY (version) REFERENCES public.directus_versions(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_version_foreign;
       public          videolab    false    3425    230    245            z           2606    60170 1   directus_sessions directus_sessions_share_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_share_foreign FOREIGN KEY (share) REFERENCES public.directus_shares(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.directus_sessions DROP CONSTRAINT directus_sessions_share_foreign;
       public          videolab    false    241    3411    231            {           2606    60056 0   directus_sessions directus_sessions_user_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.directus_sessions DROP CONSTRAINT directus_sessions_user_foreign;
       public          videolab    false    216    3377    231            |           2606    60002 8   directus_settings directus_settings_project_logo_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_project_logo_foreign FOREIGN KEY (project_logo) REFERENCES public.directus_files(id);
 b   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_project_logo_foreign;
       public          videolab    false    3387    222    233            }           2606    60012 =   directus_settings directus_settings_public_background_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_background_foreign FOREIGN KEY (public_background) REFERENCES public.directus_files(id);
 g   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_background_foreign;
       public          videolab    false    3387    233    222            ~           2606    60007 =   directus_settings directus_settings_public_foreground_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_foreground_foreign FOREIGN KEY (public_foreground) REFERENCES public.directus_files(id);
 g   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_foreground_foreign;
       public          videolab    false    233    222    3387                       2606    60106 B   directus_settings directus_settings_storage_default_folder_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_storage_default_folder_foreign FOREIGN KEY (storage_default_folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;
 l   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_storage_default_folder_foreign;
       public          videolab    false    221    233    3385            �           2606    60155 2   directus_shares directus_shares_collection_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_collection_foreign;
       public          videolab    false    214    241    3369            �           2606    60160 ,   directus_shares directus_shares_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_role_foreign;
       public          videolab    false    215    3371    241            �           2606    60165 4   directus_shares directus_shares_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_user_created_foreign;
       public          videolab    false    216    3377    241            o           2606    60061 *   directus_users directus_users_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_role_foreign;
       public          videolab    false    3371    216    215            �           2606    60247 6   directus_versions directus_versions_collection_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_collection_foreign;
       public          videolab    false    245    3369    214            �           2606    60252 8   directus_versions directus_versions_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 b   ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_user_created_foreign;
       public          videolab    false    3377    245    216            �           2606    60257 8   directus_versions directus_versions_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 b   ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_user_updated_foreign;
       public          videolab    false    216    245    3377            �           2606    60319 Q   doc_category_directus_roles doc_category_directus_roles_directus_roles_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.doc_category_directus_roles
    ADD CONSTRAINT doc_category_directus_roles_directus_roles_id_foreign FOREIGN KEY (directus_roles_id) REFERENCES public.directus_roles(id) ON DELETE SET NULL;
 {   ALTER TABLE ONLY public.doc_category_directus_roles DROP CONSTRAINT doc_category_directus_roles_directus_roles_id_foreign;
       public          videolab    false    215    252    3371            �           2606    60324 O   doc_category_directus_roles doc_category_directus_roles_doc_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.doc_category_directus_roles
    ADD CONSTRAINT doc_category_directus_roles_doc_category_id_foreign FOREIGN KEY (doc_category_id) REFERENCES public.doc_category(id) ON DELETE SET NULL;
 y   ALTER TABLE ONLY public.doc_category_directus_roles DROP CONSTRAINT doc_category_directus_roles_doc_category_id_foreign;
       public          videolab    false    250    3431    252            �           2606    60329 ,   documentation documentation_category_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documentation
    ADD CONSTRAINT documentation_category_foreign FOREIGN KEY (category) REFERENCES public.doc_category(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.documentation DROP CONSTRAINT documentation_category_foreign;
       public          videolab    false    248    250    3431            �           2606    91875 E   videos_directus_users videos_directus_users_directus_users_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.videos_directus_users
    ADD CONSTRAINT videos_directus_users_directus_users_id_foreign FOREIGN KEY (directus_users_id) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 o   ALTER TABLE ONLY public.videos_directus_users DROP CONSTRAINT videos_directus_users_directus_users_id_foreign;
       public          videolab    false    256    3377    216            �           2606    91880 =   videos_directus_users videos_directus_users_videos_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.videos_directus_users
    ADD CONSTRAINT videos_directus_users_videos_id_foreign FOREIGN KEY (videos_id) REFERENCES public.videos(id) ON DELETE SET NULL;
 g   ALTER TABLE ONLY public.videos_directus_users DROP CONSTRAINT videos_directus_users_videos_id_foreign;
       public          videolab    false    256    3435    254            �           2606    60334    videos videos_thumbnail_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_thumbnail_foreign FOREIGN KEY (thumbnail) REFERENCES public.directus_files(id) ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_thumbnail_foreign;
       public          videolab    false    222    254    3387            �           2606    60339 "   videos videos_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 L   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_user_created_foreign;
       public          videolab    false    254    216    3377            �           2606    60344 "   videos videos_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 L   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_user_updated_foreign;
       public          videolab    false    216    3377    254            �           2606    60349    videos videos_video_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_video_foreign FOREIGN KEY (video) REFERENCES public.directus_files(id) ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_video_foreign;
       public          videolab    false    222    254    3387            -      x��ݎ%�q篛Oq�������_�7K�]A&}!c�D}�m7��M��wX~�A|�'�#8��橞�6*��0�	�h���~����������n�o�.�&��1C���7bۤq�R?��q��1�8�t4�A��7�Q���p���?��ݵ_:��7����?<����Juȿ���?z����>܍3v��}��٠�?��o��_���pw�������?���/~������1I����ک�x{�#�s��v3�~������q��H��ﾽ��������/;�wm״n���m����U���p�ۧ����&���8>=����xc�8,�?b��`��x���G������ ��I� �� M�I���?�$�Ѡ
(7�n���#*�m�j���żO����88��@�a���a4#�Z8��t��<�ۻ���Ec�Ԍ�`�4�Mj{��Z�'�����=��ӂ���2-�a�\cZ�?�vC���hC۹�:���~+��rƋ�}�q�,B9����~>>���M��vl�i�C���nM��6����b����݅W�r��ǟno�7,!��-H�O��.�P�"��H@��Db�H��x/��Ϣ�G"8�^"�&�&�xyY��P�i�(�� 7C�D�H8���$�] ���h$F�#�PS#�Jی��c�䬙Ȅ+_3���
	U�_����1T�
|�j�N�	U�_���HCU��W�Fpm{ń*a�/a��
�	U�Z�����C��/b��C����|���U�Z���Tk�2p'L�-)|���U�Z���}DX��X�W��Q����L���NJ�@U��ӗ��8T:�C�����0��ڵ�I<!31<&&�D���d�X{T)�	5D�['�(��ә�T,�S���Y1�T,����{jR��~ڌ�¸�pBf�xD�l�I8�
��Y��l�vN�L���ԅ�=�M?��A�Ʀ5zhF�Chc0��K$�D�(�gy�C����o�p��wc�	%�X�W��|*(&[xD�$3A��9ap�0���mm۶~(���<j݆64)f%�!��s�=f�?z��%�Xz�%�e,�H�v�n��|ʳ���	��A��J�Ar/��t�۴�l���L�wp;��]l<�����\N-�`�h\�O;�6�NvpԠ��=�.���KV(�������h��tN/�N�7�p����r3�)�kg��7����w3k����Y�1E�m����.N�mM3�8���Ƌ#7t>_\ָ��� ��7ZD8�.���0�G�]<�ػc������}���'�哗���R���ɘ"M�RϠ(�y �9�W��A���^���K"q���U�e9�098
�c��Z��Ή�W��ͺ ��z��i�j���&���5��5�e��^l��F�gy#���d�ˌ�=����}�"$�(�9f�i�}�"�(�����w��h����(�tA�`��5�˂<��|���So�XԸ�HH<N���
��"�� TajJ��(B防�EUo�����T�E���i�Q[e������F�ݰ��C��Ό�x孼m�y�Gxf�덼,�%��{�Oc�f1In�㌃Z���� ��0���T�5���42���JM���ʣ����W�D����3y�8�k��G��O��6j�4��*�S��}���� ��iX� O�,�SM���w
��M5�g�4����Q#Gb�QD�Hr$�-8į�^��QT�ɗd\=�q�?e�[��GQ��w�Z��W�f�[�*0���/m���\E�	��Fs%i��t�ܚ+I�.�Y��v�դQ!Ȼ��<g��j҂C~��]���<�@2z(��BC~����Ҙ	����ʃ�K�0�˃΃uuG�Ux���6>�*���Ȼ|[���Ù*��ۓ�Sv�l�dXw���?�
�
�`Н�8M��4FL^���Qs9SM.z��t��a���1�3a��·	=fp+����7�������tK� �86�u�A���uvl��V���a �u�U3teFT�Μ����UrG�x�T�0�LK���:�A[���� s6��̃<�� ����*/���ay�j�~��,�4�_53^/x�	�?]�#oM����*yy��Kd)_�u�#��d5_�u��
(>���`�_Je'w:�<�����}��vp�M�/�ußy$���o���,96�O�lYh,+�[h� �#_�Y�:u�lB.�}�����)yL���+�����/q����C|�O6�5�u�?� +^��M=�ej��C�aKN��,��8��ؒS�*��<���A/UYe�y��2z)��4��A�)���r�z�É?m��j1�,�_d��\�^xH�AOm�\�^��������F��уթ~����)=�G�:5�i��r���4�/?蹾���C`�]u����(��� �uǕ���6$�9��2�z�c�d���r=���d�ʌ��sn���*#�5�$�1ukv[eDu�����ѳ�*��5c��I��������A�/�����Ws��G�Q���"_���}ϕ�e����t�s�i�k��>����S��]%�x��STV��z�������r���)�;��=_~8-_~��X���������������)��JQ^u}�(��e�e� =7i,��i���*�(*�]a
��W�]c���� G9o�N�,KY^P����e:9�UZp$%/n�N�
I
x�^�&��J��L�x��@Un�&r�h��B/o�TYșȩ�+�X�'mX�{�ߣ�;OjYp��[{�=$)d�9/�m���_��:��;뽆�p�A�\�M��1���NY����22�*�������V3���;��tq�M���;�^"�B� �&�������h�c7N�|��z���}�����|�
2�3W�`c&�TV���?���ɦ�kL��'Mڶ�0l��@&�}��P&���[ 㔅32W���#���C����.�2o|�N�7V;3v0Y��H,ɞӗ,�?I��p7>��q����1����M[�D��ɹ�����X�>�?�\Q�a�����cNto,=�sfn����\A��,�����+(�8���E���

]Nr�NP�YA�^M��E=AIr5�

��
���g(F�0�ꉜ?�e'L�ݪ9��3��桶h��J����$�R��@����%��Y�|9k��*�

U΂��Y#���

U΂��Yɏ$VP�rX�\'(��+(d9�r�:AI�8|�,gYV]�|��
Yβ,�NP?�\A!�Y�׳ �.}�,h_�J�t]A!Z��`��SY����& +(dE˲�:A�I�ڑ��+Z�晟eB��)h�>�Ȃ�e[egߙ���Cֳ�Գ��<�e��g��g��zv'2Y�S�ڨP�	�

Y�����y`'��P�z����,�cQkci��wɄ<� �@y��B3 ,���YwR�%�������
�E��e,ǯ��je���ww�W�Y=���}+x�JZ��e���[\܌y�-��OQ�C��~hah��R�&C�7�#�<���r>�Z��=�7w?��o�z���������үL�4*/W�+�/�'�a��C��UF�L���5�L�G펠���\_��s^�����89,ѭ��������6C�#���.˨3/03�|�eB�G��JEU�5�o�������ǯ����7����f|��}x%j/9�>)s����!n\79s��e��d˰�k����٬�/��OO�����[�j�7׆/a�2�窣2�-�E���q������6Y>�[�qhM K"�\7�����h���� �1���M���`��b����#�m@MWM�Yt_����U�*v����lM�X�_�D���ͳ|?vէ�5�^3g�n�`�#���̓,.���*#\�zt+�m%6��jq�#���tչ5�.�6�X\҈���W��ڶ8.�Ҟܢ���,.��QP�ʅr�1�7���N�G    )��P�u�H�&��S���=ծ���*P6�����A��vQ_#�lwW[C��}��P67_B�Gp*�%+&di��f�	���k��@9W���l���L�05��i}�h`����)�ꪣ?k��/;CG��y�����!�8.r�w�A�U�����b30*	�䭠��Sۭ��P�S��M8W��.���p�I�o[!�n7v�#�5�mp$`�7�.7�םt�ث��n���Qg>W�_̛η��6��&������4ih�h{�,�y�v��50���[�x�������;S��]aK�9����6�m����ע{]��ݹ�M�.��QG��Z��g��f�K�4]�u��[M_)����l����;'��64�ˑ�,ڔu��S�`}�϶[ȭ�Ay!/^W.�`���3����U'��˧R�/�r>o���'�J}}�Q�_�:��qT��G�RRpUӗ7�Q���8�V����lwXp�r�W�7��88��\��!�㨬�qP!����y�v'�`n�7�W@���g��G�����K��^p@�q/^�:��Wbe��BK��;���n���W�]A������+���I���ڶq��B���)5q��.�h��O	�nXw̔��J�[��W^ӈ��u*�)8z�ti�?�0�6��`K~��뽾��WZt�o֏�n}�C�`�&�ij �s6�0XM��X�G� +��*^u�0�"��뫾3�rf�ޘ��~&Q��2a@!�g�]�.���O�n�L�pydQ�w�U�}���_�!#H���f
�K��u����N>l|��&��Vc��&��4]L.��H���(���}�ſP�q�\��]>�}�֌E�dx���<��8Z�깝Zt5� �n�1�������|۴q
��&��v��K`� pK��Rrg�v��e�VQ����m.�@;�O�P5}�a���!�b���.��ҁ�:�X���u6�>�9wmc�3��Z�8Y�1FCP�o����X	HP:?�����8��O9��O@3����l���%0?����Z��i@�3�Ə�+a�m�0�}��=i�胦ư� ��30J��+�H�ݫ�W(3:K�F60c�.�V70�� ��i���C��DD;P���c��S9^k�9st�l�����j�����Ç����������������������o��?��4���?M���?<=>����>�x�}�o��NvP.X�JN�v{���D�ǦӺ-���&�Y�����������Y����^޵Ë��Z۶.�r�|���I����&�V�&=X}�H�'���)��.;���{$�HGc�x�[K��yd����wq�a��C��� �vwcy���v�"�Jx���g+S_��͕��3F?P��T>"<Cqe{�~����0_�h�Ӆ�K��d����ӕP께C�.�A�	~�U	�#F3�D@^��9�pD(�r�a>��]�#BˀM��஄W�Q��#TO�O�z��pD�����v7�8�L��|�;4q|&x�ޫ_�[���Ox(�ʭ�B�n7�}�P)� �G��X$�T��T6���t(�
z�bt梴܍�bB�̳P��0)XT�}����Q"���R\?�1J_�m3��#�}�,�23�?�L����v��O���˄:���JG�3�2������eBta���}���^&tͿݍo�<	�4۟X'�Kz[��p�fW;�,Ule�̮А��e)��բ�Ӎ!�6[Y"^`�.(Z`p��|��v���W�{K~,K����F���[-z,a�Y;g�I�P�A�ʪ�JVoN�l��z
�$�+�+�n�Je��
ZV�PX�֗7���c�x�]d������>��PXJ֗'�V�d�зKі�S�~�R	�U��g�y#����}*�(���2���˿����C*���ɈhH���h)"�u�;�)���j>���G��}�9��Q�p깠��Y+�̺�cp�ۦ�>Z��@u�֡���R��RuA�<덂'[<��~,�#������58��i�h�)�-L�:��:�Z�r� � �-�9Fɯ4VŜ��-�1N3,U����X4�n��]�`8�f�~}��Yl��8<�z��8���'�qD7`y
��u��G[�?�(�ʵ�3�s:! MRZ`ʾ�ANK}吉�F�����<�����g��T�\Q���<�=T�.yg6睂O��<Xb��Cܹ��(ur�T���3TZ��=� �yN=��C�S��xa�Й�ف��xa	҅G�>�m��%Mg��3��R�@w�#��A��S�]xX����U�0w�c�Y��s<P��ʙ�k��c�J�����8E�n.��m�TQ�<�!
��~Ƀ����!�{�.�N-9{	��ۅG���̃O+G�^�7�����k���7W�TV�b�#�VD>~j}�.x� �8��b@��ܙ$���|����D�X��
>��C.Ժ�=���?=� '?�fs�<G�O[�j�K�Μ��_7H~�[�!w����AN�j���< ��+�q�S�=�_T��pպ�]��y�o@�&{�!>~Я��(��0N|��_�%NQv�!����+��)ʞx�v��x�8Eم��wd����e��C~���/qZN<���B.B&�>E�Ej��_��S<a�j�>uV�#_����S�_rQ�j�>-���r����O�H���|5K���F���`m��ҧ��8v�K��#j%�5赪�Xk:v��
�yP� k�.��'ܗ�X�Mv��
�'�m�7�6e�P�	�#^i��<X�R�0����=T庄��e�T�4�	��a����ω�&�?��P�i�%ycG7��Z��g
���5�n�������*|��#^�5(o������5S(���F&|~l�@��S�2?Hn�W���G�I�{�[P�!`��h�%��2A�B���L�V^���硐s�'X����q�8�7@�(T�2��`+�pk��^ŽH5:�~uE�{��y�P8�Օ�r�[(�W\���fe����<8"��M��(W�l��Z���<�OPn�΃S_u���.�	�ypje�*�P���Edy��T*(Q�{�z�}��?Ղ��e*�l?r:]��͔L^>CJM;���Л.��#���p	��̬�f��˧^�f�؄9�C�jiԿ��4����N�@}Ć�^��P��(�J��]�xe��uL�~&Af���V(�Wb�|�0��f(e
����Pꫵ/z��

9s��j��
�3�J(,y뎮-��J�>�E�G�@q�g���P߆"�,C���N�Lꋵ�I(C���D�С��l(�^��Gĕq��g�)~�;��d9˰�� (������G�(a'�;�����cg(`��ɕ�(9n.���d���R�|0C��vrӑp�0[E�oЫl]�q�l��rDyoV���ق⭤���xPe)�ӭ�1
�>4�(-[<��+���s�l��#�<°.�x��ͩ �ó�W�Y��1���Q���x��n�vyGJN|j͹.����T�"�֢+�;]
�Z���]�յ�	������*o�r<�%���(��i�<S�ֶk�����![���jͺf
��8
n+��/��7p�b�����4��%h�Y��{�4�F0T>	{�󏴏���1��������SBe���f�fT��/���d[k�u	E^?��38T�d
��P���!gá�{��e������R�YCyԒ?���/\(�6C	��N�)m�Ri땡����q#�^�'��3�nc���64m2]C�Ѝ�����2V�i��ɮ�,3�Ө��o,F��)'X��
�l�]���=@�����[3Bӧl���2�`�{d�	����X�c�����d����P�ȭ�0ǈa���2o�%�+��c<�Dk`�:k��al��b�Rj�a0h�#;�a�W�3��â�I�[3����L��An�yY6q��L��OsNѥ)��Sj����T�J�<�-�~by=�OO��?lX@�egy	n˪�Qi�Z���4��� c  l�)�����~=L֩NX}жԛK�����~u���M�&����iȧRsx��4�#B��|*��b�X(=�ڣtb�O!�I�-C��z'�M?ipck}?vdbu�ញ�sj��D�t�����f�,�ϥ]S��M�(�r?����C��{���~#s(b���[*��!�?��}��b/W���	�%ϋ��[)1�x�/�:�&35S;L9�t��.6�p���x����O�V��Hߖ�}��N����c�ԇ���M��n|��n� 莘�oK ��߾i�������:���i�;��8�����|o��a�k���������e%��	ʜ����K�/:c0��(c���z#�B����?��W���C������@�<tY�|�,���Fr��h��2&�B�	$F]B$b�y�V��1�y�%q[m��9]��ؤ�׏]��oK�"�0ڮصR9am��������U�v����܌p�t�[8C7���h�r�C�[�������:��J�)*�LN V�.����mPw]�Z�����S=�_i:j���	�x��̄��T-YG~�,8:��|q���!���FӠ��S( ������s�����i�L��$��m��.]W鷶��P(r�ؙ���������42(���@����j�4�̜4�G]�E�aK;೥�(�a�T�}]�q����Z�{�A�:��q��KXk���+�p�Vn���!L��8ãΚ-��xC5g��&���<x�������
���%��I8�=�[�����8�ͭ0�0���K�W�6wP)�/�	�a��l���,��v)�� 7�����N}���Lʱ�      '   �   x���K
1@��a=�'(�M��i�$���V�B~����g.Hw�#��0�8NHb�֊�-D��뵆M���� N��:��zi�Q��YF�b%bV.!���9z@^��)�Q{����d�ٜ�~s?��-���љ�q}W��,�k��'�S��Ut8h�?��      >      x������ � �      G   &   x�K,��-�L-O-���O)�I�,�J�O.F�b���� ��      +   �  x��W[o�8~���b�aF
U�%з�v�T�V�}��"���`j�d#��c��6����/�s�s�]-b�.D�0~�H���S#i�K5��$��Z�Sگ���f;��0O���BK�D�DHC
�(����]�>FT��.q��jA/��p�\�8�X�HtGB����N�\�z�ik�e-����1�v��c�HR�/����ýyl�2��^��[����I����y��$��>��e1����0�7���[����F[��}w��־ck��|�C(_�r�]��(� ��Ej�/O��c��F$A/j�HDIJ�Wx�y�|*$'�X�9�_�J��*��b �(t+`�_���[ @��<���}��4.���j���
�� �|.W:�cBm�uo��T�jڛ�[3��a�1�6���&���?�T�Q����^�8>|���\#o�߈� 6���1Pl���v��r+��V�?�)(��I�i����K�Y(���j�X[�@"̄��f��r�����k5ӈ�`��b(/�`����0��^<��	�=ɨ�TQ�U���<���v���ի�m�|�{�X�vg� ��@*`�
I�,��x�������Mp(�'���@\��kZIe�j1�B��q�e�� B��렩L��k� �t�7��n����Z�Lrc&w�r�uG��J��\�oS!fm�k�-FOϯ<�tz$�FO,��&%K Qʎyu
P�,����P�
�h�I���@�L5�F[���jkUA��3N�y!�4��ϛv�
�q�i�P)�ވʃF�Y�#$��	�K�Ո����>��}[Ds�y�V���F�r�^=��L#�n	��(
0TG5��g�+�O�Տjv(|��1��C�᧯�a
lz�e�z��}w��������-@a��bώ��kr�l:��躢��]X%uTM�v2		�}L+ƹ�����g�ϓ �r�(F�Vu3(hJD��Y��lSG�@X���É$u7���4��l�P��˒6�{���`���1i��"�D�\"�9i�HzI�i���(�,ꃠ��� p��A�S��;�`� i�J�p	�n~O8V�[퍜�]`�� [b�� ��gT�����w\��x�����Ӱ^`c÷��.�=�-��N�գ���g�H!:kQ ��a#\��]m7�C/kѹ�;��U����tݫ���T1�����d��w�B=�ywss��Yh/      /     x��Y�n��=S_��}HNƒ[�z�60l��2@!7�˖T��^`��YUT-vUP[@Ch0_�/"_� ��QU Vl��U�c�6?R�.�9^t� :\^s���S������o��We��js��\��l������-w6�nh���J���
��r?��GU�5�\�c?v���B�!�W��Vڷ_����*!jmw���w��+�Q��R�g��R��b2>>г:\_��|�������^�*,��~���M[��>-t��x^h�'RB+����S���ê7Ȁԝu�5)����dK���Dš:��v,5Ռ��,������o5�9^���Ե�N�&y��zW1�x����|�J�0���؟��=�з�~���ۿ�b������_ȉ���C���1�T�i�cҋٗ����v�f�a�tp_�@�V-:�NZ�f�7v�:����E1cQ^��¨�KF[0�@��S�l����w=`c�z�\H��u��s[�*��i#r�9E/5l{p+��`�1�N��2�-1�+���19(��Z��P��\j ]se�&RB.*Or�D4�nJ��N��oj��}�����9@�� <����I"̃�L��xF���I�����9���>�!z�9��|fUr�X�c-��y	�(���Q����3����#�	/�3z+�ˇ �3'�1�2e�I��F��(��Y�Q�9�=м�"O�t�'��"oW����fE~p~yP�?C=��|���>u���$�x�ɑ����7+\X4�}��'��
�^j�B7X�,�{��a�	�h��0ת��I�PH�Ȁ�~��KA�B�8\�<��ןԏ��u����?WW����ۻz�N��/�^0����?���a����ğ��&�:� ,%�*G]M�r�S�jb����f���#V�Q�m[�@��z��2i���d=�蚴��Ys=Sy�m� L���k��[V�̼�4� �Z1A��Ro]o�WIkq�d��SF/O��#D.y�@�@�RoМl�[�+SopEv,fd^C�k��q�<�};�6E-'T��$�3D�Z�򔤹�I�@�r����ܷ��p܏�E�"3H� ��w(��9�C��>;.��q�9U�~��RL��F��F.����(����h,�O�9�h���N�t�08��cY;},=���S�#d@�o��PL���,��,�Mi�S��b_9=�WHz�/�2@��c�&���c�{XۆP�*�i��&�\���~���K�J��K����@r@q�G�(�7��!���b�FQ{]!�<���m_���/�����&�<�%�|�A"�I+��M�$��Qe�r�mحEE#�C�1���x	�iv�!;5�ge����}=Sֆ�f���?����#َ���'o����*�1@Q\d捣���!��\���z�|�t*�-�U�GQ��'�"�O^>?��-�wt��$ӛPհ̬2ω�Q�2�av������$cq��w��t���������w��]�����!CL_�5Ą�@���ٓ���#+%6�2��R}�U�BI�����Nd-���/\�O7���1�_�����ɕ���t�I܊S���Q�1 �CǓV��͋���[.�epE#PQ~�\�Q���l��;�%�]ټ�^����MU�6��mU?ooo/���z���?�����^�!�*�8�R���%�o��ٿ������z��+�@�k}M��=��}l�kͺH��y�0Z"���C��>����Ѓ�      C      x������ � �      .   |   x��I� @�u��+� �%z�l0�R�J�:��M��cA�:A��� u�`�=O��6Z�������4�jͨ�P0��L��5��e��牣km�1<~�R��,%������?�5�h����aa''      =   e  x��W�v9\�_�H���Z�w���gL�cpf3dи�&�p�|}��%9iaoXp��}V](��`*ggw�P<�(��lj[��(�����\�QL�w���y��W�c��wX�ӎF�4��6tg2��"x��B����&b�eȰ���ʚl"�����l�E]m���9p"�JC���b��A��o��xD�w7h�|4�x*��O��GѪ(�.�i|�p*G���7���lOU�'�s����������hm~��0��!���T{t�צ|�Y*�8=3�/����3S�_}n�L�"��,IX O��a�6���k��f�~��(�+�(�׆ѥ�7� RJ��q�й>��T^���$�!��l6uS�W�.%I�*�]���Br �6�#T(E�q[�֥��L�C�(�������(#"e2���:��n�Zb��n����Ҙ#ZdE��+���Q�'&�Э~UǑ���l.`��OZ��˷�˹.Nm���v]U�4��`ɋlk��%�J������c�>�Es�<H8�"�%�z~ol	��J�D�"|Zt������'R��Q�>���@��j��i��xi�W�)�.�OuZ$0���� ��`k7��!�`�~3�P�YS��mY<�h�8ؑ�"�����նi��oG�K���6����c�RDNq�3���
�y�f�4�R�tn������(*��vs��4Vr�T���%]�"�BJL��N�V�o
Xi��x�P)����s~6f"b����A���D��ʔyԠ"ñ����Q]�%��� 0�&�����Ƹm��L��ţ��Tb�̇LWG��:�kO�HT�gwc;V�6�^M	��!��i���Ʉ+��MAX�uqY�9L��$�������V���G�Z:�3��*�4{`��Ly:&�H�����.;����$�b��ws]����P�H�y|w����e{�nt��(��Ǻ��u�#��3������Epne��]xX���Ӽgi�V�����0���8�έ�M�vb�Ga����_eŏ����@�5-J��Ýs�Q�))g�eq�U�[GWeq@׷�xh��)v�*&���)���Ay�뻨��Ğ2%l�ON����%���D*���@F�}�>Z���p<��
\�Ȁ����T5�6��nK�e$#0�Q[������t�K�&T���)-�t����@po���������ጿ�n�LI ��vW��ߪ�J�����?{��\����c"����>��V����j��/tp��oo����V���	��0=Ig�}���õ]����3Ѓ�a��N�'�3�ԃIo,~B��	��������7[�c�      A   a  x��QKn�0\�)ܬc��(E��i9@%6�~�`8D���'H�UN�#�$YP��.����͛��u\;;r�$ I�Z$t��c��N�{qA
\P^`�r�0�p����>g9��G��`�!����ȍ(��A��¸o6h�����D����F&���5�ޭ��5�d&/�����P<kV���5�8MF|�nj�"�j���:�P��ȗ�������q��1��VTR���h�}�����}�����׳R��Ol����昶�*J��0XڤMy-�����3���,��{B嘐l�?�fҸdDL��ʼ��Rٯ���ʦ��5i+�L��ܖ%�      D      x������ � �      ?      x������ � �      1   �  x��X]��6}��B�T�U�&�Z�[5]M�O�2�$�L�4]��������>u5Z�c��s�ﵹ��ȃC#�2�]��c��!�c;�w�la8.�"LH��M�0,���y�� �~֬U8�(�*�*G�qV� ��1����`q�(dh�"o=�%O�z�)Y�z�)c;E�f8�c�ܮC���4��Ly2U5�"MI2U���a6�zz�LU-T�@�Ф8F��R�Zq����C���?��\����o�N��������?���~���g ��Ui�ߕ����4ը��16ը�H�~t�w�࢙5}�����iO���:i(���)}�V2��c6�s�Y�a �@QB�����4�м$4+@�YK����g��f�VN���/O�I�,��H�B�&n�I�R�H2�������P��Sȳh�JR�D� A��g���
O��=�l��Z��[�o8V�Qb��s�m��9V�Ձ�s\k���(0oAdc�S�؅���z�@z2d��9;#���C��+6�k&�Y�m���I�l���ߎr#�$A`$�Aۀt��t��ual#���u�$xkx���ۈ�86+�&����+~�#�����"f��,(� G\B���0	q���f)�HzB�/�<�~T��E�!8`�?����� P�j5���r�K�<T�(�$��C�c�Ҹy�}��_�@:RD�Q� >F�*��O�������4k�/Ơ�/v�Φ�d�e����0g�/�6�a
bN�am �5����K�qF�av�jkL5�t7��R�{F��u��(xa�f��:�^�[��VǆڇI�|�:a �پ��y�!�Y,(�\'i-��A�E~��緐^�&�B�G���͒dx����U@�r�Z3-�l{д�E�����G�p�ǚ!�_�6�Z��v���w�.�rT�~��wT�~��w���V�S�e��P�T����*�M��*����QU���'�e�u����G���(^)C��<�~��;�:߾9�����7W5���o�jz��}sUM��훫�ߩ}s:M[Pv�kB�ױ�]�����RZ���z��f2�J(K3��a�N@L�|d�C�&�&uJy�$�����r�;�=� ��}���3�ސ�m�!�[z�'�+���i@ל�\#����fz�>MV,r�9�eMW�-�~���i�m����I����7�;�N����)cG]p��|���$ygc~���6�r��Y{��.�#Y'��y���f0)E��<�m��o���e����r��wM����#2Gڪk՛���|L��?������*�C��І�i���2��4/�q�-�$R�4 ��pL���,��:0.y�ȶ1�ϴ]�ܸp#��zě���x_l�"��DX�����ӟ>��$x΄��y
�ۃ7��M�l�x�[�a�lW��r�!/v���ձ�w��������:R      3   �  x��UKn�0]ǧ0�6Q"�;@��@�_JD�J�z��')�:��mi��p8��y3"����M�xVi���1�`�y�sJI*�\fSܫ���������h�
�d����־l��{UL��IY��+�i���eXV��� 	O�)N���F�V�h���Np�u��ւT��z�,��6"��t�r��μ��j�A�����pX��z����`�����_���v~���,T�2� }g«�pv�~eb��<*V[�y��vg伌;UV@�:	.
��]���%��
|�,rLY)p���+�x%+h�ߩi�����L�/�v�|#��kH�����,��h��CX3�;}(2���\�W�(1MS�+�$8)�,U:��:��(�J�����_�W;�hT��gi7H�NT�|6�[�� �����N�\��Ӝ��]�����l��Y>~ȁ�5|���iLN}sLy\�F��y+�9� ���]�x�Z�~ ���B      5   �   x���i
�0���b�[�B�f��,�����m�N��B �0�{/J�iXS{��F�#�d�gR��A*����AJ�E��"�5��*�0:Ym���h_��!��3N�O�)8G�#����\�Z���s����jQSw�� 6�������cXJ#�2\���RD���;��tL�Yz�@�խ�J�:E���0      7      x��}ks�F��g�_s�j�!��Ч��I6u���vv뜬� 	k` P����o�<@�$J�$Қ�#"0�G������Y�$�h�,�iM�&+N�9�2���"�ӈT��߿���9����8K�W\-�I��5Ղ^N�/jZ�[�N��n�:+��������&㼌?]�9�g�YF�i���IoN�å�C�߿���5�G�b���������d��YDy�/�zŻ�G�jw���]~�Y$��z�a�Kޥ}�t�ɯ��W��Zj?�H{�@�]nՆ�B����=���*�o���ע�x�fQ���b���Gq��@��x����C�q^��mk�iZV��*E��""��E�P��,�S�5+��i�l�;�\�bN�����鼄/�GuSV�N�-m�ME�f1C�����yE�_��8^���4������E�����T��HMgd޶������m����I�	��*�7e�&���'�&tB��w�㤞�i��^'br���;#�9%@^1vY���S:��!�a,���i�Sh�i4-�hU���F	�>�7�'�_�p�����F��JN(9�7r�5�H2B�.�?
n$�d�i���Ʌ��591>m�y}���*.9����,n���l�d��!J���1�KY�B%k��Q��Y3�́~�֔0���O��k�̠�)����''�n))�i,����؎i��NM���u��Ğn:)�(R;�94Y���i��e�ʹ���B0a�(��Iy^�%I6?���?8��'&�^�G���)%���O��g��4��I��&1<ݱ� �Yz�X�'���,�g����|~J��� �T.������l:�dӣyq��t6�i������* e��!���y�m�a�vE�+�]��w���o+���i/ETU�0���#�=�A�;a����&ħvl���૧�D�̐��"ۥ$��x h�#��;|)�l�Lg9�9�fY]ge�%+H��d����6�#�7qEI����~|��7�'����o�@�h�P�v��9#�����a����^F�qG��{�	.�ɣR�=�/@�L�D��SLhND�4� �?2�~��SLH}��JS=�$����˻�<T,=��e�ʿ�,X@=�$D(�1��~`7������ �9��~`��󜓂�)�lH�Ȳ�K��|P!�@��#kH�ֿ7������& �䌬�V�7'��b��& �䎬EܼBg��G��lN�����+���Y>�I�@��#k@7���9>�]�`3p
Fր&n��=����]) ��U�ֵ���qx�aF����Ю�a�zc���|�_�S�����޾�������}�v|�2�4�jqB2�d�7����� a�\Մ;�>�[�^d�����T�#�f�F��]�ӎ���A�dZS��{D����9l1��q�Ì.�c��K����SRm1����h|f���?���i�g� ���}�@�/0d��K���6�����M@@��Cg!Ö��$�$-��)_��2�^a���wG��Ug[u�K����:My���5@������d�F�I�@O#�NBl���ӍS�%��x�y*����.��=`E[WX�yy�Ŏ�T��	�HD�H��`���g�e�~�F�Z,�`2�!;�q��)��>wgk�Z���=`�[h�ߤ��t:757`sy�}��#{�"��eT����ylj7#I@�Y{���N���ki��:g$�n9�7�V��$Mɰ�'�P��p�x!���D��;��'AW�_\,7F΀G��
�S!�XA���\Xޝ��Ѣ�~�]o�Wv.Vg��!��̣`yw��+&2���T����a�C������.��+��{��C�������i�kfɆ��]ߗ�;"lg��rFΐg$��L�e�s���5�#g��H��Iz�a�~o@������,*��~Wة
x#g��w����9��~Ś��3d}����SՐ'�����g����E�m��"i3~xC� �+h!��]��ȍ�(��Х�����A�V@���(���;A*�;mӖ���d�x����X9�;��g��=�C/6��<k�9u���޾��QA��A�������q¯�ɋ)��=�����~���h�<�k/aqd0��!��u���G�Hw|#҃(6u+%��.!RPS~��r8 �� 2���M��~o��Nxl:G�����ٜ�z���bK̫�b^^y��~nhU�� p4�B��g�"�Cޅ�f̵�UսM�~�g���U��h���m!�n,..!�nK`-�#w(XKn��ݶ�]�s�`G�n�š�]u{�%$E�<c��,��]�os�z�.����ns�vo���C^d�C�op��fAC�>⽗х�7G��%4S�[�o%�R~w��5r.��d�?U�II'%�&��ٴb��3M�fiT"J�(%��RD��o+���g~5H�gJ�(���ЊxqG��qv���X���N��zdSO���$r�E���v��㵳�����D&�dD��h�r��9(D�8:k��W����F�Q�rS������'T���M������̡�����9�=��h<pz{=�;'�_�MA������N���v`{���5�_����4�а]�5��vJC߷��1	#jEd|��A�x�8����7��r�7�6�!G)�:�z�Ћ�	���<o����-2Nay�E.�_�֖�q����B#Z/ĵ����0�݂�9iPq����<�s-�pAvR�4��$E��Z7�������|��NOhA+��g퇠J��9�NZ���5�	�'������Yy��^|d���W}�C�`�L��hѢ� ��&sޡ�5Ϯ�&Y��*�W��E~�e)�(�x.�wU_�h�/��P�D��4����'��	�����E���j4��ٲH�"EmI{d�@n~��
皰��˘^�2�V}����R¶�������Z���������_�b���4K��g���؞�ϳ�9E�n��Zf��d���1#��F�c�Hڮ��˷��L�'�l�펽y�}��:��=y��l_)5*ٙrH�C��_���'II0bKYHx���`�ګ_�i�Y|��95�X���f� '���4o�L��!�1�]��;l(�O��/���m�^����&���	���WY���-]��Ol���1�0�i??�#� ��D����m�S���L
ʧ�	Zi$*�a���n��x0��4;YT�+��V�YkiUθ�B'(*���t�j��M���b,]��	��T�'��</�o��IJ&aN��p}�lꊥv���p�ظ���օLsJ��'J���������,�'Z]2��6���\�(��}�'��3����ߠ�������y���y���Il�WWw���'�Ў���(J�(I��j�]�'�O����k�����u:���Kb{��W?�|x������.xy�ѝ9�����G�9��ݎ:�D��7W�`�x��sU���o��a.���㾦���>sMi�OD�t���m��eL�\6nI��}Z����n��w�.w�����o�����l�,}!7��U���mzEλf��c0	�qT��a)��[Z��`��(G�H��#?�����* �@�Q`l�j���{@֜$[�6Q~Hqy������\�ݎ��|��ug��6��an�ks�N;~�3�>[�M�gE���&3ic.z8�xs�����[����� zK�)���� �pe�-��Q��s"Õ}&xl\��+�~\٣`ӣ~�|e�#���pW����[�9���@��m�'��w��3i�2�kc�s¡����A����$km�Ym6��~8�J��X�)v�'U9�
�:6�����/s�<��I���v�z�!"�a��>tz�`��R��{u�h��h���WE~���i�Iꤺc'�����2l#�h��KG(���*;$H�ѽ@*��y�����c��    �V����cEFסz�~���`Ӗ�D�o=�h����*�O��~]>Y�2pzl4���~�ۺ3�CJ|=p<ç�e�n�b�ʜGM�#�$�cQ6<�]�=G0��FB�˄W�78�S ��g����A��d�F����n��mN�NNqL�(رXs�]$��
�DZ0
{����mi��m���ܣ�s�]��U��1�������:� ��AY`��oCٶ�ĺ�d	���<��|8�N��>$���k�J=!�9�FᦣJY�{a=�(��L��f<o��l�U���Mϔr~�n���Q���RΏ�r~�(��P)G�r��Q��p �B9
��[:
�`d=�����}Cf�� ,n�{���Kh vz\;�+p^����xu��g����Z�ϯ-�	yL��+��H7����H7c#ҝԵ��'DO�$IL�&F���n� M��G�"=�>�쇡�m̾j�p��e|+����w�i���P��� qK�;����%8���M�@7��&�j��Ls�I��m|Ӵ�ڄkm@�5��m�q����Q�;^�AdS=abP�~҉��oܱ��ޱE[�4{ܒ2'��ULk}�m��ś[�T��t)����6�۵v�3M+h�+�%�k��ɢ�fx�ۡdWȐ��	�^��:�WP�%у�c�x����il�ܮ)�w���g׬��b|��~�Rk�)���[� wT�]��-Y %k��6��"}��<��V�a���ֵRu;ٍ��1n�����x@A�>�" ��9�����,�����CJ0� ��Z9'��)+6���q]�e�,���$X�m�n��е\�	��..�vv7vO>�{�^.ς��8�}�Q�7!��>~5���u���I;L����Ɋ�Vp�~tه���2u������OI����i��훞NR+�m�5Sˉ���d\9�:�^�i�xp�k�?h�:�]�d�`�=F�-0�C6��:���Z�ҪF��Y�U!�\������q���Chў�g�VT�6�H�t��߫mH�fg+ݵ�.WΖ�9�h^����,��[\�/?��[��T���S3R]<�j����eY��������q�	�����&:g}Z���_�����5�]A�Wđ�a�io�ڦ���S�Nyr�����.��)@�W�9�k�`��Ծ|Y�b?�"Bk��l��I��zk�]��U�EL0+�M��lc|��06F�9�~��!��&�]��m�#�*��?�=L<�H���+�i� ִ7cS��浪.#��<`d���=(��c�0<�4�M�)C����~j��?c��?#�u&�kA{�=<�4힠KO"һ���7R�o ��4m�v�U�m��>�\��ڟ(��L[�N�����ūxUqM����r꽸tF�3�����Po�Ћe�ܓ,L�ֵ{�!���{}��J����Ş��\z�^��<FY��f8�,��!7F�ڍ��W��H� Xj��9��2���ruԱ�G6���@$��	��һ�D��./�D����els�2�Ɛ*kō0tm�
lp��	W(y4���`:='
%�����q5�cuu�����r�n[�E=�au��4��mP	��P��"or�n;��o��ձ�9V���p{	u����ɱ��"{BHձ����>`�'$Q��'N�=V��a�@��>�:V�C�e���:V�o���X�1 �=g�X����7p��@Ok�U4xZ;�4r,@��s��p���?�u�<�z��i���ւy�}UA,��xk�xU:b<>4�g�:�R�U��.�U����S�UO��	 ���~"�&�UN�T�@��y�k ��5��D�MΫ\����y�kV�5Ѓ���U�xU�@��[�W��2��W~^庀eut����ϫ\��^��4p Y0��[~����h��]�x�S�Te��3���2�5�����E�Q�)�ׂ����������f(i&�E��HE�����ZsJ�_�����OK-�����΢�jiYi ��8��E���>����{���9�Ȍ�	 St���z��ќ�I]�9���E�hy���<��M���<׺������Vk��E"���kk��Y�ԩ�o|J�O�㷋�N����g��N|�m��X�T��3|H�	�}6Rt�KN`�i�V�d��8yܭ�v�;��ۖp�dY����}뒢O�p���W�>d�v<�U��z��u� �ӈF��['q��t��uIl'�2��{J`/�P�"�,+�$�a�v�d>o1'�]>��`�M?�<�ݶ��m�U����=I�S�b)���q̩�Ÿ�,_�0�����[���z�b��������L���L��L���\��eTA�3�R!�A���{d�Twk���uq�'@�V���9'����[n4^��p�e��k�/� ~"n��w�(̵��w�q�}8���� JN�DO��$ȯb����
qv�cyN��@�1�C؊:��?�o�p%|���-��$�tN�&�a�Ϗ��?�GEy>��%e�b[ ��f3)(��'h�1�8kQ_�`6o�f'���ր��?�QkiU�ؓ����?�a'�6���1௩�i�O��:XjJ۾�xB	F��/���Ptf��M�=&%,��N	�ϒ��s
��h.z���Y��=�(,8�#ZPش�+��.d�S�h��'J����&rx��"�	�'Z]2�Ǥ���(4��}�'��3����ߜ6��������y����5m��Il�WWw���'�Ў���(J�(I������t��R2Fk�u=�=/%ǁ�l8��f�_��DvV ��"��R"����l!O�0v����������o�8�(���5��>�G�g>��Z�Ga��1vn$���l�:�YF�;l��-�h�c��]���w>(��h�{@L���d'���T|�u6��T �;P"���nI�)ǌ ��x�6[�啸�s��c��t�=��Q���t�I�������m�0u�wo�ॠD{;���,ς�J���=�C�$K�Ծ��pf�?��N@8,U�����TϞ3�4���]9�~��#�i��L�Z+�/ޝ�=�%���l.'t���o�h��J�ڡ���h�׾�n?5���&�[lw���R2MNS�+�8����7׈>
��EL[n��YI�N�0ޫ�7�e������j*ӫ�MuS�]*�W��^n l �sQ�2�l�3�@�-��+u�(�B���oF�X��Z�r�feg�	a��p��sao�:���z\�
�{�����EM�l�ȕҹ�VAT�A�͒{-�j���x�^=���@h�Hv��#��௥�����~�c����R� �@��b���cO[�7���ǗP�m'�do?���Ǆ�=�/� W�� ���Y&�>�J�bW��5�ՃNB��Y�1 /��SEa��к�)HXY +s V�'����A'!�e��x�7����������NuN
�m��փM@��89p
o0��W4���0r�a�7��˩����p��d�`�,�lN�i@Gw��ѹ�����f !��t�
=}s�*�j|%�F-c@Ow����Y>���`3����Нa�g����@��!%,@74pgX�d��Y3���������s�i�
�2��?��__��������������˕,�Ơא,��3~�N����yKg���y�Xj�Qq��.I2�SR�"��)��i��Q���T�V_M�3ZUY���F��SL�;Ds���{{�����a���y4	�0�K�udXGΰuT��j�I��e�r�mP����=Rk��~�%�'�^@| ӗ8�����a�ls��L?�$��:3�3w�:ۜ��]�Ƿ��Wh>�4%���3,=w���\̀�o0�iJ���h،�6c^�o!�*;9��c��)��we��4��L*
�<6f%���v���;�� �±��'�9`˺h�ޤסl8�pY#���=��ry�'�����i]w�sm��G�٭�!�֯5`��ޮg��    E��[�CB,bk�"v���v=��Q�tד���������Sn�M�5���85	[�լ!; ���	�;�XQրִR@��3#�J����q�G��z��ڱ�N�1����S�����N� +pim�~����͸�9��x�H�\M_�Z$�ƳzRz�p��a�W���T\egB.����p�H*�Ηe�v��0��d��i�H2W�u�Yr��#0��DrDu-q��@T�u`/1�D�
�b�8n�X��y��d��!�5 V�2���� g=�{�RcJϏ�PO�(���t�Z�n��ZNd��	k��"��)�;T���a0��a���z5��)��c%\��$�.�����
(�iS.������3Ba�!f(K��A�r �7�do�(z#���˓�(˳/��:ܥ#�,k�,�@`�R�Xv�R@n]�!\ɼF��fU�LU+�΀Y�$k)6W�]b6̚
�_fM0�R�	��^q����X�Q�����kx��n��w�#��7x���LK��֬��)Tri/������gGq9c[wNQ�O1�c^�Dt󮦾nZ:v5���g�+�Ȯ�wu��9Ey�\��>����x��(�dcg�9��>�eJz0�62>X���ƭ�q{`7ne���ŋa���t��~��t�$��ڻ뗊�/)^Z�v�	͑�^�a�5�Խ�]�D�j�)Hco]��AJ�#^�;��A���,$�+3?�}�,��l{���yw��^姾���꾥�`���Yʻ��B�5���?%����\j��c��	O�v��� �0�T��/p=�D<B�/2��	-�]s���t)�:B�j=�� ��{����O�yW}��6c����4���2�i��͔u�Y�[������B�囟�(���iT�F���	����*�,)a�D)w@�le[&2e����e�R���S�RL�#�1�mN��I'��	W>�; ���3����]l�w m��O`;9�aj������ѵ��n�z��Ѽذ���]Z��8i�+pe��*�`�O'!	t�N� v�$��E���d���-�o�l��qq� ���rW�8�N>-���+�ZH��.@�M�"%����-����gm�5ϒJ�Vq\&�[2��TF̚�I�(٥vN.�$KS�	62����sY<���Vϖl���ɖ���l�p^�r}��7D�*�P��0!G��b�y����u��)����ж��|���8:` ���o8�� �o��2���Q�Etj�P��a��8�ؗ �E�^ LNr��ؠ��Wh�=����\���@���X\�DZ��QC�E�}�Q�IV+M�u��y�o#]Č_��IE����r�iF���r@/�/?�V�*vP����Anl�-�2f
oӶg��n�Y�iˎ��x[h;��g��1�d���h2�X��(��Х:,��7�������FaL]�	��G��^.�����9��?�pV���n�{�QO�u�G�ib��)���P@ٟ��{�F���c��ew��d�,���c�a�yY��x����rҞ��hCX�T�wS�'�����8�<H㮤-�n�?�t$�v~�t�������a9n���0~�9�����F��|�^�\��O��`9���)c�m�n�r�tt�-�kngf��e�ǮwX�c�x��� ���Y�Sd��G�V������7�|�)U�b9�r�rb3���u߹�u�l��w��!g�6�l��`xp�J��U�fcǅ16hF��Д����g�/m�z�J�3�NEv��;��%��&��<�Okt.��V]�_�*%�M@�P���IH��*/�Z��m����`v�7�l�X$|}��͚��WD��~� cK��YI`�#���oBѵ�;]����ʅ�!�4x�Pf�jd���ñ�R�tY��q�e1>M&���䬗�d�ڝ/e��%�8@%�	��LbЦ����2<�A"�.��y�vG�I�t�:R�v�n��ߙ��T���~���fC�V�T�( }.�� ���&uI�'6��FͷzcH�*gK���X͡|i8��m�T�k�7�O���z���w���S�n��\񽜥�H��I��gN�4�"�-H��xˤ[�*���U�^��Y����(��)@J� $�@Z>Ϻ�v3�6���a3H����0C� -o��a3dR��J�nY�Iq��r�t+l?lKI`�$0���=EX�L<�_Ҕ:PGo�i�<��Yh�lL�sŭ]��n��>|�v+�����u-W�
��O*��ݲ5^�grHY[{~s視޺u�$+U/T�N�VeDS���Zݎ��;�Kub����q �0��
e��6m�~�VI9����^�yZ'���eS�`5�`�/�@��W
b�>*V�������0�nX���"{�%Wd�e��Ԉ'1?f�=CQw�4�M��.��p�$ƴ�e��e�7�c�kYA�?8s��B��xў#̫�F�yK'R�4�
���~�K�hN�"�(5�9}��8N��1R�<b;	��%Qh1pBjz�������$�\�w�E3��ԡ��x�ɰ8���]Q$�Z���^ֲYy�k�l>����a�bnє�&�]����9��{�6}HvْR�t.s�\c�Eq2e��� z�K�ټ�,�OEZV1�M�JKض���O9�x�$[q:��Cs]��8:�p�F�n�ߵp�ז`� yϲ�&S~LŲ��s��_����0*�_u��7���L��$������t�qL+q�8J�J���X���Nm#��z��$�C-jsDl��%Z\@����-?�[�V1������?����&D�S�bA4YN1�K"�(�����yd������� }��f�Ĳc&F	P�8z����Ǧ��Gq�EV6hq�nug�i7q��7��͋��3M4ě�	#4���U�c��9�?���lN��h�l<�e��j���ï�?�uJ���"|�YSN�'�$�J������w������+^��83���9��Ϧ�)O�b2�d��dr�`��Rƨ�O;��ʪq��=I�L{ҟw�R1�b6�l;Hac����� ��5����Љ\0C��� ����ϊ6�&훭��f��e�e����o릩��<F�������
�u������́��=0��Rȥ65%E�]k�~y����jLda:�:���nF
r[S�����j�KZ���^�V�C����B'���=�Y0E�N�z�6\ɒ/c�R~#z��K��q��0��GKY[����XR�$�<�J6�O�Jc7�c���M�����dQ���<�"�j��U9�iO�m��\�j��Iy&Oኩ�a�Ћu�ts��IF%<��N�OB�-ʞo؍��d��X6��.ܴ֟�״����K����^*2Sd�d&��1�|CYYJ�{�*���[(��\6K�;=��V�p����� :��ٓb4�h��hr�`��Ƨ�Q��M���`�*�S��50��m��1>1�\�LŘ{ØjGT�8��B�Y�Fe"/H#�����#�NLj��Qh�ab�;DHt�ؚ�k-����T0������XOř�ζ)��Se�� �Ty'�ٶu�s��j8�����Q�r��оr��m�q�{���Z�����Rsv��rY��j�UZ�b8�p{��:.l����Kŗ[����Y�*�S,w�,'7C6C��Aq���L�j�SL��ꐙJnh>lh�E�Ԇ���3�h��4�V���������P���>�}�LS\���p�J���#�Y5s�4v�&oz��8q���Gt���Y�	����l�1w���o���.Ub�#�v���n-�eU���Z��5@���R��tL*O�����-(h�a�Ң���D1wl���!m���"�	f	�K�����\�4�5�7y"ۭ�	y����=*%�"�C%���%�P_l��|�p�6�P��n��o���U.AG3L̀��5\�ع�>�So?y��:i�+p��
ЗR'�k�';ԳuP<C�HҐ�5����󋲓i��?����Է    ���^T��9�z&�ΘQ�����fu �]v�}���A����[����V_/}�6 �[�_L�A�8ғ0�u'H"=�T��g;4�#��Vc.�������7e����� 岯��V<g_M��J�?��K�9���b���J*��u�,�,���sav��c��[������*��oe���HZ-�#*�M�3�V�����ϲ��d�����K��8V:Nz�`�E%���mT0C����bXo��](^ѡ���ѡ��Hϡ:��v�ʦqk�>����?�B�2��n%��R�uH�5'/��N��b[������_J� ��9��v�.���tVro���;t�[n���1#�lЗ3�W� L�ұ�R��6�M����=�hL��cM��9pO˪�Hjx���|�=��b��_�e��F�E��!G�M2�	tU���J�F+���O��Jh������J���;	=�y9ǟiE�ǧ��B��ES�~�}A�M]��9��}J|�8G�+J4L��5v'����J9�����Y߳2�9�� ��T�C�4A��.�2��	���1"��`��a�r�d_/j*<v�����KeL����V�(�!Q%�V��i�����9%1�C����i�h @����ư�b.܄#!�%>��Y�@�s�i���K�Ƙ���'T���`�.+��u��D0�D@�+�F���6 ��d!�3X�u�ٝ����X��YV/H^#~f�6?�����Ƞ��%k�
��J�a]nL�����
�Q�t��,b"`���Q2c� 欛�K�8�༬>�B�5�
h�hNk����[Bf ��4.ΐ~��w0;��X҄��h!i���;Ha��٧�N'ڌ����I�]�5 ���;qj�7 h��f��҄� [��d`tL/���8�ڼ.�\/]�<�2듩~��̔�H��E�$�W�;�f@�1-j:�>`���[*:�>#�� �
cWE;ә@��@o��y�C).�QDR<r@���_#%�X�YN���(��5� �㿡v�PB�z����K�[�/Y\�܃.����x�&�j��D|4��*��)�}���9�H񚀠L��N�u�:��wL���߳V�%�%J��R�At��nN��3FYQ����~z���E�+^ߠ��A�M6޼������[.�8H�>��GûP�>1�L?��wޑ	�_WFl�=���� Rr&�Y\D�|�Ŷ��Ƨ�s �Ohb�ȁPˊ��-k��� �@��Q�5�)8ky*2#"Fa�jw��/����I�B ��Gh�����x�`�8��oOM�A����(mFi3J�Qڌ�f�6s�ڌtل#+�6�0�c/"��!�0aD�0$��kvd�Կ�~��.�t��1���T[l�0�t���Q���kF�݊Qm0Vk�D�m����������Ÿ�h���n/�y��Iɵ7�ri(��ԗp60��AH��c�NN��E�cD�g9��UBj��aҥ��"U�ؘ��E񩖊�=CVŧ�BSZ��G��ϲ���W<z�㍷�m¡�����F��ե�� �PffE#�&�8P�IA�v��y�0�A�"�-f�h(�6Am'K/���@T	0D.�%�2�Hݼ,?�L[,Y�jQ�;��Ѵ�E��p��1z$8N����x�$�R����t�?� Ţ���S���R]�h�̀	K��@?eXP���&7Èb�"h[�������r�ثf7���M�ZX�c\iDհ3���lc(�
&�0@󌁇A�hh�E��{��E����w
�A�U�&a�!�ּ�b���
��z��os�b��2&��i�YkOXTW �C�m"�}�%�t�ۧ�o��H�\ |H�d\���R0�.�����(�yG漏�2~f�d�o�Ӂ?a�B���^�Æ5�P���4��}�3Z ���B1�V��}��*���� l�d1��ىB�,z���~�V4�A�|]�DI��[
S��Q���7˷#��y�/�5�/��h�\b��Q�������h�~��\xC@#>#�7�^��!Md�-m��8��XF��W`n3ئ�!`WC�/�F�6R����Tm�j#U�]6Ri��`�nD��I�Ab�I@�y��5c=rˊB�F�]n�X���{g����PIЄ�N~��(�}��(M�:�@Yn�چ��y�8��]�
�l��bo�*�����°"/IR�{�Q��Ca��SP}4��@O	XOh��.<��p�.H�8f���G���G~
I��I�7�� ���X���t��K�t�l�\�ӌ"?�ݢv��m��	n+��n��It�r�˱��.�u��.���Z_~bn�a�>b�,�u@���8I��X���X������.U�Et���ǶmB\x�	���uAh��a���������1]��R]��Er�.]��
ڑ{wr��Q�ݍ�w�wމt�nxx�����:���;�?�~�y'�~����w�ḯ�h�����;����R���w覆�F�^���t��8z�w�2�^��=Ҿ87����yᓗ��y'�9z%{�°��2��%��'Y�?Y~�BNLbMe9�Z�/YE0p@�T�������������`�b��=��W#�e� ��Z��������7Q��;�*�?�������:�G������z��=�n��6~��������A�qz\����$���T�WX�Յ|�C�1i��g��r䩰xT:��*4*�j����g��#���~�l��/Ǘj�E*J�Jj5L�^��`�E0��ϴ�,���sZ.�c�8��l�K�rR�<z�%1eJ�3	3I�Lo��Dh�r�0Z�ԭ΄�&)�?(�DLm,v)ڜSP|ٔx�2)����h3�%��IiȔ:��1nKeǸr\={�F��|.r��ρ�w)���~B8c[� z�3�-<��]�q7���`Ө���,d�sZ��^��2�͊�#�٭v�C�־��f "7Eݩ�9%5����/�qUa�X,�'�Bi�p�tŸ霁2���ѓ��8��� ��9�kr���,[a+��<�{:F���(�'vi�%'#|�L����8k.���5i��u���#x�ș�l#j�.����q�Do�]#S�#1�H{��������n~d)�v��Ԧ>dJTLA�n�t�����$ƭ_�)�'^�=H��GT�?���iB��F�N��ş�y������X�����2APr�M�(AY��5!p��y�}�`��2�jiC�����h�>�~s���+�(W���k.�[�����
8VC��]�u�aRꋚ�����'"��I2��J��r����Xf1��:R��M��7�ǜ�4r@��L:ڝ�=�XD��b"�A���@�5�3�E1������˘y2I����V	<���7B�yʙ�@m�B�4�	�Ē5#@�
��{(,9aV9�l���`l�Xa�1"�� ��`��R0.{I�\g\r���D�jFg���8GKs>��h�Ag(�8��]�����6���W�����C�0��4�k�=�Hb�LA���5G�N�m�HqF�ep��,�쬑l��Q�V~N�1�D�dX�v���y��$�'Ԓ�쌮-V*3�E����dRF}H<�*	(c?��7@ ����/�C��9B�����{��k� �|����I>c2	�Fa͈��`bݬ "*9���twE��{��B>k��>�o�BW(-�b�a��H&�):,r@����ah���1ɚH~���f �\Y�\����q�J��t�ƕ=^,�;����t�ƌW�4�I~R�n���4���S(�SJ������A(���'?��MnB{�<��Ӫ<��Ӫ<��Ӫ<��Ӫ<��Ӫ<��Ӫ<��Ӫ<��Ӫ<��Ӫ<�����=��`Usd�
VU.T�BU.T�BU.T�BU.T�BU.T�B�:]�OӋ��ʑ��ʑ��ʑ��ʑ�BV��U�[��U�[��U�[��U�    [��U�[��U�[��U�[��U�[��U�[��U�[��ߺ\�F���U�HU�T�HU�T�HU�T�HU�T�HU�T�HU�T�HU��r��|�ʗ�3_�r�*w�r��;U��*���*���*���*���*���*���*���*���*���*����O�=��`�ˑ9�2N qS����ǖa9�a���t�����3���\̓���i;���ؒyu'�9�i�&6<o�� �Ŕċ#=	[w�$҃ Mu�
=��%������נ�s�����nx��Ag�`B�f�R�L|�!� �+ zHi���� �_-ױ�Wd���I��{ʄ�Գ�(�� ���5�͙{`*��}���
��w���8�^j����_��<�1崱ڔ����ٲ�0�,�q�:�M��9(��,��fAb�#����V���J����O��%��Ƭw "h0+�N�&�&y�������T�џ^.*�/���/V�L<���f�O���F��0�؝�"�k�bG��Y߳2�9��8 �B*��x�\���f�;�<r��\�L��@�
���K�%#��p�����s�5
�w��D@u�D[�ځy���9l֓_p� ���� nQ�f'�<��'a�YVǧ=C#�*�49��N1��,�hB뒢��[�3>pWY� !�10C�C���C�>B�a^i��%g�8r����qc���%b?`�.@� H�Sk�ӋG�|Xk��ǸƸa��4�Pf����
�Q�t3��	 "`��KA���%�83$�� 
Њ��ڮT(�S�1��!�%��c\Z�UKO�;��~,iBOh���̆MK���:�	�O�N`["7���}���Dl��lv���"��"�$Bc��WH6}s�&r��~��RU�!�����;n}U�h"��"t8��&�b��N�j�y_rKEg�g�� Ta�hg:���6[���Hq	�"�$��M�����$���)~1G�	~N��{���~�9�������ǲ<�a����KWe}T3��[\�X�p5pEe�4��*��)�=�9��9�H�s�F}%��p�hߡ�x���=k%տ�(/J��)S}�`rvf��t�y�T'���^����cA����7(��G�p��7oP�{�-�A$}���L��]�
,2&���;��	f�we��޳�o~j@
 %�مY\D�|��8P�i|��1�ǧ,��������xPz��Ics�)�K�s���ݵ�k����I�B ��G�t�;������=�G0�z�Q-E�c<�P��W�n�I��v����D�oOӌ�	(�6̉i�6Lzy~�թ�e-�A��^=�}��r�Y̚�6����ϐZHo����Z+@I�
����t2>��[�/���)��YҜ�X�k��Y����JO`�-SI�6�d��q
]3�_�v͸��d
�@���ۀKN�3�R�w@��C�7���s�>U_��D��J�W�R�����}��+u_�����wծ핷�����l�X�� �a;c�#�z��R\2��3#�J����q�G��z��ڱ�N0��|��<��6>�2�`�ǿ�e��-���"�^~���oo�~����o�;�py9Y�m$m�%p�ᇵ���E*��@��YOã[��\���VM�/�7^���P�م#|����K�06�����cl��R.�S�����,0e�)LY`{|��U��f}��WZ���@_�z�#����<rkH���C�$Iw!Нs t���t"`�a/���xP�� -Z� -���;�bR��6��� ^{�NgRO3<��|_h!��?�r*�pa:�])��+� �F��):hA�:�'EK��}˽_u�f�e���UĐ�W+��W+��W+��W+��Eu��;���KOUPQ��T.?����*�����o��O��S��T.?���k���&u�~$�0K� n,��s�[4L�5~EW�Z;��a�9�ܕL���c)ј!��q�JCX��o�}״n>��z��E�'�z~+H�#T�U>B��P�#T�U>B��P�#TU`��Xy���Xy���Xy���Xy���Xy���Xy���Xy���Xy���Xy���Xy���x�J6�5�M��q�x���N\vo��l�Xb�1���9�m}
Fȧ-;:�Ϝ��|+����� l��2�uS�����L��'٣t�c/�x/`�����^�Kz�^�^�׼��b����ᅜ&s*`*t�b�zG)hh�z��ᚩ�DVj�>ǵ�d]������]�\�\hǶ{d�6F�3�Sv��ۏ6zw�-���`1�;�@vZ^�B��D�8���D^xӷ��dH��qZ�q��V.^��O�d����l�}�$��ݐ�6f6 �����n<ڸ)�JK����u��F��l�Mۭ�n��n�v�c�wg;�� ��u0=�帏�v�mK����:�1�"�9�u��mqZ�r�m��-:��نcޝ밗�:�8��#+0��<�5m�٭��;�-c���9��l�Mۭ�n��n�v�.TL� 5L�>6���p��L#�Pq�
�y�u�:�m �n��[q�6�Ʋs]k��r�|g��#�~���1|C��
���vC�=�!ʻk������IZF^���:)�8�Mx@��A�:%���P��=���3f}M4�WА���$��͈6]�O-�}�vmT�W0N܈:i�iD#�I�&'q��t��uIl'ޘI���Y�/��Pݛ�䔵��8><a^yx�©p�c~Դ��y	�'FG	IA&P�P&�����?v��P�顁"����<w�Rה�@�03��Cɵ۰�mؓ���2x�db��t�����aOe������ٞ��ޝ��='��.t ��w�\I��+Z覐�֧��ȣ�b<�_�\N��L6�]R�WIQ>PT'�s#t�������=�<)ʦM$*.�L:��-	��ߨ�$��d���sڔ�'ME�:�)L�G�NƔ-{�!���\�A/xS-���q��(z�eլ���?I��Y�Nr��<��o�����b���+����;e��Y�c�~ϒ��k��8/k�9�]M���E��~ĭ"�� ϥ���K���p��T���]����|<�cR `��5[-�E��{Bl8�]C!��C�i b�~Ċ�km�	T�u��k�8��'m������y�t�\�K�,?���x7�Y�o@�2I���9zA�A����c�,��2���7�l�=�bOw|���D'��yF����u���Ȇ�V����RW�R+�i��F`���NK`X��_Kp]x�ӆ7�ζ	o�NXɸ|JK�ta]to�BY��jY��yI�;�%:1��[v���a8�O������X���Ka�1Hʷ�NNن);��2���E[�����4��V.�Ҵ�ԭjUFr��e�Q`�me���2�Т��w6����cc2�����y9��,��^"��x1m�4����(W���Sϣ�#�. 7���(a�lGp0����w[׊��>v�#���Z�=NմR5�TM+U�JմR5�TM+U�Jմ���VR��^i�K=+�ee��}�αc���*�R�J�T���-�n�tK�[�u��M��n���e�ꥪ��*��z��ޫ��*��z��ޫ��*��z�ĳ�����S����_���`��Ik��bƔ�<b��Y�[��${�������k��TƧ2>��Oe|*�S���TƧ2>���{7>�G������#M̈ ѷ߿~�����eV���\YX�<J^�?��T�.� E�U�ba��EB��%�T}9U_N՗S��T}�F՗kT}��W_��&.�^����(�D�%J/Qz��K�F/��pd{+��0҈��i����AU
r���"瘁fN�䘑���Y**���ɓ>eِ��X��Z�壍+ b k �rb���" :%��@5�|s�\�z:�M.ބ�����xۺq�Wγa���^Kh���l���D~l����-�9�D��1��'/�S�    �"��F�c��xڮe����o��\>���,y��'rs����B�Hu6�j��Ha��t�(R�uP��Esw��4po����m3;�U҃�����(q7Q�H�8ס�ͧwZ`��o��9^��"�pZf1�|�,T�/D��9��Q�����.'ݶ��jJ��6�~i�X�ۖF�9�h^�{��v��Bu�81�^����$��>>#�7��:�ϷZ�z�f`Y�F�ym�~��sx�d����0a��v��~]6�i.���AqՒ�{2u.9���69K��6��8k%����ot��Õ��Ϭr��Vr?0Iu��N�G�˗n�G�	��2�c�Sp}|��<���?%y��_ǈ\B/�]����Y��4���J���!��;�����mzd\Esvٵ����"�A+�ЋHl"2���bdysv��囃fd�����^����p��1�5EV�Xo2� �����B�:h�z�l��D�,{�w�M֘���%����M���nMI����{CXB9�^L���M_��JL��b��&��o��g�LgA��hks5��k��Q�;^�AdS=�bP�~b���A�l9�>���uӥe���ux�y��鮰);�>�C�gd9�^\���M�%yԺ�GWӠ]/U�*�Ou4a�Y�G�j�����k�ŲX�t٭�z<y_ckg����>�����내�/�l�ަwϖ6�}�z�}�PxX>���/�v ���$�<���{zi�VQ�>ېk�V��$�E�=��fu���#�������t��N�we�3>ݍu�غ����u���t,uT�j�5b�K���+G�c/kޱ��.��G����m���� 3Z��(�į�N�5�/r�]�U��l����Z���t��fY�A�}�/6c�?��w2���+���0���C�`E��B*t���%��,AVH�����m�t'�g�+9mP����k�6���]_rA�i�
P�v�����IZ�D�ܤG�P��͝�1���놼��M�rQ��={�<���=�Xe�;󹊢��!4l�a�gT�k�x�q�x�ǰ�7��5�F���u��\�x�}@�M�5\0	(S��4�5\���V����I��6e�A��5�-^��9�uT����m�5\�����5�
�[�k��r3�Q�k�9ro���#��<�Q������;�*^�p�5dm�a�Ws{�>��8�W�k]�n�9p��@�����J�g R���t�`���t�z�L�fO4��`s2�&~e��i�7�����Jx�"��GD�d+ت'��P٪�=K��P{X�0�dF�ѻY��V�DQ`ݕJ�.1ǟ��Kd�IN�r	�>�腩 �Շd>�y�>"ީ|#�x�E����/O-F�,���Y�KY��+X�4Y�s��^��n�+e�2�B����ҧ������|��Z �PY	+\�s�l��_��AF�-�,�J���6��p����X�P~��=Q?Z��_g�ې�2XckR���lDy� 4!����a��]��`�8�u�X��!O�;O�	������0b㼬����"��n��V�Ҿ�b�~�dv��ұ�VX�9fǅ�%b���!Y���
a%˩홑G%zJ�Dw�8�#JM=L�O��m'q1�Oxd���p��)����a�w���aK����W��}���刺�����CI���6A��0����P;h��g��X�
�X�hx��~�A_fR��T?\^�)� d-j�?�"�Mab?0!9( 28HF�Z��9��X�����h��.���?���2p�����z|n7� �]!�xyt 񿏿�ov̓
���K��!p�5��R?��s1�:u"�׺O�^����Ǭ\(S���rZ��_�(%���������sr��[��L�@=j��	<�H�c�L�xl���n��M���M��0��Y�T�������ز����,�n�
��IK��(5�Gz&��I�A��zXd:���(���J^TW{��L��4�(��Х�����A�V@���(���;A�ﭿ�T K��:�d6�9�l=
�P7�4$�GM���r<�.;Ѿ[ğ�����X{�}�cA�J��`)V���_m�r�c%lV ��ʏi��x"�sRk�)�y�~�0,ԉ���?��)F�V���a^)��N��?�+-�	zx�h0+yU�3J�h^��iEy]e�	iu��b�ٯ�Š�2m�IE�V4��9�A�dp~�-��"���Z)S���/g}�ʄ��' [H�>OY-�yYg/��*=����-\I�,v+��yIx 	Q7��4�g�k����I�5*E =��D[�?�3��<�`�Qx����嶺� �\;e�qNI�E�0�,�.���Vf�JV��H�;�@�T'֙���Xޜ�a�����
�d a9���%��)���g[�hX)vVF&9�Ł	��ެ�" �D��,�`�"��Y��O/�,���g�5���U���4�j[%��U�T��� �ds�XJf ��(��(��K����TX��9eED^ΐ�2�0�`��2Q��}�#ڏ%M�	���ٰi)��:�	�O�N�%�Kd%U,ē��85�t�T��)jyZJi�W�Ez%�B�����Q�r�,+���>Y�l^W	�WQ˞A�/����"���%�m���'��
�}�-�e��l P��������6�J�����D�`�T��9�̗"g���"2-�~�)~1�� �9�������o觞CX��J���ǲ<�a����KW%�&����x�&�j�8Z�
���*��)�}:��9�H���X[%���!�}�b��?����,U�%�E�� :eeZ�$+:�a���J�`���4��,(��\�����n���V��[�ŭQq��}��3���w5�*R}b�YV|ĝw�+M֕{�r���)���Ո���"��@=&�O�$4��S���<r Բ���p�lxP�xF�(Ě�����%
�����Z�4�Cq��� �K���4I�1쨓��Z�Rl�l]������d
��J�mT���i��i����aq<6Q�2ǆ�aj�zJ�TwHb�ċ�s��K�$�0���^�D��-ǂ���FGA����ҶV*�R��
�Th�B+Z��J�V*���������tj�PO�J>�I�N��թ�Sƥ�b�XC�9���F�+.�zp)�8p��{R�>ҍڞ���>���G} jӿ/�c֑g(/��r*/��r*/��r*/��r*/�z9;��6��C�������tA��$^��z�����b������N���OJ��x�W��ro���/A9.�	�P����<�kྋ><�-��z�+��d�.�ޞ�����z����@��>��-6�k;� W�M?��r1n��c
�{�k),�C�,_��C��K������ͤ�R��Z�c���j������z���'�Oƒ�] x�+�Q�n�H�n��k>	���^�}�@���u�Y���B� "�����ಏ%J��(؜~@��\Ƃ�����DD���"�V�]��i?���+�~ΊO��d,ƪR�)^P�p�� 7o��=�Y�2@��j��g�Ϩ�C��b���Ç���F��>�*� D�7������r�(��C���T ۔�V��MJ���{y�q�,X�Mb,&��QkD�sCO��W���k*�����Ti�εSrF���k���?H��x�h�a�,����w
/�1j�j'%�J���9�
�MhC0x��9?-s��1,�M�~ƃ]����E�B?�B�������P��yZLĕ�����E�Q�qNaz?�8rSε*;9m��������4�>�*A���[�d�$�j�����a����Qb��ؾ�"&�G	!�Q��j��	��y���"O��3\mN
��3�x��!̙�bB"�E�
l�+1�4���` ~�^LX�.|ȃ{E�S֎�s�
>$���t|sH���E��7�t'����ԣ t���,��R�U    ��aj[L �6��k `M��/ʩg��@	S� (2h�C�e������d�S�WE�j�IM�Xd�/g�ɀO9o�
S�,(�hy&n�툂��; ��^�	�:�t�&"�g�nC�^�F.1-=\[w<��Ĥx�
 �q��T@���̀w:3�/��)�ԄY�<�HT�!�Љe'@*.p�3F腸`�a���
Z�R{�I|��N
 [撁o�č,�:D��H̷� ��u<ψ�04�M˘��W�i.��ą�K��ፂ��y��e/�K�_�=�_/�P{�E?����1!<�4]{Ŏ�_�_�O~��%��މ3C�׏����5cU	�6ⓟ��|Ǐ�����/\�Ҿ�Mi�_ J'I��]��#������1�؟$�A�ğ�r���.�S�-�qBS�ȁ���"��O}%�"�A���M �EL�u�o�`n��U;jś9��fJ>��H�(6�d\ɪB�N�� ,�9�\�9\h3�D���6�v�g���c=ǹe|qL"�/s�U�h7�_�]�$y��*��'Y�?Y~�BxL��e9��MB2)
k�����w�s��D�$�n�8��Sl3�#'��(�hd�m��3�� ��Xޡ��O�^��(�rp�o)�NR��vˠ��~���|�������m�m#�g�W���+EP�`�2rd'�M2�؞Ԏ��@CBDAJVRJ��Vmm�����7�>��>�S������ x$K�����h�����>���~1��X�_n��i�q3 )	ʇ�xL2��]t���̵v���ʢԳ�,2�Ǧg�n�B�h�0肼�t����ĵL����9�k�,킢�,/�B�M�]�I�
��[��L)�D_ ��;��1@D�E��1�ĉ��	�J_����»����LM�8��2i�(��Jǣ۴0�R��To"�/ꆉ�H�� �"��{�>%hMe�)YJG�<EL���aQ��F���ܼ�`�h�,L� &)W	�ʆ�@ZW(j�� k�LsJ�>��S&2M��*k��=�h3�j�Ĕ4$�O�j�m��W.�݆����#>�)D&5�0!��!=�|B8'e���"<�߀�)��� 
��O��#�>�-������g�e�!3����Ġ�=%�H�t�3��9�3}�D(�lZ�c�����,O�R+&�k��3��׻W�����IhƖ���3�|d b7`^�x��X����?�,>R2:8 �4�씣Y�2�1� O���Nr̮��c�-�Z�r�d�e�"�fh.�:笤�hA�������q�M�²��a�,N�V�(e�" ���*Оf��ޕ��˘"*9�T�`�� �2�r-nGi�S��S����T��j?U���O�~��S����T��j?U����OUۭю�z�SA�wwRp;f٩��B�,LL��G��8���0XNhvt����9��#�k�V�9�՚W����`=�	:�aXGưm��
C�h�5b�t�b�qg��*�ɾ�W�3m��S_����|?�8��1·��=��^ږn
��ȥ��,T�DdM���ulB�&tlB�&tlB�&��&*SF�r������hb �`�V�`�V�`�V�U�by���ۗ�h?��v`��X��jV;�ځ��v`��X��j���G���zgU;��ӚѤ�o�.�vI�K�]R�j�T���%�.�vI�K�]R���]W��j�U���uծ�v]��]W��j�U���u�ۮ�|7�������D�Vu��*(^�͞I��7�c~�7��\�Y�ef�nw����|�����p���#qPU���n�0g�0���;���G�%�欏���E��E)��;�gm���t���\]T\ܑ�w �̛��nH�{K0��{{q�Msz�[�Vt��p6Ѕsh懍.M�[_Usan�:�iv�@�6�a7C�M+�d
o��ۀ7w�REh��x�Ț%�I�#��fquK���|+tojHϲ �XxO�r���5fl�q����6���
��,�iQ<m]7���)���m�n9�_�����������m5P[hu�{�^wu�����~+1~��|Do��xg��V͍P��c���V�X��7x��-�4�9�74o���m��;�.����z��S����a�/��(�>h	{�KQ8o���k�y7���7E�w����օgoj5
�`rS�A[A��
�-�Ά(HH���N+��1�̌���EIjƜ�f��.w7r���η���>����y����_=�5^��%���i���녀�(fC�*�*��^�\��y�ށ��!�d��PԆ���d���2�G��Mك(�6��]m��i��tue��6���7]���̀�}��]��_���;^�!Rz�,>���`��,Xy����^�������*�^��h_-��a��w
��^�@���v��~����l�C^N�pp�ˀL�6-����|��;;p�ܪ��{-6I�������q����؍2;33�f��R�dA���X�I����+��8L��禝vL������q�p����ŴS�ka��)fHʔ��0�3��R\C����K>��A�O�_�����u�q�-s��7��8be�G<�Og�e��L���ؗ�Cr����}̇����|�������׿������|,2(0WB�U^�0-���"��|̌�	�>y�����;�#��3Ѱܳ��O?��8�-�a0;��>���k�W�S>��m:}���9��@c�&S(��4��^kJ3������u��yՂ������a��~��<��8@�UL]&��a*c�Rߋ�V/c��i R|Z̿�NبW/ɩ�I>ð�q ����x%��E��	��_���h�a�٩H��d��#'I1#���'��@�U�h���@rf�~�MtJ��2y�{l\��Ř#.)���g��j$3� F<�������X��m'$�y����$�j��e�4Τ�/6�G�n���m��M'o���{k��
>��6�A�ԁ�v�<E�p���{vб��5������g�۳��eu<?�s��l�J��ɤ��^+��bA�i������Yf:N`�Ե�ּ���ҁ�/�;�	��@o����-A����˸b����5�(�L+�"����l�4{����`���l4:��ƃ/`W��-��I��׋M)��`�Q>��X�0C��y
VǄ8+��XV�I̘�Fx�Cpf��zG&�+˧F19�.)�)OQm@7hDL�a!
v`6?Ⴢ�{�	�*PWe1�$�p�56�"���	�\L�X%K���=3f�p�q^)��o���=,R>��h ZȄ^��R��(�vCY������*�����<���R�m 	Y������F0��ӍÜ��Ƅ�1@eKj,a�9֚s�pX��L��e\N��X�����	沦aY`��Z����1�䀁�O�1c�.&,c�Y8G� �UL�M!䄋�_mL�-��z#�Ŕ*��������a��$@Z
�D��$/g` ���c|t��w�ߠ�/q�טL�ć�4�a�JUjHR�2
�nƪ&��`H%8��K��<$I�A`3��%�
hh4=�,��!�[ʆ b\�������fǌ/
��C�-ӰHZ T$�b��*�i� 6��Le�ct*�FQ��b�e	���=hd��1f�W�$��M�L$�W\��&��h�
� U3Sf�TAU,�ɒ<�"�@�%�j�
0m�8���e��� Ta�ɨ���Je�����54���"R�����L��a�T�KOԗ!���������S�p��)��G�J���}Q����3���dR�g@5CI��c��ْ�+��8�~lJ47a�0���:�8E)3�M��d��,���(&�����S+CВ���0�N����Y>�͆�#���N���"�$,�3�,�V�����/@µW�<���+��� �u�?����f�T�&�$�U�*@�iMN�Hu��{����� R2Vj�"K��O�:G�89�r     �c�� (.&�n�T��Zǃ�����%JNN��=�~>�Jk�Z�CQI�R ����%�U�|5�u�ʂU�߲�*]�Es���~����M���Ų�-�-�)������ò�����	�**�v��S灢�`�W��F��F�(�����nXNhv� �d�gNd���Z�yNlA��.��qhzAL�܌\�Y�g!�h�yW�2$�D� {��%q]���2'1]˷3ǋ�̵�Z�m�-����e�paũs/C3�ylz)sM2�m?�|�%n��}��a�-3`4�Z`�ĉm:�a�>cN(ϵ]m/R�+X��$��`w���Ag����m�����]^�[gc.�F�?
ط[`j!i����ǛM�Y��a���ꌄ~ƼۭA����Ky{���9O�1n�!WPg�s�o魪�V=�7.8��]��#w���D�\��ڝ���蛎��蛎��蛎��蛎����-����[uoj���tw֖â�[�	��-�U�H�I͹h8����4-���t�$h�\����1���v��t@��M">��-���tNs��.YP���Km�&K�ZCo��LU� l��u8���N�僠�K�a1��xܴGp�ؤHǇ�"�Q0Z�|#Cy�[��Y,4C;�M�u�&���t��rb0'� &*�?5��bmԈ������C4�認�������Q�g@��F�W�wv���	%tp�smٮc��Ǆ��kѡa
h��А�~�O&x�����5���|�pU?�ș�	Dy�F�9��K�`z�&��ُgV�W�&�{��|ku�Xw���(�	=Ǽ�*�%xkX�8�Y�����?+�����M�G��=qspR��"�P�H���Ј���0Yu��ͦG}
��/O�����1��l��A>!-X���(H��U� 'e�!��6<C(πI�u.��97��β4��4qm�I;��lz?�k~7�۱�����8�v�<��W�7ҽZ��w�4X�M���������ъ4 ��5�үCD4B�E�w=�",�(��0�g��nǏB� 2�B�� y�0v��s\���x�E3�����I���u�֩��!F�(����5�RR�����[��w�����<5�.���3!�ܞ�\��ίa/�	��X���b�^�ދ�{�z/V���ֽ�K�4͍��ںuC�Sk�r��zQ�@�>�����d��p���5oA��+% R���,��mxޣG�'�Ⱘ6
(��G�.\|�b|�Q����,�T�t��=�8;���ŵ$��Y �L�����[E� �Ū�=��`�͎>kI?^�G}6�Z����������u6w��AP�}*k�b������d����,����m_9.�i�k��Uk�o�Ǽ�(�ـ4�1g�'�o��ђ5;�i�$Ieѡ���j�Yku"�Yk�]���/��/^���񅯃f5�f�m6bZ$��{5�r�!&��q�.��G�?f,�����
��c>ڪH��c��(�˼�NDQ��C"�0��hHyaTa�����^VC"�B(4�1'��b��E��Z,j���b],��z�bq��*	�Y �읅"�;6�r��p��z�O��-Yc�q@\.���x~��0��)��|*���2r�yAQ��g�[�ѱԜI1�2~..?w���7.eq�?�����We�1���[i1p#X�
�������c��V)x���{9���J� �(����I~�v�}v̄w��
��2&G�8X2mX�SXӈ��^ݍ��hH�V(��TF�`�b��!#pЍ�%Vv3�/�R�t�*�V.>6��qB=�Ǐ�b6�"��駪��X�$pKd���,������h�� ��U�(�f��r�_T�@��8���Һ��؛��O8���ٜ� );G��@�������<y���+x`ԌBX
p��c��HqC���JRa/6$�o���1����qB��0�Xy0�q �9��(�Ʉ�G��gEE��P����A>̧�8��6��0v�����7����y�� �����(ڔ�|P�0�3c	d�x(!�c��_���S��A 
Kƕ���g��'yڮ�'�$��A�v}����u���۩������O?�_~^�D���=��~�}���Z���G����$���u�+Tݬi ��[��k���Џq�ޢ�r?E��<e]p�`w�:ꨤe,�A��o��Ŋ]�5��7��s���on/vH�1i���j{�5�ԃ/5��@��n�k��ϯ��sA�D��JtI�	4�:���g��l�V������\Cb�R�SmT�o��+I��n���6p�f�ka�Zu#�̛aX�A3�lk�~��䷬���R�7T�/s!���<�g�^��Y��Յ</m�|�(hy�y�����e�^��뺩[Ip�(����l��u�~-���=>�f�|�R��k��X�(���2��A[Wl��~�AfC[�É�,�S.�E�����j����feR�1��)�L�^C�WlL�k�E��\�
`�]���TxW�䨨m���FlrV7eי<�',`X�� L��#z��=��Wp��(8{�@1
�����卧��a�O�	��6XTԪ]'����k�^b��2������yU7خb�Օ�mp����5�K돻�;�:���h�+�X���R/c�^l�6�L��*=_�Ŋo�5�"6���R�~�e�֛��f��$����%�.��/}w�<���|��%ߺ��%�y�F���)s����eK��ܰ�M]�U�Ze�1��v���eťr.�M��_.�D�ɯ� rSЫ���  ��1PK�^@_�NN�a+��Npg� �z�ɲ0�x���(�����@~$䕻�''�A]�;�$,\���H44�2�Ƥ�$QF=m�ǂO%E�G��չ^��18�a���Q���;�prqaD`�e	�'p���aΈl���+���N��+�u����֕޺�`�]��u%S뮘[rz�Jo]魫eR�#̭��j?z�Jo]�+�u��pfNo]魫Յ譫���֕޺�[WZe�+�u�.��TR���E+�(;���uM��R�G]n�H/�8��u��j\C�f�K)�e�ȍ5�jF�ͳ���p=�n�������nu� �L�u|����a�f�Y�ϙ$<ް���g�����XB	>���w�_����g|�[#�e��/��S>��*i���\�Yu���P3u�����G��kԯ�R-�&�V+AքD֔ �}���$3-�L���R�,�\��6�b2)N�U9)6�m���x��AR�O�#��@��c.D+n=׊�������4���#��S���4/DE0�9%������K2Ф��,�����1�s�&�T��ayH	i^��z0#�f������j��-�*v����:;o(�h[�l��t{�߉�����UK0��W%�%��U��}TK�����ګFelP�)u������[U��|`��&�5��~'�[®�[5�^�^���3���s��[�r�s�YY�ڮ%]��'1�̲� q|0�yf1K:o�v���S68��?����b��ZAmh�}�Ė�ϊ�����e��U����YQ��{��q]kCesq����1�̌� ��$5c�m3JY���T�X����2m*o�޵j�?�&�Dy�L���:i�b�ř��m��n�C��Qlw�$r��V�z1K+�0�9H2��Ww���_�s��K�@!9���9ҋ�#^%E] O��n�WK]�)���o��#���ׅL�c�z�q��]Fr�&�`l�eئqfs��L��0�4t��R3q���`8�[,�B��B����兀�I��9]Qu�����(�F ەKǵ�8
M;��YqlF�q�4�|++�Z�k9�j2����ak%)�1u@����\�'���8aw�4�,�]lx�&�`����u��*��-ieE��TA_��/UЗ*�K��
�R}���T��^��v 
  �]q�Ʈ{��o�Ym��޽�u��h���i�hB�r\����;�b��]eS�����Sl㵘u���H`��<�R���/�ad% ��/�E$�cz5Jx(���x���|���O+ k��!��j: H4����� ������CӸ��pSX'p<���/�ݙg\�4e:����80��[��7(��7�c�6XJ��jq�U���AH����Q���
�.L;
^��)L�T)�hJ��7���)�k�˟���`�'�l2ǂ�,ȸ��x3�s3|RJ%]��1?#��_Zתss��3n
���{�ʺ�4�u�E�nE8x&D�Wϟ�CYm��Ză|��D�"����!g</��ŗ|��4��3��.�1�����)X���)��Z-�{�yF��S��M$[��KxNL%�0���/@�=J=�9�� ��G��S{[Hp=h0Sn�!K��[��#����ŕ�s���ADJ�V��sy���Y*!�����Y�i������٭�X��8(��YZ�=�+>��8�luq�NTG M+��@ۗD0����==%��p$.��"mK����Y�*h|��5��Lc2c����U�_��-R���*3����d.u�˽����F�4���F�"�Uc�Ń"ޓ��ށ��޷��~h<|���+��7�aJ�sw��@(�_���8�|��6�ˏsl# �vR[^�;���䐦�f��a��+��^?/��=)�r��'eы��1o�-{�7�=7L�i��ql����8�ύ�O��$��;N�E����N:��ϖ�h婕�V�Zyj婕�V�+O�g{��:�S�M�6��Tk��զZj�NuࢋHǟ���J����ӪO�>�����`U�����ū����7�˝�#���:q/����,]@)�5�ǣj�$�c��q��������O-�?��^�c��+����_��['l���K���f0�|��e�T���I�*�� 0�-;�v-5ƙW�v������`]�_��%��{q����,��a!W+@;�ӽVS��gh��aG*�~��[�M217�T�I�WEY�zJ��Qj�������U@`9�|ç��K���9�{��ĳ1N�����Gc�K�9+)�V�c���8,R̅�\��K���l��=�Q����`9�&"r�D�ؑ�{�A��<��&G��ؒ�&��_�-�N+�Q�ԧ!X"�G]���"�5�\���R�\�D `V*�h��2ل�v�{N�A�>�M�]����o~��ͅ�      (     x�E��j�0@g�+4�T%�-G�(�B����Iw�\�H���봔�ox�ٚ���14�Ի�7·�l#�uSZ��S�⑳$�)�%�L���	n�C�!�,<��Ԫ�DIє� 0��z�x���vT�j_�N�˂4���L��[2�.p
�g����4��S�G�W�US��TG�L���#TX�J��*l�A�)ei�=waZF��:����cxП����=j�Y����b='��@gҀ��,�����JN�EQ|�yk7      8     x�E�Ao�0 F��+z�d-mm��in�̱8SJ�h����s�e�n��}�q���4�Nf�G�tt��]~�f��t�G����͔Đ��c���OM�tM�u�\(rI��q���B�P�<T�L�ŔAL!&�Ј�3$��X8$H0�">qRۙ��G���X��,2@0�Cp>�/���}��z��Ĵh��^2�����^�X��탇�d�#�v�;�"Ky2ɸx�w�v�Tmۜ#ϻ�B�Z�P6��Q-,�){p��u�b�V�      :   %  x���AK1���_1]����Ћ���YP��d�	�&%�T�bU�����y9�}E��d����y'���j�$���X���J��8�G��\,nU��UW�B�SQ���'P��F�r�Jeò�Mc]ֱߋ\Zΰ/M���d.���#�~����Vr��rRn�N�e��:O�;F�yD'��y�!�{�}�bg��vW[mc��!"s~�#C�$������v_0t&j����,�r�9 6�����,P�������!-�Z�l@�)�W2�V,��(> ����      B      x������ � �      E      x������ � �      )   -  x���[o7��׿B0�&q���&@�Ѡ�m��4)�eH�Mֻ�j�$-��KɵQ@v�>���w��2w��@����PiŒ�|<H_]7�|���C߭'��z���Z�Mw��n����v_z��86;���9�	C��9�c��Jf���R1!�-Z��y�]u�cԍg�&Q�����b8j�Ӂ�@�����;]�f�g��A�J)x�c ��e����,e�A+���h\B��V��T۱?I�E�/��a�]dN:d�(�Hڂ��c�U�mC���p8o�ql�+�l�;�)뾓M���Oo�Fke��R��0�˻������/�������|{�ܐ��ޭ����ER~��WW?��������+����oꣁ��ęAS��<0�`2� #4�t������ ��P;��䦥M�
�m�@�ir�$	�|���������QjВ2G^��vM�+�&W�}�7���{��$􄗙�B������f�;n��w�ڨ1�,��
�E�VZ�B��F��11�@�F:'|��y�9��`q�K� �̂B��q$0 IR�;�9v�O8�iprs@x[���q��h�w�4"DB��%VvCb%C����TT^�ϒ����3,�B�Zxy�����i爨/� W��N^*��du�Q��� I�B0*�R*�͔�g�!#<K���:��&`�X�1 d�CR�����'z8����%�O���V�\��>n~��������@8�gwC����H�ۭ��Қ�O�%w)Q�Τ@.*��Ry�P�$�[GNKc}�gi��ONN�X�      F      x������ � �      <      x������ � �      K   P   x�3�(M��L��tL����,.)J,�����IML�H-*�24�.)MI�+�92+Rsr+Ӌ�K�R�b���� ��c      M   v   x�����0 �7�Bdb �������p)!��H[�-ǝNv�TL
%g�G5�,��*�~z����3�<7�}��X#n���":���E�ʹ*��{�)<`~#�A>�����-"�3�A      I      x��\[s�F�~�E�~��"(�w�Ɠ��I�e'��qj6ʘt�D����?j�a����\���e�3��ݵ�b���|�;�:�V��W�tD��mD��Bea��i!�8K�*^,��D���e��!6F��8NM��Y$��*NcS�Ա%^�-L�k��.�ߥ^u��Ӑ>o��a�ũX��,�P���h�f�0��J����t��}�2H�8.��#�NB�Nu簸Ҵ�����)�)J;�MV
	+�R�K�ċ�/��Zf"6"�f��&ƁQQ�$q�Y����[�����,�L������+�7l�{�h�Ӓ�Q,iDi@LWZ\ee�D_��E��՘�L�,-�L�,SꫯM���/t�hޛ�Z���`��#a��R�4���ߗ�6�wD��@��3eNM�3ϝ�q�=����{N�'꠹	l�*!��"�W�����@a�Z���U⾒9��īu�i��e!YZ�5��,�-%�h.I�+�
� ]�Cq�z�U\X�b�z�,WA*�䦇_V[zH�܈�X��Y�VL���v�ȔǚWc����@&�X�~�e	�x��uT&����=ա6F�V�Px�D�t.ŷ��y*���N�Hߟ-��J�0��n-��{](������#�xZ�О}.�aЋ"[�w�[��j���3gʉ�@�2gK� ��9I������3b0I�Fϝ�u��xL'd /���:�}�҈�8L맟��E�6�4j"O��n����S���| ����Ѵ���C��}�M{�̛E��$���(h���> �?.uj�޹�/�%��A� sA�T$���ќ`c�E�-�`�<�ܔ\��:�A:�&�]ձv���W1��f�Eit��%�a���W!�Y�kV�-+	�|kKn4Y�x���[�*&�9e�V���#����v��e(�j[�G/�9���t` ���U���DAHf7ć!"��B��8\$�|@_�|���.)y-�sC�_˼��y��]��:.�� p�;Wr��TE:��D80�|�W���4��-��f��N��V�I�F��%�/A�A��@�%iJ1�+��g�w�����C��9:���_g8w�<��`� x>��i�Î`_��M�pk�@]�8ڠ4	�M	�c\i�����DF�򽑯&�~󦃩�Ɠ���J�����9�{�s�4���ꈳT�@���p���� �qŞv �x�����`:��LN�a8�O�p�0�}-'Þߧ�d��Y�Px2�+��CdaE���ȳd��n�Y����}�(��3�V1��v��P��0���f�KǱK��C��i݁>�1<re�3>�i���
�-��e�0pC�0���4���������V���VBY�*4���H`KQ� �B}h���� �8�V�٨�n�����P$�hYaZ�{�]�4�I'�K����g�Ec�'���K��ƥ������tmV^ʢ 2E�q�)2=�B#DG�����X�t�9��H�3M :LP�D�v`���Q�O+��#k���So���uю#0y2��:#�I+=�������"�Q��_�D��$A+����8R:����&�>��Fzj���
UBC�4V�L/	�oK<+,V(̯%Ndo��O���d��C��'Sݟx�� �7�yS5z�����`2�q��� Zqފ͡�߉m���(�B
�Vk�G�=�2AT���\�X�g�V,��h���h��i����,��D$Yvqxo1�z�q {�t�<�ڛͤ��٨?}_O���y���q�oUl�?ww����������i����`;Y�%I�א�^i�f��'w%�� (g�����C��D,���\ZbJ�و�1��6�V���x#����t4��c9�^4)��Lt�S�G�-�P6&'���6�M��K���6��s���֘P �-p�鎋i���22Bܪ�a��5���w�� 
��,��x�Iy��XB؏&�q�?��]��{�C�q���v�]�0�$���O���Q�Ş��;��v�po%����*{����N��`�̦Ș�^�y�2��o�lF�QG�Na�8h�Ի�E)��d~�O��SXAE��>�8�eTtj
�0�<�:�$�/l�t�7� ��q!z��MW|�bt!̹��#��6��� �{K��%�E���/ [v۸6�4��Hy��X�[AP���ih��0"R�bX���[�C�6'@��;/C����y�n,�w*�v4U}�/��x�l��`8���Y_>�� �u��8�N�5���XGʣ�k.�t��i��{}S~7�`�$���%�OC)пa���=�7|����i�����7p�x�����d��ףh�k���*gj�h��(@Đ^0�@�!����7�����p���z0�)x2�l)�{ O��@m�u%���H��b$�|��%�P:[AN�
p��a�Z�GZT�޵�4���b?Ws��g�e�Xq���`ϗq���w�2d��J��+�s_ 	��(H[�(j��X#7#b�̪up�nw^C�"�������X`���	�'��l�U�	�Bd��k�p�N]�qh��.�4�XZs�E�B�ml���?�ju9|,r�m�"*QX�4j�Ij��>mT��
07���Ѿ�6+\~j�:p��tMT3����j����Ksm�	%���0�x �s&a��T�sj�i��Q��m�A[>w)Ǽ�	�f���(�zA�(0�� ��8��P�ö΄J������Ro�?@>
�lCW�p��%6I�����%U�bT�RU��2Eu,�qF���ki6؝��U�Z�ߣҨ��B�,V�D@Њ��h&4;��WDDD�	�p8��� T< �#@�����?SarC슶�ȺR�IF#0>pd����uXչ���@$ Xؔⓟ�!��_���<t��fc1L������˥��l呺�)�@r�����u&ԩ����i�S'�!��	��Zb��S<>p�ՠ5�:x{��EZunBͭ(�m\ީ��is�'7���
�D
�u;+��\+��[����������{H�H��E�$��%��R��P�t����h��������)�JS�l��aM���.O�ə�U4�g����C}pG��o�(� A�݆3c�������u�#�g<fi�a�+#NP�������Jj�1��x�f��i�,Z[[��� �CX����'���$�S4�X�ż���1MwV�{8	��PN���m4�U(�#f��/����5ΫQ�˒v���(�ZN��8芗�GpLu���I�N"�����c�.b2�$/a��j<��釔��|��H֛.`g��ކ�n�*f����t�VN|�`ˈ��ސͶ.*U �ŉ5.�_������A��o�D���'Z�6��BR��9�d�gVk,��)ĝ��R��ui�l�7��	�2������������X,��XI��,A�����:ZYo3��������g?� E�g��{�,����3�b��3j<������y�dd���" �q��L�^����'c�J
Up��F]�B��sC�y��e�ZU�"�k4]B	(���P�@�6��Pz��KN�yeY2O��U��aͅ�Ih��-�B;w�+�؋�%F�YWId�X��y9��bI���-��"�A[��j<M��}��������ϕ�����F��揟kΟk���5g5
�=�^���&}� i���p<��l���j��3ecO|M��,N�u^p�gf���1@��i������'���(7"B��&�C�?ת��ժ��4�}/���*O2������f�?���Z��Z��Z��Z��Z�?A�Z�/�e�b劥�RJ�	*�5N��ߢv�@�[]z�	�S��^��޵f�H�f;�B��?͋������Z��W�ļX��|@e��V�$ �K7J[|� z  �*sZL��8.W,W� 6�+�������������~�T�)�D+�;c=(쾼��f��UT�<�2����V�]����
��k�|Ȅ� �3͗H��TyHt��%�&��춞
��!�S�E���<��h ��pLI�=)�wap/��(btu� ��o>2㋪I�V#*?��~������ڼ�k�U�Q7�rM��C}�#{9�e�]����������en[*Q8�\��J�5�א(�ɚ��rE53��o����bq�J�Ȫ�ҵ�������!�Ir<�YBb�U�N0
,~�%խ��{��_fQ������=�'�y��y����zg�v���-!!`	[�}j�3�����_���; ���p�e�D�'��.���u�r޸�=0���������wNeRj���=O�7T�����W����H-b���η�r���P���� ���S@nE^�?cDz��p�����8�0{���f��1���%���2M7��H'x�����tBx� g�jjo��k92��X��Z�ĻѐM���iME�~�>��X]u�G�Q��s0����75+ߑ.5!?|�y���5��q�a"�%���������&�HqS���H��"�?T�4�g#��j2��#H�����fZ�P�&�i�p����W������d�~���C�X����,�
20�S}����n��ա��wؽ�U}���nBn�Hm������p�a���f3�)�C��'�aﺋ|v��9�L�\��v-`������b�9y�w��a�7�Z9����C��{����7=���i�߮��u�m�v?�F�?���~���r}��-|�W P��e̛d�rU ��<;����is��T6{������[��q8���f}��?Px����۱V!�����#�(���pʪ�2/�H'�}[��)��r7̶cmOj5� �S��l*]$��ȭ{�{�M�w�����Ui �ge���/�py��=�ӟ�+l�7�8���gG3�e���/6��#D�ቝ��uv����G�-��H�ʮ��RsZӈ���������C�"��R��oG�#�P�#<�N���Vn�q^�i��]s�	07��k�x3��AN$�KK��>���W�������w���Y�G^$U���yrL��p���P��<�>»���u�HQ~8-��wK��"�OHHf�,�y��f�}�*|,M��F����9�|?�2����m�B���%.{�ƲU���
�Xp%�'ިxG7-1)�����l��PLѾ(Ot��^��%��!׷�7�ͦ��y�ek�h��N|��Ѥ�=�MHn+���m����������nl	�"���}�Gi�������aw��2�X�,�O5���ٮ���|q��9��NaU	j�<p��K-������a��p�Q���A���'��bQ:��OkD9:�`��]{_, ����
K�:���`�Wt� 6
�!^�-�j9�5\�Y�T��G���4��?z�ƺn�I�����?�.��%{�ov7V�xx��#��:�M�\Ӆ� ��
��{(t%��Wqf;��k��D�L�{�����J�0�e��+L7�j��o�{r�\n�������:��e2\X�[Q@J�xF�cx�n�BoH_u�5e��i�:�N�������:51-���!�1[9s��3����^Y�e�"Hʜ��� ��ci�P�`@��)ޓ��"�oK����Н#wg�>���*IP�,$�!����a��d�F7;��M{ʕ�	������#kKƿ�Ff����Uf�����$��G�cb�]�/yT���j���;⋢��2A}A���)�X���^l�㧯��2�?����_�����I� �C}�w���w���t��0\���~[�=��2���A���.z�Pw���VT��V��o���n�d�=�TSI(׃S+Ճ���x�>}u������J������=o����ά�/w�t��gU}?�1�a9޸�[�\A�;�g�ą��YG�C�8�If�e����Z����ߨ-�FwQ�A(z0���� ��p��q0���,��?���h�[�����z��~�ԍ������t      O   �  x��V�r�6<��9%�W\�[7Ɋ�r*��!��K�H�&�]�O���^�$= W��8�C�T�H ���y���Y6�E>�,֗�r�]/�|3)�.m.g��f��K�n(�kғլ�V�|����嚲r��l���hQ��'��5�Q<s=��������Mv��o��Gq+ۮ!qC���r�f�%e3�^e��Fe�b#�-Q�U�\/6��mZ��z���l1/��m��M��g�ʋ%��JQ9yS��g����O9j�(�^�F�x�\/����l�>��{w8�j�CO�5v'��l��RW��q�T��=F���9z�nrUJ��?��6�:{7�Ƅ���6.���w"���k��8�B<�Q_�
1�@>p�*��� �!�W��sy�Wh�Fc�I����kɆ��O�OuvH>��r����l�D;K��v��f����r�Re��z�-6��fSUYQlW�m���\OX�W���`TC��B �rQ�g-(��d��VfZ�s]��r�O��N\���=^�+qݐ�ԋ�҃�ΐ�;{g�nL������VҢ2M��Az�SC�㵱��� ���)�s7X-�qj�٬�]e�p�!?�%�G�'��u�l&QӞ��c)�sY���"1��5�a���A�Q����:b�}�|�b�nL����Z�$H4�51v�45�}>����ʵ��&�ӹ&���=�1i��Wxj�xz�4e�R�4>��돬p���6�^�%���E9�pu��hВ�7R�A�`E���1��F ,2�e/=��b\[��ѴwHE�6��x�f��\�iyO�}OvGlH�M7�C�z>�t�	��G��$��@�bw�昼 ����c� ����N@�D����3�X�]}�F�D��P���ר n��PҊ	�*Q�� �QO	`�@�zP	 �@+�(�F6��>����[�����G@�g��j�(]��iZ��$��!H�����M��4��N:��V�i R�L�J0�=-I�,�"� �4�o��X�����)�K	Uh�'�a���]�D D��ǎ��`7iD�����FnY/�j*Z�g'y<Ctg=D��z:�����)=��=�=����{��i����?��C����Şm=���L�ڨ���)*�Hy^|�e��*N?�A;m�����Q{�D'��m��C��>����6�E�!��6?��߽pnנ�����F����vT���;|�l�F��Qo=i\�x\��W<{`o�%R#����dG�5�m4��|>�IG⊝����1(�����>�&J�X�V��2<��UՈ�0q�*�t,q����V~����z�Kr�ɿ��/��~i�AO���������4+�7|6q>N�W!~�XL��d�%XU���hܛ�9��"u}�F�Gb����E`v������|���OL��Y�S)qr�h�c�R����P8�������5��      Q   d   x����  �w� (�r鿄˾�~���͍ըQ�1��Te)�<5@�XǓ�]�Z�<����g絥�0�J=��\�*���g���m
�� �     