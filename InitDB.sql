create table COMPANIES
(
    ID              INTEGER auto_increment
        primary key,
    COMPANY_NAME    CHARACTER VARYING(30)  not null,
    COMPANY_ADDRESS CHARACTER VARYING(100) not null
);

create table CUSTOMERS
(
    ID             INTEGER auto_increment
        primary key,
    CUSTOMER_NAME  CHARACTER VARYING(30) not null,
    CUSTOMER_PHONE CHARACTER VARYING(20) not null
);

create table DEVELOPERS
(
    ID             INTEGER auto_increment
        primary key,
    DEVELOPER_NAME CHARACTER VARYING(30) not null,
    DEVELOPER_AGE  INTEGER,
    DEVELOPER_SEX  CHARACTER VARYING(1)  not null
);

create table PROJECTS
(
    ID                 INTEGER auto_increment
        primary key,
    PROJECT_NAME       CHARACTER VARYING(30) not null,
    PROJECT_START_DATE DATE
);

create table COMPANIES_PROJECTS_RELATION
(
    COMPANY_ID INTEGER not null
        references COMPANIES,
    PROJECT_ID INTEGER not null
        references PROJECTS,
    unique (COMPANY_ID, PROJECT_ID)
);

create table CUSTOMERS_PROJECTS_RELATION
(
    CUSTOMER_ID INTEGER not null
        references CUSTOMERS,
    PROJECT_ID  INTEGER not null
        references PROJECTS,
    unique (CUSTOMER_ID, PROJECT_ID)
);

create table DEVELOPERS_PROJECTS_RELATION
(
    DEVELOPER_ID INTEGER not null
        references DEVELOPERS,
    PROJECT_ID   INTEGER not null
        references PROJECTS,
    unique (DEVELOPER_ID, PROJECT_ID)
);

create table SKILLS
(
    ID        INTEGER auto_increment
        primary key,
    LANGUAGE  CHARACTER VARYING(15) not null,
    SKILL_LVL CHARACTER VARYING(15) not null
);

create table DEVELOPERS_SKILLS_RELATION
(
    DEVELOPER_ID INTEGER not null
        references DEVELOPERS,
    SKILL_ID     INTEGER not null
        references SKILLS,
    unique (DEVELOPER_ID, SKILL_ID)
);


