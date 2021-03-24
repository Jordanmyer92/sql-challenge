CREATE TABLE "Departments" (
    "dept_no" varchar(100)   NOT NULL,
    "dept_name" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Dept_Emp" (
    "emp_no" varchar(100)   NOT NULL,
    "dept_no" varchar(331604)   NOT NULL
);

CREATE TABLE "Dept_Manager" (
    "dept_no" varchar(25)   NOT NULL,
    "emp_no" varchar(25)   NOT NULL
);

CREATE TABLE "Employees" (
    "emp_no" varchar(300025)   NOT NULL,
    "emp_title_id" varchar(300025)   NOT NULL,
    "birth_date" varchar(300025)   NOT NULL,
    "first_name" varchar(300025)   NOT NULL,
    "last_name" varchar(300025)   NOT NULL,
    "sex" varchar(300025)   NOT NULL,
    "hire_date" varchar(300025)   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" varchar(100)   NOT NULL,
    "salary" varchar(100)   NOT NULL
);

CREATE TABLE "Titles" (
    "title_id" varchar(100)   NOT NULL,
    "title" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");