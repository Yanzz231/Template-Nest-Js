CREATE TABLE `users` (
	`id` int AUTO_INCREMENT NOT NULL,
	`status` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`password` varchar(255) NOT NULL,
	`phone` varchar(255) NOT NULL,
	`token` varchar(255),
	`otp_verify` varchar(255),
	`otp_reminder` varchar(255),
	`otp_password` varchar(255),
	`otp_password_reminder` varchar(255),
	`pe` varchar(255),
	CONSTRAINT `users_id` PRIMARY KEY(`id`),
	CONSTRAINT `users_email_unique` UNIQUE(`email`),
	CONSTRAINT `users_password_unique` UNIQUE(`password`)
);
