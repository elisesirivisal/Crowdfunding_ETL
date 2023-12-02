drop table if exists campaign;
drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;

-- create table: contacts

CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar (50) NOT NULL,
    last_name varchar (50) NOT NULL,
    email varchar (50) NOT NULL,
	primary key (contact_id)
);

-- create table: category

CREATE TABLE category (
    category_id varchar (5) NOT NULL,
    category varchar (50) NOT NULL,
	primary key (category_id)
);

-- create table: subcategory

CREATE TABLE subcategory (
    subcategory_id varchar (10) NOT NULL,
    subcategory varchar (50) NOT NULL,
	primary key (subcategory_id)
);

-- create table: campaign

CREATE TABLE campaign (
    cf_id int primary key NOT NULL,
    contact_id int NOT NULL,
    company_name varchar (50) NOT NULL,
    description varchar (100) NOT NULL,
    goal float NOT NULL,
    pledged float NOT NULL,
    outcome varchar (15) NOT NULL,
    backers_count int NOT NULL,
    country varchar (300) NOT NULL,
    currency varchar (300) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar (300) NOT NULL,
    subcategory_id varchar (300) NOT NULL,
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);

select * from contacts
select * from category
select * from subcategory
select * from campaign