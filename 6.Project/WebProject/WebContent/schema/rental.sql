CREATE TABLE `Rental` (
`district` char(30) NOT NULL DEFAULT '',
`stationNo` char(30) NOT NULL DEFAULT '',
`rentalName` char(30) NOT NULL DEFAULT '',
`address` char(30) NOT NULL DEFAULT '',
`holderNo` char(20) NOT NULL DEFAULT '',
`latitude` int(10) NOT NULL DEFAULT '0',
`longitude` int(10) NOT NULL DEFAULT '0',
PRIMARY KEY(`stationNo`));