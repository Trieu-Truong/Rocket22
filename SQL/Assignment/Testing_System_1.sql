use rocket22;
/* Cau 1 */
create table deparment(
	deparmentid int not null auto_increment,
    deparmentname varchar(155),
    primary key (deparmentid)
);
/*Cau2*/
create table PPosition(
	positionid int not null auto_increment,
    positionname enum ('Dev', 'Test', 'Scrum Master', 'PM'),
    primary key (positionid)
);
/*Cau3*/
create table Account(
	accountid int not null auto_increment,
    email varchar(50),
    username varchar(10),
    fullname varchar(50),
    deparmentid varchar(50),
    positionid varchar(50),
    createdate timestamp default current_timestamp,
    primary key (accountid)
);

/* Cau4*/
create table Grroup(
	groupid int not null auto_increment,
    groupname varchar(50),
    creatorid int not null,
    createdate timestamp default current_timestamp,
    primary key (groupid, creatorid)
);
/*Cau5*/
create table GroupAccount(
	groupid int not null,
    accountid int not null,
    JoinDate timestamp default current_timestamp,
    primary key (groupid, accountid)
);
/*Cau6*/
create table TypeQuestion(
	typeid int not null auto_increment,
    typename enum ('Essay', 'Multiple-Choice'),
    primary key (typeid)
);

/*Cau7*/
create table CategoryQuestion(
	categoryid int not null auto_increment,
    categoryname enum('Java', '.Net', 'SQL', 'Postman', 'Ruby'),
    primary key(categoryid)
);
/*Cau8*/
create table Question(
	questionid int not null auto_increment,
    content varchar(255),
    categoryid int,
    typeid  int,
    creatorid int,
    createdate timestamp default current_timestamp,
    primary key (questionid)
);

/*Cau9*/
create table Answer(
	answerid int not null auto_increment,
    content varchar(255),
    questionid int,
    iscorrect boolean,
    primary key(answerid)
);
/*Cau10*/
create table Exam(
	examid int not null auto_increment,
    codee int,
    title varchar(50),
    categoryid int,
    duration datetime,
    creatorid int,
    createdate timestamp default current_timestamp,
    primary key(examid)
);
/*Cau11*/
create table ExamQuestion(
	examid int not null,
    questionid int,
    primary key(examid)
)