drop database if exists rocket22;
use rocket22;
/*Exercise 1*/
create table Trainee(
	TraineeID int not null auto_increment,
    Full_Name varchar(155),
    Birth_Date date,
    Gender varchar(7),
    ET_IQ int,
    ET_Gmath int,
    ET_English int,
    Training_Class int,
    Evaluation_Notes int,
    VTI_Account int not null unique,
    primary key (TraineeID)
);
/* Exercise 2*/

create table DataTypes(
	ID int not null auto_increment,
    Name varchar(50),
    Code varchar(5),
    ModifiedDate datetime default current_timestamp,
    primary key(ID)
);

/*Exercise 3*/
create table DataType2(
	ID int not null auto_increment,
    Name varchar(50),
    BirthDate date,
    Gender int,
    IsDeletedFlag int,
    primary key(ID)
)
