/*
  Warnings:

  - You are about to drop the column `eamil` on the `Users` table. All the data in the column will be lost.
  - Added the required column `email` to the `Users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Users" DROP COLUMN "eamil",
ADD COLUMN     "email" TEXT NOT NULL;
