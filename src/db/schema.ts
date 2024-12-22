import { int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';

export const usersTable = mysqlTable('users', {
  id: int().autoincrement().primaryKey(),
  status: varchar({ length: 255 }).notNull(),
  email: varchar({ length: 255 }).unique().notNull(),
  password: varchar({ length: 255 }).unique().notNull(),
  phone: varchar({ length: 255 }).notNull(),
  token: varchar({ length: 255 }),
  otp_verify: varchar({ length: 255 }),
  otp_reminder: varchar({ length: 255 }),
  otp_password: varchar({ length: 255 }),
  otp_password_reminder: varchar({ length: 255 }),
});
