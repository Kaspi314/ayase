CREATE TABLE %%BOARD%%_users (
	user_id integer,
	name varchar,
	trip varchar,
	firstseen datetime,
	postcount integer
);

CREATE TABLE %%BOARD%% (
	doc_id integer,
	media_id integer,
	poster_ip varchar,
	num integer,
	subnum integer,
	thread_num integer,
	op integer,
	timestamp datetime,
	timestamp_expired datetime,
	preview_orig varchar,
	preview_w integer,
	preview_h integer,
	media_filename text,
	media_w integer,
	media_h integer,
	media_size integer,
	media_hash varchar,
	media_orig varchar,
	spoiler integer,
	deleted integer,
	capcode varchar,
	email varchar,
	name varchar,
	trip varchar,
	title varchar,
	delpass text,
	sticky integer,
	locked integer,
	poster_hash varchar,
	poster_country varchar,
	exif text
);

CREATE TABLE %%BOARD%%_images (
	media_id integer,
	media_hash varchar,
	media varchar,
	preview_op varchar,
	preview_reply varchar,
	total integer,
	banned integer
);

CREATE TABLE %%BOARD%%_daily (
	day integer,
	posts integer,
	images integer,
	sage integer,
	anons integer,
	trips integer,
	names integer
);

CREATE TABLE %%BOARD%%_threads (
	thread_num integer,
	time_op datetime,
	time_last datetime,
	time_bump datetime,
	time_ghost datetime,
	time_ghost_bump datetime,
	time_last_modified datetime,
	nreplies integer,
	nimages integer,
	sticky integer,
	locked integer
);

CREATE TABLE %%BOARD%%_deleted (
	doc_id integer,
	media_id integer,
	poster_ip varchar,
	num integer,
	subnum integer,
	thread_num integer,
	op integer,
	timestamp datetime,
	timestamp_expired datetime,
	preview_orig varchar,
	preview_w integer,
	preview_h integer,
	media_filename text,
	media_w integer,
	media_h integer,
	media_size integer,
	media_hash varchar,
	media_orig varchar,
	spoiler integer,
	deleted integer,
	capcode varchar,
	email varchar,
	name varchar,
	trip varchar,
	title varchar,
	delpass text,
	sticky integer,
	locked integer,
	poster_hash varchar,
	poster_country varchar,
	exif text
);

