-- Taken from https://wiki.ubuntu.com/DevelopmentCodeNames

drop table if exists ubuntu cascade;
create table ubuntu (
    id serial primary key,
    adjective text,
    animal text,
    version text
);

insert into ubuntu (adjective, animal, version) values ('Warty', 'Warthog', '4.10');
insert into ubuntu (adjective, animal, version) values ('Hoary', 'Hedgehog', '5.04');
insert into ubuntu (adjective, animal, version) values ('Breezy', 'Badger', '5.10');
insert into ubuntu (adjective, animal, version) values ('Dapper', 'Drake', '6.06');
insert into ubuntu (adjective, animal, version) values ('Edgy', 'Eft', '6.10');
insert into ubuntu (adjective, animal, version) values ('Feisty', 'Fawn', '7.04');
insert into ubuntu (adjective, animal, version) values ('Gutsy', 'Gibbon', '7.10');
insert into ubuntu (adjective, animal, version) values ('Hardy', 'Heron', '8.04');
insert into ubuntu (adjective, animal, version) values ('Intrepid', 'Ibex', '8.10');
insert into ubuntu (adjective, animal, version) values ('Jaunty', 'Jackalope', '9.04');
insert into ubuntu (adjective, animal, version) values ('Karmic', 'Koala', '9.10');
insert into ubuntu (adjective, animal, version) values ('Lucid', 'Lynx', '10.04');
insert into ubuntu (adjective, animal, version) values ('Maverick', 'Meerkat', '10.10');
insert into ubuntu (adjective, animal, version) values ('Natty', 'Narwhal', '11.04');
insert into ubuntu (adjective, animal, version) values ('Oneiric', 'Ocelot', '11.10');
insert into ubuntu (adjective, animal, version) values ('Precise', 'Pangolin', '12.04');
insert into ubuntu (adjective, animal, version) values ('Quantal', 'Quetzal', '12.10');
insert into ubuntu (adjective, animal, version) values ('Raring', 'Ringtail', '13.04');
