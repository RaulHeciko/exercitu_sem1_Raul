CREATE TABLE IF NOT EXISTS tara(
	fid serial primary key,
	nume varchar(50) unique not null,
	indicativ varchar(5) not null,
	suprafata decimal null,
);

CREATE TABLE IF NOT EXISTS judet(
	fid serial primary key,
	nume varchar(50) unique not null,
	indicativ char(2) not null,
	suprafata decimal null,
	tara_fid integer not null,
	primary key(fid),
	foreign key (tara_fid) references tara(fid)
);

CREATE TABLE IF NOT EXISTS uat(
	fid serial not null,
	nume varchar(50),
	suprafata decimal null,
	judet_fid integer not null,
	primary key(fid),
	foreign key (judet_fid) references judet(fid)
);