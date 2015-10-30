CREATE TABLE Candy(Id int NOT NULL primary key, ProductName varchar(50) NOT NULL);
GO
INSERT INTO Candy(Id, ProductName) VALUES(1, 'Butterfinger');
INSERT INTO Candy(Id, ProductName) VALUES(2, 'Snickers');
INSERT INTO Candy(Id, ProductName) VALUES(3, 'Twix');
INSERT INTO Candy(Id, ProductName) VALUES(4, 'Milky Way');
INSERT INTO Candy(Id, ProductName) VALUES(5, 'Now and Later');
INSERT INTO Candy(Id, ProductName) VALUES(6, 'Popcorn Ball');
INSERT INTO Candy(Id, ProductName) VALUES(7, 'Fruitcake');
GO

CREATE TABLE Costumes(Id int NOT NULL primary key, Costume varchar(50) NOT NULL);
GO
INSERT INTO Costumes(Id, Costume) VALUES(1, 'Ghost');
INSERT INTO Costumes(Id, Costume) VALUES(2, 'Skeleton');
INSERT INTO Costumes(Id, Costume) VALUES(3, 'Zombie');
INSERT INTO Costumes(Id, Costume) VALUES(4, 'Chupacabra');
INSERT INTO Costumes(Id, Costume) VALUES(5, 'Richard Dean Anderson');
GO
CREATE TABLE Treaters(Name varchar(50) NOT NULL primary key, FavoriteCandyID int NOT NULL REFERENCES Candy(Id), CostumeID int NOT NULL REFERENCES Costumes(Id));
GO
