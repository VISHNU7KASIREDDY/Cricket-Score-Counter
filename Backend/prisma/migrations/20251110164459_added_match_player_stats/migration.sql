-- CreateTable
CREATE TABLE `MatchPlayerStats` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `matchId` INTEGER NOT NULL,
    `playerId` INTEGER NOT NULL,
    `teamId` INTEGER NOT NULL,
    `runsScored` INTEGER NOT NULL DEFAULT 0,
    `singles` INTEGER NOT NULL DEFAULT 0,
    `doubles` INTEGER NOT NULL DEFAULT 0,
    `triples` INTEGER NOT NULL DEFAULT 0,
    `fours` INTEGER NOT NULL DEFAULT 0,
    `sixes` INTEGER NOT NULL DEFAULT 0,
    `wicketsTaken` INTEGER NOT NULL DEFAULT 0,
    `economy` DOUBLE NOT NULL DEFAULT 0,
    `numberOfOvers` DOUBLE NOT NULL DEFAULT 0,
    `battingStatus` VARCHAR(191) NOT NULL DEFAULT 'not_batting',
    `strikeRate` DOUBLE NOT NULL DEFAULT 0,
    `numberOfBalls` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `MatchPlayerStats` ADD CONSTRAINT `MatchPlayerStats_matchId_fkey` FOREIGN KEY (`matchId`) REFERENCES `Match`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MatchPlayerStats` ADD CONSTRAINT `MatchPlayerStats_playerId_fkey` FOREIGN KEY (`playerId`) REFERENCES `Player`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MatchPlayerStats` ADD CONSTRAINT `MatchPlayerStats_teamId_fkey` FOREIGN KEY (`teamId`) REFERENCES `Team`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
