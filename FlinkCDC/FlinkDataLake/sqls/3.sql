--FlinkSQL
INSERT INTO all_users_sink select * from user_source;
SELECT * FROM all_users_sink;

