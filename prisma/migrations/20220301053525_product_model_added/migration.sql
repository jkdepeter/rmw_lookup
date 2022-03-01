/*
  Warnings:

  - You are about to drop the column `pimages` on the `products` table. All the data in the column will be lost.
  - Added the required column `pimage` to the `products` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `products` DROP COLUMN `pimages`,
    ADD COLUMN `pimage` LONGBLOB NOT NULL;
