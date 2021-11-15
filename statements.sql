-- Write and execute three insert statements on a strong entity table based on the DDL from question 1. Reminder: Strong Entities have no foreign keys.
--
-- Write and execute an update statement on a row created in question 2
--
-- Write and execute a delete statement on an another row created in question 2
--
-- Write and execute an insert statement on a table with a foreign key that references the original table in question 2.
--
-- Write and execute a select statement for a row using its primary key as the selector.
--
-- Write and execute a select statement that incorporates both a where clause and an inner-join.


INSERT INTO profile(profileId, profileAboutMe, profileEmail, profileHash, profileName) VALUES ("0101100110011050", "I like giraffes!", "email@gmail.com", "245456789", "Jonathans Twin");

INSERT INTO status(statusId, statusValue, statusColor) VALUES ("101
01010101010", "10", "green");

UPDATE profile SET profileAboutMe = "I like giraffes AND tigers now" WHERE profileId = ("0101100110011050");

DELETE from profile WHERE profileId = ("0101100110011010")

INSERT INTO project(projectId, projectProfileId, projectDueDate, projectDescription, projectName) VALUES ("0000000000000001", "0101100110011050", "2021-11-14", "here is the description of the project", "Super classified project");

SELECT project.projectDueDate from project WHERE projectId = ("0000000000000001");

INSERT INTO ticket(ticketId, ticketProfileId, ticketProjectId, ticketDescription, ticketDueDate) VALUES ("0000000000000003", "0101100110011050", "0000000000000001", "do the dishes", "2021-11-14");

SELECT project.projectDescription FROM project
INNER JOIN  profile
WHERE project.projectId = profile.profileId;