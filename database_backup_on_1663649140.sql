DROP TABLE IF EXISTS academic_years;

CREATE TABLE `academic_years` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO academic_years VALUES('1','2021-2022','2022','2022-07-20 05:03:11','2022-07-20 05:03:11');



DROP TABLE IF EXISTS admission_enquiries;

CREATE TABLE `admission_enquiries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `next_follow_up_date` date DEFAULT NULL,
  `reference` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `number_of_child` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS allowances;

CREATE TABLE `allowances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS assign_subjects;

CREATE TABLE `assign_subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `section_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO assign_subjects VALUES('1','1','1','1','','');



DROP TABLE IF EXISTS assignments;

CREATE TABLE `assignments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `deadline` date NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS awards;

CREATE TABLE `awards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `types_of_award_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gift_item` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cash_price` decimal(8,2) DEFAULT NULL,
  `month` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS bank_cash_accounts;

CREATE TABLE `bank_cash_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` decimal(8,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `create_user_id` int(11) NOT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS book_categories;

CREATE TABLE `book_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS book_issues;

CREATE TABLE `book_issues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `library_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS books;

CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `author` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rack_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `publish_date` date NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'book.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS chart_of_accounts;

CREATE TABLE `chart_of_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS class_days;

CREATE TABLE `class_days` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `day` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS class_routines;

CREATE TABLE `class_routines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `day` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS classes;

CREATE TABLE `classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO classes VALUES('1','One','1','2022-07-20 05:08:28','2022-07-20 05:08:28');
INSERT INTO classes VALUES('2','Two','1','2022-07-20 05:08:37','2022-07-20 05:08:37');
INSERT INTO classes VALUES('3','Three','1','2022-07-20 05:08:41','2022-07-20 05:08:41');
INSERT INTO classes VALUES('4','Four','1','2022-07-20 05:08:44','2022-07-20 05:08:44');
INSERT INTO classes VALUES('5','Five','1','2022-07-20 05:08:52','2022-07-20 05:08:52');
INSERT INTO classes VALUES('6','Six','1','2022-07-20 05:08:55','2022-07-20 05:08:55');
INSERT INTO classes VALUES('7','Seven','1','2022-07-20 05:08:58','2022-07-20 05:08:58');
INSERT INTO classes VALUES('8','Eight','1','2022-07-20 05:09:02','2022-07-20 05:09:02');
INSERT INTO classes VALUES('9','Nine','1','2022-07-20 05:09:14','2022-07-20 05:09:14');
INSERT INTO classes VALUES('10','Ten','1','2022-07-20 05:09:17','2022-07-20 05:09:17');



DROP TABLE IF EXISTS complains;

CREATE TABLE `complains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `complain_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complain_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `taken_action` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `attach_document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS custom_fields;

CREATE TABLE `custom_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_data` text COLLATE utf8mb4_unicode_ci,
  `field_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS deductions;

CREATE TABLE `deductions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS default_allowances;

CREATE TABLE `default_allowances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS default_deductions;

CREATE TABLE `default_deductions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS departments;

CREATE TABLE `departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO departments VALUES('1','Science','Active','2022-07-20 05:16:11','2022-07-20 05:16:11');



DROP TABLE IF EXISTS designations;

CREATE TABLE `designations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO designations VALUES('1','1','Teacher','2022-07-20 05:16:11','2022-07-20 05:16:11');
INSERT INTO designations VALUES('2','1','Junior Teacher','2022-07-20 05:16:11','2022-07-20 05:16:11');



DROP TABLE IF EXISTS email_logs;

CREATE TABLE `email_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `receiver_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS employees;

CREATE TABLE `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `employee_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `joining_date` date NOT NULL,
  `exit_date` date DEFAULT NULL,
  `joining_salary` decimal(8,2) NOT NULL,
  `current_salary` decimal(8,2) NOT NULL,
  `account_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_identifier_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_letter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_user_id_unique` (`user_id`),
  UNIQUE KEY `employees_employee_id_unique` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS events;

CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS exam_attendances;

CREATE TABLE `exam_attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `attendance` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS exam_schedules;

CREATE TABLE `exam_schedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `room` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS exams;

CREATE TABLE `exams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS expenses;

CREATE TABLE `expenses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `date` date NOT NULL,
  `bill` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS fee_types;

