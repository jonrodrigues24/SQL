drop table if exists ticket;
drop table if exists project;
drop table if exists profile;
drop table if exists status;
drop table if exists ticketStatus;

create table profile(
    profileId binary(16) not null,
    profileAboutMe blob,
    profileEmail varchar(128),
    profileHash integer,
    profileName varchar(128),
    primary key (profileId)


);


create table project(
    projectId binary(16) not null,
    projectProfileId binary(16) not null,
    projectDueDate DATE,
    projectDescription blob,
    projectName varchar(128),
    foreign key(projectProfileId) references profile(profileId),
    primary key (projectId)
);

create table ticket(
    ticketId binary(16) not null,
    ticketProfileId binary(16) not null,
    ticketProjectId binary(16) not null,
    ticketDescription blob,
    ticketDueDate DATE,
    foreign key(ticketProjectId) references project(projectId),
    foreign key(ticketProfileId) references profile(profileId),
    primary key (ticketId)
);


create table status(
    statusId binary(16) not null,
    statusValue boolean,
    statusColor varchar(128),
    primary key (statusId)
);


create table ticketStatus(
    ticketStatusStatusId binary(16) not null,
    ticketStatusTicketId binary(16) not null,
    ticketStatusDate DATE,
    primary key (ticketStatusStatusId, ticketStatusTicketId)
);


