-- CreateTable
CREATE TABLE `products` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `pname` VARCHAR(191) NOT NULL,
    `pdescription` VARCHAR(191) NULL,
    `pcolour` VARCHAR(191) NULL,
    `pimages` LONGBLOB NOT NULL,

    UNIQUE INDEX `products_pname_key`(`pname`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
