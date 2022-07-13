CREATE TABLE  developers
(
	id SERIAL PRIMARY KEY,
	developer_name VARCHAR(30) NOT NULL,
	developer_age INT,
	developer_sex VARCHAR(1) NOT NULL
);

CREATE TABLE skills
(
	id SERIAL PRIMARY KEY,
	language VARCHAR(15) NOT NULL,
	skill_lvl VARCHAR(15) NOT NULL
);

CREATE TABLE projects
(
	id SERIAL PRIMARY KEY,
	project_name VARCHAR(30) NOT NULL,
	project_start_date DATE
);

CREATE TABLE companies
(
	id SERIAL PRIMARY KEY,
	company_name VARCHAR(30) NOT NULL,
	company_address VARCHAR(100) NOT NULL
);

CREATE TABLE customers
(
	id SERIAL PRIMARY KEY,
	customer_name VARCHAR(30) NOT NULL,
	customer_phone VARCHAR(20) NOT NULL
);

CREATE TABLE Developers_Projects_Relation
(
	developer_id INT NOT NULL,
	project_id INT NOT NULL,
	FOREIGN KEY (developer_id) REFERENCES developers (id),
	FOREIGN KEY (project_id) REFERENCES projects (id),
	UNIQUE (developer_id, project_id)
);

CREATE TABLE Developers_Skills_Relation
(
	developer_id INT NOT NULL,
	skill_id INT NOT NULL,
	FOREIGN KEY (developer_id) REFERENCES developers (id),
	FOREIGN KEY (skill_id) REFERENCES skills (id),
	UNIQUE (developer_id, skill_id)
);

CREATE TABLE Companies_Projects_Relation
(
	company_id INT NOT NULL,
	project_id INT NOT NULL,
	FOREIGN KEY (company_id) REFERENCES companies (id),
	FOREIGN KEY (project_id) REFERENCES projects (id),
	UNIQUE (company_id, project_id)
);

CREATE TABLE Customers_Projects_Relation
(
	customer_id INT NOT NULL,
	project_id INT NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers (id),
	FOREIGN KEY (project_id) REFERENCES projects (id),
	UNIQUE (customer_id, project_id)
);