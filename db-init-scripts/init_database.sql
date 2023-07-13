CREATE DATABASE dl_northwind;
 \connect dl_northwind;
CREATE SCHEMA dl_northwind;


-- -----------------------------------------------------
-- Table `northwind`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.customer
(
id	INT,
company	VARCHAR,
last_name	VARCHAR,
first_name	VARCHAR,
email_address	VARCHAR,
job_title	VARCHAR,
business_phone	VARCHAR,
home_phone	VARCHAR,
mobile_phone	VARCHAR,
fax_number	VARCHAR,
address	VARCHAR,
city	VARCHAR,
state_province	VARCHAR,
zip_postal_code	VARCHAR,
country_region	VARCHAR,
web_page	VARCHAR,
notes	VARCHAR,
attachments	VARCHAR
)
;
-- -----------------------------------------------------
-- Table `northwind`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.employees
(
id	INT,
company	VARCHAR,
last_name	VARCHAR,
first_name	VARCHAR,
email_address	VARCHAR,
job_title	VARCHAR,
business_phone	VARCHAR,
home_phone	VARCHAR,
mobile_phone	VARCHAR,
fax_number	VARCHAR,
address	VARCHAR,
city	VARCHAR,
state_province	VARCHAR,
zip_postal_code	VARCHAR,
country_region	VARCHAR,
web_page	VARCHAR,
notes	VARCHAR,
attachments	VARCHAR
)
;
-- -----------------------------------------------------
-- Table `northwind`.`privileges`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.privileges
(
id	INT,
privilege_name	VARCHAR
)
;
-- -----------------------------------------------------
-- Table `northwind`.`employee_privileges`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.employee_privileges
(
employee_id	INT,
privilege_id	INT
)
;
-- -----------------------------------------------------
-- Table `northwind`.`inventory_transaction_types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.inventory_transaction_types
(
id	INT,
type_name	VARCHAR
)
;
-- -----------------------------------------------------
-- Table `northwind`.`shippers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.shippers
(
id	INT,
company	VARCHAR,
last_name	VARCHAR,
first_name	VARCHAR,
email_address	VARCHAR,
job_title	VARCHAR,
business_phone	VARCHAR,
home_phone	VARCHAR,
mobile_phone	VARCHAR,
fax_number	VARCHAR,
address	VARCHAR,
city	VARCHAR,
state_province	VARCHAR,
zip_postal_code	VARCHAR,
country_region	VARCHAR,
web_page	VARCHAR,
notes	VARCHAR,
attachments	VARCHAR
)
;
-- -----------------------------------------------------
-- Table `northwind`.`orders_tax_status`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS dl_northwind.orders_tax_status
(
id	INT,
tax_status_name	VARCHAR
)
;

-- -----------------------------------------------------
-- Table `northwind`.`orders_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.orders_status
(
id	INT,
status_name	VARCHAR
)
;
-- -----------------------------------------------------
-- Table `northwind`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.orders
(
id	INT,
employee_id	INT,
customer_id	INT,
order_date	DATE,
shipped_date	DATE,
shipper_id	INT,
ship_name	VARCHAR,
ship_address	VARCHAR,
ship_city	VARCHAR,
ship_state_province	VARCHAR,
ship_zip_postal_code	VARCHAR,
ship_country_region	VARCHAR,
shipping_fee	NUMERIC,
taxes	NUMERIC,
payment_type	VARCHAR,
paid_date	DATE,
notes	VARCHAR,
tax_rate	NUMERIC,
tax_status_id	INT,
status_id	INT
)
;
-- -----------------------------------------------------
-- Table `northwind`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.products
(
supplier_ids	VARCHAR,
id	INT,
product_code	VARCHAR,
product_name	VARCHAR,
description	VARCHAR,
standard_cost	NUMERIC,
list_price	NUMERIC,
reorder_level	INT,
target_level	INT,
quantity_per_unit	VARCHAR,
discontinued	INT,
minimum_reorder_quantity	INT,
category	VARCHAR,
attachments	VARCHAR
)
;
-- -----------------------------------------------------
-- Table `northwind`.`purchase_order_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.purchase_order_status
(
id	INT,
status	VARCHAR
)
;

-- -----------------------------------------------------
-- Table `northwind`.`suppliers`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS dl_northwind.suppliers
(
id	INT,
company	VARCHAR,
last_name	VARCHAR,
first_name	VARCHAR,
email_address	VARCHAR,
job_title	VARCHAR,
business_phone	VARCHAR,
home_phone	VARCHAR,
mobile_phone	VARCHAR,
fax_number	VARCHAR,
address	VARCHAR,
city	VARCHAR,
state_province	VARCHAR,
zip_postal_code	VARCHAR,
country_region	VARCHAR,
web_page	VARCHAR,
notes	VARCHAR,
attachments	VARCHAR
)
;
-- -----------------------------------------------------
-- Table `northwind`.`purchase_orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.purchase_orders
(
id	INT,
supplier_id	INT,
created_by	INT,
submitted_date	DATE,
creation_date	DATE,
status_id	INT,
expected_date	DATE,
shipping_fee	NUMERIC,
taxes	NUMERIC,
payment_date	DATE,
payment_amount	NUMERIC,
payment_method	VARCHAR,
notes	VARCHAR,
approved_by	INT,
approved_date	DATE,
submitted_by	INT
)
;
-- -----------------------------------------------------
-- Table `northwind`.`inventory_transactions`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS dl_northwind.inventory_transactions
(
id	INT,
transaction_type	INT,
transaction_created_date	DATE,
transaction_modified_date	DATE,
product_id	INT,
quantity	INT,
purchase_order_id	INT,
customer_order_id	INT,
comments	VARCHAR
)
;

-- -----------------------------------------------------
-- Table `northwind`.`invoices`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS dl_northwind.invoices
(
id	INT,
order_id	INT,
invoice_date	DATE,
due_date	DATE,
tax	NUMERIC,
shipping	NUMERIC,
amount_due	NUMERIC
)
;
-- -----------------------------------------------------
-- Table `northwind`.`order_details_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.order_details_status
(
id	INT,
status	VARCHAR
)
;
-- -----------------------------------------------------
-- Table `northwind`.`order_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.order_details
(
id	INT,
order_id	INT,
product_id	INT,
quantity	NUMERIC,
unit_price	NUMERIC,
discount	NUMERIC,
status_id	INT,
date_allocated	DATE,
purchase_order_id	INT,
inventory_id	INT
)
;
-- -----------------------------------------------------
-- Table `northwind`.`purchase_order_details`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS dl_northwind.purchase_order_details
(
id	INT,
purchase_order_id	INT,
product_id	INT,
quantity	NUMERIC,
unit_cost	NUMERIC,
date_received	DATE,
posted_to_inventory	INT,
inventory_id	INT
)
;


-- -----------------------------------------------------
-- Table `northwind`.`sales_reports`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dl_northwind.sales_reports (
  group_by VARCHAR,
  display VARCHAR,
  title VARCHAR,
  filter_row_source VARCHAR
)
;



CREATE TABLE IF NOT EXISTS dl_northwind.VARCHARs
(
VARCHAR_id INT,
VARCHAR_data VARCHAR
)
;

