SET PROPERTY "sql.enforce_strict_size" true;

CREATE TABLE profile (
  id BIGINT IDENTITY,
  username varchar(15) NOT NULL,
  password varchar(15) NOT NULL,
  firstname varchar(32),
  lastname varchar(32),
  email varchar(256),
  ssno varchar(11)
);

CREATE TABLE role (
  id BIGINT IDENTITY,
  username varchar(15) NOT NULL,
  rolename varchar(15) NOT NULL
);

CREATE TABLE auth (
  id BIGINT IDENTITY,
  rolename varchar(15) NOT NULL,
  roleid int
);

CREATE TABLE account (
  id BIGINT IDENTITY,
  username varchar(15) NOT NULL,
  acctno varchar(10) NOT NULL,
  balance double,
  ccn varchar(19) NOT NULL
);

CREATE TABLE transaction (
  id BIGINT IDENTITY,
  acctno varchar(10) NOT NULL,
  description varchar(255),
  amount double,
  date Date,
  payee varchar(255)
);

CREATE TABLE message (
  id BIGINT IDENTITY,
  username varchar(15) NOT NULL,
  date Date,
  sender varchar(255) NOT NULL,
  severity varchar(255),
  subject varchar(255),
  body varchar(8192)
);

CREATE TABLE location (
  id BIGINT IDENTITY,
  address varchar(255) NOT NULL,
  city varchar(255) NOT NULL,
  state varchar(2) NOT NULL,
  zip varchar(5) NOT NULL,
  atm varchar(3) NOT NULL,
  branch varchar(3) NOT NULL
);

insert into account (username, acctno, balance, ccn) values ('gary',  '1087550182', 10000.00, '6011-4549-2730-6285');
insert into account (username, acctno, balance, ccn) values ('eddie', '0422328325', 31337.00, '4556-5455-2201-1182');
insert into account (username, acctno, balance, ccn) values ('eddie', '3711037018', 15435.00, '5434-4577-0737-1164');
insert into account (username, acctno, balance, ccn) values ('matt',  '1975466987', 12135.00, '4003 1406 5284 0748');
insert into account (username, acctno, balance, ccn) values ('ken',   '9666875489', 1211.00, '4003 1421 8535 2373');
insert into account (username, acctno, balance, ccn) values ('scott', '2587745614', 155224.00, '4024 0238 2145 2337');
insert into account (username, acctno, balance, ccn) values ('scott', '5423454623', 15.00, '4024 0238 2145 2337');
insert into account (username, acctno, balance, ccn) values ('scott', '5462381232', 1521.00, '4024 0238 2145 2337');
insert into account (username, acctno, balance, ccn) values ('scott', '6919347547', 1021.00, '4024 0238 2145 2337');
insert into account (username, acctno, balance, ccn) values ('scott', '1412354577', 11544.00, '4024 0238 2145 2337');
insert into account (username, acctno, balance, ccn) values ('dave',  '2334345546', 545411.00, '4019 3364 8220 5035');

insert into profile (username, password, firstname, lastname, email, ssno) values ('admin', 'admin', 'Andrew', 'Dmin', 'admin@example.com', '111-22-9845');
insert into profile (username, password, firstname, lastname, email, ssno) values ('gary', 'gary', 'Gary', 'Skippee', 'gary@example.com', '737-45-6788');
insert into profile (username, password, firstname, lastname, email, ssno) values ('eddie', 'eddie', 'Eddie', '', 'ed@example.com', '730-45-1694');
insert into profile (username, password, firstname, lastname, email, ssno) values ('matt', 'matt', 'Matt', 'Mo', 'matt@example.com', '678-45-6786');
insert into profile (username, password, firstname, lastname, email, ssno) values ('ken', 'ken', 'Ken', 'Tee', 'ken@example.com', '684-45-6785');
insert into profile (username, password, firstname, lastname, email, ssno) values ('scott', 'scott', 'Scott', 'Jo', 'scott@example.com', '711-45-6784');
insert into profile (username, password, firstname, lastname, email, ssno) values ('dave', 'dave', 'Dave', 'B', 'dave@example.com', '212-45-6783');
insert into profile (username, password, firstname, lastname, email, ssno) values ('brian', 'brian', 'Brian', 'Muppet', 'brian@example.com', '212-99-0001');
insert into profile (username, password, firstname, lastname, email, ssno) values ('adam', 'adam', 'Adam', 'Example', 'adam@example.com', '212-99-0002');
insert into profile (username, password, firstname, lastname, email, ssno) values ('alex', 'alex', 'alex', 'Example', 'alex@example.com', '212-99-0003');
insert into profile (username, password, firstname, lastname, email, ssno) values ('dan', 'dan', 'dan', 'Example', 'dan@example.com', '212-99-0004');
insert into profile (username, password, firstname, lastname, email, ssno) values ('cole', 'cole', 'cole', 'Example', 'cole@example.com', '212-99-0005');
insert into profile (username, password, firstname, lastname, email, ssno) values ('jack', 'jack', 'jack', 'Example', 'jack@example.com', '212-99-0006');
insert into profile (username, password, firstname, lastname, email, ssno) values ('jake', 'jake', 'jake', 'Example', 'jake@example.com', '212-99-0007');
insert into profile (username, password, firstname, lastname, email, ssno) values ('james', 'james', 'james', 'Example', 'james@example.com', '212-99-0008');
insert into profile (username, password, firstname, lastname, email, ssno) values ('max', 'max', 'max', 'Example', 'max@example.com', '212-99-0009');
insert into profile (username, password, firstname, lastname, email, ssno) values ('rich', 'rich', 'rich', 'Example', 'rich@example.com', '212-99-0010');
insert into profile (username, password, firstname, lastname, email, ssno) values ('sam', 'sam', 'sam', 'Example', 'sam@example.com', '212-99-0011');
insert into profile (username, password, firstname, lastname, email, ssno) values ('ella', 'ella', 'ella', 'Example', 'ella@example.com', '212-99-0012');
insert into profile (username, password, firstname, lastname, email, ssno) values ('julie', 'julie', 'julie', 'Example', 'julie@example.com', '212-99-0013');
insert into profile (username, password, firstname, lastname, email, ssno) values ('katie', 'katie', 'katie', 'Example', 'katie@example.com', '212-99-0014');
insert into profile (username, password, firstname, lastname, email, ssno) values ('kim', 'kim', 'kim', 'Example', 'kim@example.com', '212-99-0015');
insert into profile (username, password, firstname, lastname, email, ssno) values ('uma', 'uma', 'uma', 'Example', 'uma@example.com', '212-99-0016');
insert into profile (username, password, firstname, lastname, email, ssno) values ('will', 'will', 'will', 'Example', 'will@example.com', '212-99-0017');
insert into profile (username, password, firstname, lastname, email, ssno) values ('sarah', 'sarah', 'sarah', 'Example', 'sarah@example.com', '212-99-0018');

