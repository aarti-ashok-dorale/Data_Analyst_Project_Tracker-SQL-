# step 1 : Insert data into employees table

insert into employees values
(101,'rahul patil','data analytics','data analyst',45000,'2023-01-15'),
(102,'priya sharma','business intelligence','bi analyst',52000,'2022-11-10'),
(103,'amit kulkarni','data analytics','junior analyst',38000,'2024-02-05'),
(104,'neha joshi','testing','qa analyst',42000,'2023-05-20'),
(105,'rohan deshmukh','data engineering','data engineer',65000,'2022-08-18'),
(106,'sneha patil','business intelligence','bi developer',60000,'2021-12-01'),
(107,'akash more','data analytics','data analyst',47000,'2023-03-11'),
(108,'pooja jain','testing','qa engineer',43000,'2022-09-15'),
(109,'vivek gupta','data engineering','etl developer',68000,'2021-07-25'),
(110,'anita singh','data analytics','senior analyst',72000,'2020-06-30'),
(111,'karan shah','business intelligence','power bi developer',58000,'2023-04-08'),
(112,'meera naik','data analytics','data analyst',49000,'2022-10-12'),
(113,'deepak yadav','testing','automation tester',50000,'2021-11-05'),
(114,'kavita pawar','data engineering','sql developer',62000,'2023-06-14'),
(115,'arjun reddy','data analytics','junior analyst',39000,'2024-01-20');

select * from employees;

# step 2 : Insert data into clients

insert into clients values
(201,'amit mehta','infosys','india'),
(202,'john smith','amazon','usa'),
(203,'priya nair','tcs','india'),
(204,'david miller','accenture','uk'),
(205,'riya kapoor','wipro','india'),
(206,'michael brown','google','usa'),
(207,'snehal patel','hcl','india'),
(208,'alex johnson','microsoft','usa'),
(209,'rohit gupta','capgemini','india'),
(210,'emma watson','deloitte','canada');

select * from clients;

# step 3 : insert values into projects

insert into projects values
(301,'sales dashboard',201,101,'2025-01-05','2025-02-15',250000),
(302,'customer analytics',202,102,'2025-01-10','2025-03-10',400000),
(303,'inventory report',203,103,'2025-01-15','2025-02-28',180000),
(304,'finance dashboard',204,104,'2025-02-01','2025-03-25',320000),
(305,'hr analytics',205,105,'2025-02-05','2025-04-01',280000),
(306,'marketing insights',206,106,'2025-02-12','2025-04-15',450000),
(307,'employee tracker',207,107,'2025-03-01','2025-04-20',200000),
(308,'retail dashboard',208,108,'2025-03-10','2025-05-05',350000),
(309,'banking reports',209,109,'2025-03-15','2025-05-10',500000),
(310,'healthcare analytics',210,110,'2025-04-01','2025-06-01',550000),
(311,'sales prediction',201,111,'2025-04-05','2025-05-25',270000),
(312,'customer churn',202,112,'2025-04-10','2025-06-15',380000),
(313,'fraud detection',203,113,'2025-04-15','2025-06-20',420000),
(314,'supply chain dashboard',204,114,'2025-05-01','2025-07-01',310000),
(315,'profit analysis',205,115,'2025-05-05','2025-06-30',240000),
(316,'power bi dashboard',206,101,'2025-05-10','2025-07-15',330000),
(317,'sql reporting',207,102,'2025-05-15','2025-07-25',210000),
(318,'business dashboard',208,103,'2025-06-01','2025-08-01',360000),
(319,'etl automation',209,104,'2025-06-10','2025-08-20',470000),
(320,'executive dashboard',210,105,'2025-06-15','2025-08-30',600000);

select * from projects;

# step 4 : insert values into tasks

insert into tasks values
(401,301,101,'data collection','2025-01-15'),
(402,301,101,'data cleaning','2025-01-20'),
(403,302,102,'dashboard design','2025-01-25'),
(404,302,102,'client meeting','2025-02-01'),
(405,303,103,'sql queries','2025-01-28'),
(406,303,103,'testing','2025-02-05'),
(407,304,104,'report development','2025-02-15'),
(408,304,104,'bug fixing','2025-03-01'),
(409,305,105,'requirement gathering','2025-02-18'),
(410,305,105,'documentation','2025-03-10');

select * from tasks;

# step 5: Insert values into project_status

insert into project_status values
(501,301,'completed',100),
(502,302,'completed',100),
(503,303,'in progress',70),
(504,304,'completed',100),
(505,305,'pending',40),
(506,306,'completed',100),
(507,307,'in progress',80),
(508,308,'pending',20),
(509,309,'completed',100),
(510,310,'completed',100),
(511,311,'pending',35),
(512,312,'in progress',75),
(513,313,'completed',100),
(514,314,'in progress',60),
(515,315,'pending',25),
(516,316,'completed',100),
(517,317,'completed',100),
(518,318,'in progress',85),
(519,319,'pending',50),
(520,320,'completed',100);

select * from project_status; 