delete from message;

insert into message(id, text, tag, user_id) values
(1, '12', '1', 1),
(2, '12', '13', 1),
(3, '232', '12', 1),
(4, '13', '13', 1);

alter sequence hibernate_sequence restart with 10;