insert into transaction (acctno, description, amount, date) values ('0422328325', 'Deposit', 111.12, '2008-01-04');
insert into transaction (acctno, description, amount, date) values ('0422328325', 'Deposit', 311.00, '2008-01-08' );
insert into transaction (acctno, description, amount, date) values ('0422328325', 'Withdrawl', -11.65, '2008-01-10' );
insert into transaction (acctno, description, amount, date) values ('0422328325', 'Deposit', 556.20, '2008-02-04' );
insert into transaction (acctno, description, amount, date) values ('0422328325', 'Withdrawl', -80.00, '2008-02-14' );
insert into transaction (acctno, description, amount, date) values ('0422328325', 'Deposit', 81.12, '2008-03-04' );
insert into transaction (acctno, description, amount, date) values ('1087550182', 'Deposit', 930.23, '2008-04-10' );
insert into transaction (acctno, description, amount, date) values ('1087550182', 'Deposit', 100.00, '2008-04-11' );
insert into transaction (acctno, description, amount, date) values ('1087550182', 'Withdrawl', -20.98, '2008-04-22' );
insert into transaction (acctno, description, amount, date) values ('1087550182', 'Withdrawl', -56.60, '2008-04-23' );
insert into transaction (acctno, description, amount, date) values ('1087550182', 'Withdrawl', -40.00, '2008-01-04' );
insert into transaction (acctno, description, amount, date) values ('1087550182', 'Deposit', 181.12, '2007-12-12' );

insert into message (username, date, sender, severity, subject, body) values ('eddie', '2008-01-04', 'RWi', '<font color="red">High</font>', 'Alert: Check funds', 'Please check your balance.');
insert into message (username, date, sender, severity, subject, body) values ('eddie', '2007-12-21', 'RWi', 'Low', 'Deposit', 'Your funds have been deposited.');
insert into message (username, date, sender, severity, subject, body) values ('gary', '2008-03-31', 'RWi', 'Low', 'Deposit', 'Your funds have been deposited.');

insert into role (username, rolename) values ('admin', 'admin');
insert into role (username, rolename) values ('brian', 'admin');
insert into role (username, rolename) values ('max', 'admin');

insert into role (username, rolename) values ('admin', 'user');
insert into role (username, rolename) values ('gary', 'user');
insert into role (username, rolename) values ('eddie', 'user');
insert into role (username, rolename) values ('matt', 'user');
insert into role (username, rolename) values ('ken', 'user');
insert into role (username, rolename) values ('scott', 'user');
insert into role (username, rolename) values ('dave', 'user');
insert into role (username, rolename) values ('brian', 'user');
insert into role (username, rolename) values ('adam', 'user');
insert into role (username, rolename) values ('alex', 'user');
insert into role (username, rolename) values ('dan', 'user');
insert into role (username, rolename) values ('cole', 'user');
insert into role (username, rolename) values ('jack', 'user');
insert into role (username, rolename) values ('jake', 'user');
insert into role (username, rolename) values ('james', 'user');
insert into role (username, rolename) values ('max', 'user');
insert into role (username, rolename) values ('rich', 'user');
insert into role (username, rolename) values ('sam', 'user');
insert into role (username, rolename) values ('ella', 'user');
insert into role (username, rolename) values ('julie', 'user');
insert into role (username, rolename) values ('katie', 'user');
insert into role (username, rolename) values ('kim', 'user');
insert into role (username, rolename) values ('uma', 'user');
insert into role (username, rolename) values ('will', 'user');
insert into role (username, rolename) values ('sarah', 'user');

insert into auth (rolename, roleid) values ('admin', 0);
insert into auth (rolename, roleid) values ('user', 1);

insert into location (address, city, state, zip, atm, branch) values ('123 Main St', 'San Mateo', 'CA', '94404', 'Yes', 'Yes');
insert into location (address, city, state, zip, atm, branch) values ('2215 Bridgepointe Parkway', 'San Mateo', 'CA', '94404', 'No', 'Yes');
insert into location (address, city, state, zip, atm, branch) values ('1 Market St', 'San Francisco', 'CA', '94123', 'No', 'Yes');
insert into location (address, city, state, zip, atm, branch) values ('123 Wall Street', 'New York', 'NY', '10005', 'Yes', 'No');
insert into location (address, city, state, zip, atm, branch) values ('111 Street', 'San Mateo', 'CA', '94404', 'Yes', 'No');
