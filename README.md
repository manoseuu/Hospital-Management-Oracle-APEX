# Hospital Management System 🏥

## Overview
This project is a complete **Hospital Management System** developed as part of a university database coursework. It is built using **Oracle APEX** and **Oracle SQL / PL/SQL**, demonstrating a practical implementation of relational database design, data manipulation, and full-stack low-code application development.

## Key Features
* **Drug Inventory Management:** Dynamic tracking of medical supplies and medicine stock using APEX Interactive Reports.
* **Medical Staff Directory:** Organized management of hospital personnel, including doctors and their assigned departments.
* **Automated Operations (Triggers):** Implementation of PL/SQL Database Triggers that automatically generate restocking orders when drug supplies fall below a predefined threshold.
* **Role-Based Access Control (RBAC):** Secure authorization mechanisms with distinct user roles:
  * `Administrator`: Full system access and management capabilities.
  * `Doctor`: Restricted access to specific views and patient/staff data.

## Technologies Used
* **Database:** Oracle Database
* **Front-End / Framework:** Oracle APEX (Application Express)
* **Languages:** SQL (DDL, DML), PL/SQL

## Installation & Setup
To run this project locally or on your own Oracle APEX Cloud workspace:
1. Navigate to the **SQL Workshop > SQL Scripts** in your APEX environment.
2. Upload and run the provided SQL scripts to create the necessary tables, insert sample data, and initialize the PL/SQL triggers.
3. Navigate to **App Builder > Import**.
4. Upload the `f101.sql` (or equivalent application export file) to install the graphical user interface.
5. Run the application and log in using your workspace credentials.

## Academic Disclaimer
*This repository contains an academic project created for educational purposes to demonstrate database management and Oracle APEX concepts.*
