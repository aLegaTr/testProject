delete from user_roles;
delete from usr;

insert into usr(id, active, password, username) values
(1, true, '$2a$08$z2p8Yz2B8gEWvVyeORP1..fKmyWFd74WPtaNw3YkQ.zo50VsLh1hy', 'user'),
(2, true, '$2a$08$z2p8Yz2B8gEWvVyeORP1..fKmyWFd74WPtaNw3YkQ.zo50VsLh1hy', 'miller');

insert into user_role(user_id, roles) values
(1, 'ADMIN'),(1, 'User'),
(2, 'User');