CREATE TABLE `fee_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fee_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO fee_types VALUES('1','Test','test','','2022-09-06 06:19:51','2022-09-06 06:19:51');



DROP TABLE IF EXISTS grades;

CREATE TABLE `grades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marks_from` decimal(8,2) NOT NULL,
  `marks_to` decimal(8,2) NOT NULL,
  `point` decimal(8,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS hostel_categories;

CREATE TABLE `hostel_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hostel_id` int(11) NOT NULL,
  `standard` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostel_fee` decimal(8,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS hostel_members;

CREATE TABLE `hostel_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `hostel_id` int(11) NOT NULL,
  `hostel_category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS hostels;

CREATE TABLE `hostels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hostel_name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoice_items;

CREATE TABLE `invoice_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `fee_id` int(11) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO invoice_items VALUES('1','1','1','1000.00','0.00','2022-09-06 06:20:51','2022-09-06 06:20:51');
INSERT INTO invoice_items VALUES('2','1','1','500.00','0.00','2022-09-06 06:20:51','2022-09-06 06:20:51');



DROP TABLE IF EXISTS invoices;

CREATE TABLE `invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `total` decimal(8,2) NOT NULL,
  `paid` decimal(8,2) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO invoices VALUES('1','1','1','1','1','2022-09-10','This is title','This is invoice description','1500.00','1000.00','Unpaid','2022-09-06 06:20:51','2022-09-06 06:21:19');



DROP TABLE IF EXISTS leave_applications;

CREATE TABLE `leave_applications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `absent_reason` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS leave_types;

CREATE TABLE `leave_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `off_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS library_members;

CREATE TABLE `library_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `library_id` int(11) NOT NULL,
  `member_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS mark_details;

CREATE TABLE `mark_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mark_id` int(11) NOT NULL,
  `mark_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark_value` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS mark_distributions;

CREATE TABLE `mark_distributions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mark_distribution_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark_percentage` decimal(8,2) NOT NULL,
  `is_exam` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `is_active` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS marks;

CREATE TABLE `marks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS messages;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS migrations;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES('1','2014_10_12_000000_create_users_table','1');
INSERT INTO migrations VALUES('2','2014_10_12_100000_create_password_resets_table','1');
INSERT INTO migrations VALUES('3','2018_05_18_195749_create_classes_table','1');
INSERT INTO migrations VALUES('4','2018_05_18_195820_create_sections_table','1');
INSERT INTO migrations VALUES('5','2018_05_19_190218_create_teachers_table','1');
INSERT INTO migrations VALUES('6','2018_05_19_190305_create_parents_table','1');
INSERT INTO migrations VALUES('7','2018_05_23_191505_create_students_table','1');
INSERT INTO migrations VALUES('8','2018_05_26_152356_create_subjects_table','1');
INSERT INTO migrations VALUES('9','2018_05_26_152500_create_assign_subjects_table','1');
INSERT INTO migrations VALUES('10','2018_05_30_171511_create_syllabus_table','1');
INSERT INTO migrations VALUES('11','2018_05_30_171640_create_assignments_table','1');
INSERT INTO migrations VALUES('12','2018_05_31_160819_create_academic_years_table','1');
INSERT INTO migrations VALUES('13','2018_05_31_173434_create_student_groups_table','1');
INSERT INTO migrations VALUES('14','2018_06_01_080940_create_settings_table','1');
INSERT INTO migrations VALUES('15','2018_06_01_161632_create_picklists_table','1');
INSERT INTO migrations VALUES('16','2018_06_03_135117_create_student_sessions_table','1');
INSERT INTO migrations VALUES('17','2018_06_04_064956_create_student_attendances_table','1');
INSERT INTO migrations VALUES('18','2018_06_04_065009_create_staff_attendances_table','1');
INSERT INTO migrations VALUES('19','2018_06_04_113731_create_class_routines_table','1');
INSERT INTO migrations VALUES('20','2018_06_04_173837_create_class_days_table','1');
INSERT INTO migrations VALUES('21','2018_06_05_104953_create_custom_fields_table','1');
INSERT INTO migrations VALUES('22','2018_06_11_141814_create_library_members_table','1');
INSERT INTO migrations VALUES('23','2018_06_14_070134_create_books_table','1');
INSERT INTO migrations VALUES('24','2018_06_14_175650_create_book_issues_table','1');
INSERT INTO migrations VALUES('25','2018_06_24_101833_create_book_categories_table','1');
INSERT INTO migrations VALUES('26','2018_06_29_052036_create_transports_table','1');
INSERT INTO migrations VALUES('27','2018_06_29_081124_create_transport_members_table','1');
INSERT INTO migrations VALUES('28','2018_06_29_155533_create_hostels_table','1');
INSERT INTO migrations VALUES('29','2018_06_29_184315_create_hostel_categories_table','1');
INSERT INTO migrations VALUES('30','2018_06_30_180121_create_hostel_members_table','1');
INSERT INTO migrations VALUES('31','2018_07_03_181135_create_transport_vehicles_table','1');
INSERT INTO migrations VALUES('32','2018_07_08_081225_create_exams_table','1');
INSERT INTO migrations VALUES('33','2018_07_08_100441_create_exam_schedules_table','1');
INSERT INTO migrations VALUES('34','2018_07_09_074555_create_exam_attendances_table','1');
INSERT INTO migrations VALUES('35','2018_07_09_105314_create_grades_table','1');
INSERT INTO migrations VALUES('36','2018_07_09_122620_create_mark_distributions_table','1');
INSERT INTO migrations VALUES('37','2018_07_10_104623_create_marks_table','1');
INSERT INTO migrations VALUES('38','2018_07_10_105637_create_mark_details_table','1');
INSERT INTO migrations VALUES('39','2018_07_13_140956_create_bank_cash_accounts_table','1');
INSERT INTO migrations VALUES('40','2018_07_13_145607_create_chart_of_accounts_table','1');
INSERT INTO migrations VALUES('41','2018_07_13_155644_create_payment_methods_table','1');
INSERT INTO migrations VALUES('42','2018_07_13_155757_create_payee_payers_table','1');
INSERT INTO migrations VALUES('43','2018_07_13_163829_create_transactions_table','1');
INSERT INTO migrations VALUES('44','2018_07_14_080436_create_fee_types_table','1');
INSERT INTO migrations VALUES('45','2018_07_20_071630_create_invoices_table','1');
INSERT INTO migrations VALUES('46','2018_07_20_071647_create_invoice_items_table','1');
INSERT INTO migrations VALUES('47','2018_07_21_114336_create_student_payments_table','1');
INSERT INTO migrations VALUES('48','2018_08_16_080154_create_messages_table','1');
INSERT INTO migrations VALUES('49','2018_08_16_080216_create_user_messages_table','1');
INSERT INTO migrations VALUES('50','2018_08_17_171611_create_sms_logs_table','1');
INSERT INTO migrations VALUES('51','2018_08_17_171623_create_email_logs_table','1');
INSERT INTO migrations VALUES('52','2018_08_29_084045_create_permission_roles_table','1');
INSERT INTO migrations VALUES('53','2018_08_29_084110_create_permissions_table','1');
INSERT INTO migrations VALUES('54','2018_09_03_094539_create_notices_table','1');
INSERT INTO migrations VALUES('55','2018_09_03_102813_create_user_notices_table','1');
INSERT INTO migrations VALUES('56','2018_09_04_164515_create_posts_table','1');
INSERT INTO migrations VALUES('57','2018_09_04_164546_create_post_contents_table','1');
INSERT INTO migrations VALUES('58','2018_09_04_164612_create_pages_table','1');
INSERT INTO migrations VALUES('59','2018_09_04_164646_create_page_contents_table','1');
INSERT INTO migrations VALUES('60','2018_09_04_175517_create_website_languages_table','1');
INSERT INTO migrations VALUES('61','2018_09_05_070003_create_post_categories_table','1');
INSERT INTO migrations VALUES('62','2018_09_07_160425_create_site_navigations_table','1');
INSERT INTO migrations VALUES('63','2018_09_07_161052_create_site_navigation_items_table','1');
INSERT INTO migrations VALUES('64','2018_09_09_081510_create_events_table','1');
INSERT INTO migrations VALUES('65','2018_10_26_065006_create_admission_enquiries_table','1');
INSERT INTO migrations VALUES('66','2018_10_26_124653_create_visitor_informations_table','1');
INSERT INTO migrations VALUES('67','2018_10_26_172752_create_phone_call_logs_table','1');
INSERT INTO migrations VALUES('68','2018_10_26_190026_create_complains_table','1');
INSERT INTO migrations VALUES('69','2019_05_31_377724_create_departments_table','1');
INSERT INTO migrations VALUES('70','2019_06_01_222458_create_designations_table','1');
INSERT INTO migrations VALUES('71','2019_06_03_412130_create_employees_table','1');
INSERT INTO migrations VALUES('72','2019_06_08_601146_create_leave_types_table','1');
INSERT INTO migrations VALUES('73','2019_06_13_072011_create_expenses_table','1');
INSERT INTO migrations VALUES('74','2019_06_16_184935_create_awards_table','1');
INSERT INTO migrations VALUES('75','2019_06_17_371962_create_leave_applications_table','1');
INSERT INTO migrations VALUES('76','2019_06_18_280067_create_types_of_awards_table','1');
INSERT INTO migrations VALUES('77','2019_07_03_202110_create_allowances_table','1');
INSERT INTO migrations VALUES('78','2019_07_03_202148_create_deductions_table','1');
INSERT INTO migrations VALUES('79','2019_07_03_702631_create_payslips_table','1');
INSERT INTO migrations VALUES('80','2019_07_11_205020_create_default_allowances_table','1');
INSERT INTO migrations VALUES('81','2019_07_11_205053_create_default_deductions_table','1');
INSERT INTO migrations VALUES('82','2019_07_20_733421_create_payment_historys_table','1');



DROP TABLE IF EXISTS notices;

CREATE TABLE `notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS page_contents;

CREATE TABLE `page_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `page_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_content` longtext COLLATE utf8mb4_unicode_ci,
  `meta_data` longtext COLLATE utf8mb4_unicode_ci,
  `seo_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'english',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS pages;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_template` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS parents;

CREATE TABLE `parents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `parent_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_profession` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_profession` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS password_resets;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS payee_payers;

CREATE TABLE `payee_payers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS payment_historys;

CREATE TABLE `payment_historys` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS payment_methods;

CREATE TABLE `payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS payslips;

CREATE TABLE `payslips` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `current_salary` decimal(8,2) NOT NULL,
  `expense_claim` decimal(8,2) NOT NULL,
  `absent_fine` decimal(8,2) NOT NULL,
  `net_salary` decimal(8,2) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS permission_roles;

CREATE TABLE `permission_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permission_roles VALUES('1','Admin','','','');
INSERT INTO permission_roles VALUES('2','Teacher','','2022-07-20 05:39:32','2022-07-20 05:39:32');
INSERT INTO permission_roles VALUES('3','Accountant','','2022-07-20 05:39:38','2022-07-20 05:39:38');



DROP TABLE IF EXISTS permissions;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS phone_call_logs;

CREATE TABLE `phone_call_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS picklists;

CREATE TABLE `picklists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO picklists VALUES('1','Designation','Teacher','2022-07-20 05:18:07','2022-07-20 05:18:07');
INSERT INTO picklists VALUES('2','Religion','Islam','2022-07-20 05:18:23','2022-07-20 05:18:23');
INSERT INTO picklists VALUES('3','Designation','Junior Teacher','2022-07-20 05:18:45','2022-07-20 05:18:45');
INSERT INTO picklists VALUES('4','Religion','Hindu','2022-07-20 05:18:51','2022-07-20 05:18:51');



DROP TABLE IF EXISTS post_categories;

CREATE TABLE `post_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_category` text COLLATE utf8mb4_unicode_ci,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS post_contents;

CREATE TABLE `post_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci,
  `meta_data` longtext COLLATE utf8mb4_unicode_ci,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'english',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS posts;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS sections;

CREATE TABLE `sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `section_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_teacher_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `rank` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO sections VALUES('1','A','201','1','1','1','1','120','2022-07-20 05:21:44','2022-07-20 05:21:44');
INSERT INTO sections VALUES('2','B','401','2','2','1','2','100','2022-07-25 03:51:14','2022-07-25 03:51:14');



DROP TABLE IF EXISTS settings;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO settings VALUES('1','school_name','BGIFT School','2022-07-20 05:05:06','2022-09-19 05:15:55');
INSERT INTO settings VALUES('2','site_title','BGIFT School','2022-07-20 05:05:06','2022-09-19 05:15:55');
INSERT INTO settings VALUES('3','phone','01738040305','2022-07-20 05:05:06','2022-09-19 05:15:55');
INSERT INTO settings VALUES('4','email','cseazizul@gmail.com','2022-07-20 05:05:06','2022-09-19 05:15:55');
INSERT INTO settings VALUES('5','currency_symbol','TK','2022-07-20 05:05:06','2022-09-19 05:15:55');
INSERT INTO settings VALUES('6','timezone','Asia/Dhaka','2022-07-20 05:05:06','2022-09-19 05:15:55');
INSERT INTO settings VALUES('7','academic_year','1','2022-07-20 05:05:06','2022-09-19 05:15:55');
INSERT INTO settings VALUES('8','active_theme','default','2022-07-20 05:05:06','2022-09-19 05:15:55');
INSERT INTO settings VALUES('9','language','English','2022-07-20 05:05:06','2022-09-19 05:15:55');
INSERT INTO settings VALUES('10','backend_direction','ltr','2022-07-20 05:05:06','2022-09-19 05:15:55');
INSERT INTO settings VALUES('11','address','Pabna','2022-07-20 05:05:06','2022-09-19 05:15:55');
INSERT INTO settings VALUES('12','absent_fine','5','2022-07-20 05:05:06','2022-09-19 05:15:55');
INSERT INTO settings VALUES('13','logo','logo.jpg','2022-07-21 10:37:49','2022-07-21 10:37:49');
INSERT INTO settings VALUES('14','sidebar_color','#ffffff','2022-07-21 10:45:39','2022-07-21 11:14:52');
INSERT INTO settings VALUES('15','sidebar_text_color','#0f0f0f','2022-07-21 10:45:39','2022-07-21 11:14:52');
INSERT INTO settings VALUES('16','sidebar_border_color','#dddddd','2022-07-21 10:45:39','2022-07-21 11:14:52');
INSERT INTO settings VALUES('17','active_sidebar_background','#e74c3c','2022-07-21 10:45:39','2022-07-21 11:14:52');
INSERT INTO settings VALUES('18','custom_backend_css','','2022-07-21 10:45:39','2022-07-21 11:14:52');
INSERT INTO settings VALUES('19','mail_type','smtp','2022-09-19 04:07:34','2022-09-19 04:07:34');
INSERT INTO settings VALUES('20','from_email','developer@bist.edu.bd','2022-09-19 04:07:34','2022-09-19 04:07:34');
INSERT INTO settings VALUES('21','from_name','Azizul Islam','2022-09-19 04:07:34','2022-09-19 04:07:34');
INSERT INTO settings VALUES('22','smtp_host','mail.bist.edu.bd','2022-09-19 04:07:34','2022-09-19 04:07:34');
INSERT INTO settings VALUES('23','smtp_port','465','2022-09-19 04:07:34','2022-09-19 04:07:34');
INSERT INTO settings VALUES('24','smtp_username','Azizul','2022-09-19 04:07:34','2022-09-19 04:07:34');
INSERT INTO settings VALUES('25','smtp_password','\"pnn#-^qhW[P6\"','2022-09-19 04:07:34','2022-09-19 04:07:34');
INSERT INTO settings VALUES('26','smtp_encryption','ssl','2022-09-19 04:07:34','2022-09-19 04:07:34');
INSERT INTO settings VALUES('27','paypal_active','Yes','2022-09-19 04:08:48','2022-09-19 04:08:48');
INSERT INTO settings VALUES('28','paypal_email','cseazizul@gmail.com','2022-09-19 04:08:48','2022-09-19 04:08:48');
INSERT INTO settings VALUES('29','paypal_currency','USD','2022-09-19 04:08:48','2022-09-19 04:08:48');
INSERT INTO settings VALUES('30','stripe_active','Yes','2022-09-19 04:08:48','2022-09-19 04:08:48');
INSERT INTO settings VALUES('31','stripe_secret_key','','2022-09-19 04:08:48','2022-09-19 04:08:48');
INSERT INTO settings VALUES('32','stripe_publishable_key','','2022-09-19 04:08:48','2022-09-19 04:08:48');
INSERT INTO settings VALUES('33','stripe_currency','USD','2022-09-19 04:08:48','2022-09-19 04:08:48');



DROP TABLE IF EXISTS site_navigation_items;

CREATE TABLE `site_navigation_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `navigation_id` int(11) NOT NULL,
  `menu_label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `page_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_order` int(11) NOT NULL DEFAULT '100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS site_navigations;

CREATE TABLE `site_navigations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS sms_logs;

CREATE TABLE `sms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `receiver` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS staff_attendances;

CREATE TABLE `staff_attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `attendance` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS student_attendances;

CREATE TABLE `student_attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `attendance` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO student_attendances VALUES('1','1','1','1','2022-07-20','1','2022-07-20 05:35:01','2022-07-20 05:35:01');
INSERT INTO student_attendances VALUES('2','2','1','1','2022-07-20','1','2022-07-20 05:35:01','2022-07-20 05:35:01');
INSERT INTO student_attendances VALUES('3','1','1','1','2022-07-21','1','2022-07-20 05:35:44','2022-07-23 07:24:26');
INSERT INTO student_attendances VALUES('4','2','1','1','2022-07-21','1','2022-07-20 05:35:44','2022-07-20 05:35:44');
INSERT INTO student_attendances VALUES('5','1','1','1','2022-07-26','1','2022-07-25 11:02:32','2022-07-25 11:02:32');
INSERT INTO student_attendances VALUES('6','2','1','1','2022-07-26','2','2022-07-25 11:02:32','2022-07-25 11:02:47');
INSERT INTO student_attendances VALUES('7','3','2','2','2022-07-01','2','2022-07-25 11:05:24','2022-07-25 11:05:32');



DROP TABLE IF EXISTS student_groups;

CREATE TABLE `student_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO student_groups VALUES('1','Science','2022-07-20 05:10:25','2022-07-20 05:10:25');
INSERT INTO student_groups VALUES('2','Commerce','2022-07-20 05:10:37','2022-07-20 05:10:37');
INSERT INTO student_groups VALUES('3','Humanities','2022-07-20 05:10:54','2022-07-20 05:10:54');



DROP TABLE IF EXISTS student_payments;

CREATE TABLE `student_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO student_payments VALUES('1','1','2022-09-10','1000.00','','2022-09-06 06:21:19','2022-09-06 06:21:19');



DROP TABLE IF EXISTS student_sessions;

CREATE TABLE `student_sessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `roll` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `optional_subject` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO student_sessions VALUES('1','1','1','1','1','656589','','2022-07-20 05:30:55','2022-07-20 05:30:55');
INSERT INTO student_sessions VALUES('2','1','2','1','1','656590','','2022-07-20 05:34:02','2022-07-20 05:34:02');
INSERT INTO student_sessions VALUES('3','1','3','2','2','111222','','2022-07-25 11:05:03','2022-07-25 11:05:03');



DROP TABLE IF EXISTS students;

CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `register_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activities` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO students VALUES('1','3','','Tamim','Khan','2018-11-10','Male','A+','Islam','01700011114','Pabna','Pabna','Bangladesh','10203040','','','','2022-07-20 05:30:55','2022-07-20 05:30:55');
INSERT INTO students VALUES('2','4','','Hasibul','Islam','2019-07-20','Male','A+','Islam','0145478955','Pabna','Pabna','Bangladesh','102031','','','','2022-07-20 05:34:02','2022-07-20 05:34:02');
INSERT INTO students VALUES('3','6','','Rashedul','Islam','1999-07-25','Male','A+','Islam','01738040311','Pabna','aa','Bangladesh','4456341132','','','','2022-07-25 11:05:03','2022-07-25 11:05:03');



DROP TABLE IF EXISTS subjects;

CREATE TABLE `subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `full_mark` int(11) NOT NULL,
  `pass_mark` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO subjects VALUES('1','Bangla','01','Theory','1','100','33','2022-07-20 05:22:24','2022-07-20 05:22:24');
INSERT INTO subjects VALUES('2','English','02','Theory','1','100','33','2022-07-20 05:22:43','2022-07-20 05:22:43');
INSERT INTO subjects VALUES('3','Math','03','Theory','1','100','33','2022-07-20 05:23:25','2022-07-20 05:23:25');



DROP TABLE IF EXISTS syllabus;

CREATE TABLE `syllabus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `class_id` int(11) NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS teachers;

CREATE TABLE `teachers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `joining_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO teachers VALUES('1','2','Azizul Islam','Teacher','1998-05-09','Male','Islam','01738040305','Pabna','2022-01-01','2022-07-20 05:20:56','2022-07-20 05:20:56');
INSERT INTO teachers VALUES('2','5','Rakibul Islam','Teacher','1992-07-04','Male','Islam','01738040301','Bogra','2022-07-01','2022-07-25 03:50:50','2022-07-25 03:50:50');



DROP TABLE IF EXISTS transactions;

CREATE TABLE `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trans_date` date NOT NULL,
  `account_id` int(11) NOT NULL,
  `trans_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `dr_cr` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chart_id` int(11) NOT NULL,
  `payee_payer_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `create_user_id` int(11) NOT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `reference` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS transport_members;

CREATE TABLE `transport_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `member_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transport_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS transport_vehicles;

CREATE TABLE `transport_vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS transports;

CREATE TABLE `transports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `road_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `road_fare` decimal(8,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS types_of_awards;

CREATE TABLE `types_of_awards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS user_messages;

CREATE TABLE `user_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `read` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS user_notices;

CREATE TABLE `user_notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(11) NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES('1','1','Azizul Islam','admin@gmail.com','$2y$10$FK9lDeN94wKxTGGvZAaCZO4Aji6GzJrLMCfFHwv5BDic6H2kmMd2.','Admin','01738040305','1','','#','#','#','#','LujCpk2vzfPlgvG8VOVyfrdUNyM3hMd8xUAmEqMV8EDah3CZ8ssgs4vekxVw','','2022-07-20 05:07:36');
INSERT INTO users VALUES('2','0','Azizul Islam','cseazizul@gmail.com','$2y$10$SHIhlZ91M7XsDFzbKAl/KO99CDUcdYc29IuWUrBkV.tVxa5CLSNiW','Teacher','01738040305','1','teachers/profile.png','','','','','4b7dMXaBm5KdaVw1uORT6RsT96pD0MeReTlgojmoqs2r8MofKmYH2R0oEbMa','2022-07-20 05:20:56','2022-07-20 05:20:56');
INSERT INTO users VALUES('3','0','Tamim Khan','tamim@gmail.com','$2y$10$lSFKUAnngMEnbW1513wm7etO72vbC.IAUlo10mOctNvDIEt1iSCY2','Student','01700011114','1','students/profile.png','','','','','2EnQ66ZeE0VKmNWuPNjzoTHW4E1hDhRiw0I5SyPIEPwneQyzRg1OeJhBFi2d','2022-07-20 05:30:55','2022-07-20 05:30:55');
INSERT INTO users VALUES('4','0','Hasibul Islam','hasib@gmail.com','$2y$10$miCZR8QyJJIjJgx9ag45Cex0PWNeShI6GBQ8mEq2UG0ac4edhTKaG','Student','0145478955','1','students/profile.png','','','','','','2022-07-20 05:34:02','2022-07-20 05:34:02');
INSERT INTO users VALUES('5','0','Rakibul Islam','rakibul@gmail.com','$2y$10$Ax46a7yKQ8zrhJz9Gd2n3uivhemsXv3.2LleKmBj3ybB5S8T1Ngt2','Teacher','01738040301','1','teachers/profile.png','','','','','','2022-07-25 03:50:50','2022-07-25 03:50:50');
INSERT INTO users VALUES('6','0','Rashedul Islam','rashe@gmail.com','$2y$10$AF.7qUnVMrtKJE7dODFE0.2vFuzXfO5mm6rpG8.9kk9d9rwdd11pS','Student','01738040311','1','students/profile.png','','','','','','2022-07-25 11:05:03','2022-07-25 11:05:03');



DROP TABLE IF EXISTS visitor_informations;

CREATE TABLE `visitor_informations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `purpose` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `number_of_person` int(11) DEFAULT NULL,
  `id_card` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS website_languages;

CREATE TABLE `website_languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




