/*
  Warnings:

  - The primary key for the `ExpenseSummary` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `exoenseSummaryId` on the `ExpenseSummary` table. All the data in the column will be lost.
  - Added the required column `expenseSummaryId` to the `ExpenseSummary` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "ExpenseByCategory" DROP CONSTRAINT "ExpenseByCategory_expenseSummaryId_fkey";

-- AlterTable
ALTER TABLE "ExpenseSummary" DROP CONSTRAINT "ExpenseSummary_pkey",
DROP COLUMN "exoenseSummaryId",
ADD COLUMN     "expenseSummaryId" TEXT NOT NULL,
ADD CONSTRAINT "ExpenseSummary_pkey" PRIMARY KEY ("expenseSummaryId");

-- AddForeignKey
ALTER TABLE "ExpenseByCategory" ADD CONSTRAINT "ExpenseByCategory_expenseSummaryId_fkey" FOREIGN KEY ("expenseSummaryId") REFERENCES "ExpenseSummary"("expenseSummaryId") ON DELETE RESTRICT ON UPDATE CASCADE;
