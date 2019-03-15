SELECT * FROM ysddb.girl_group;

insert into girl_group (name, debut, hit_song_id)
values ('원더걸스', '2007-09-12', 101),
('소녀시대', '2009-06-03', 102),
('카라', '2009-07-30', 103),
('브라운아이드걸스', '2008-01-17', 104),
('다비치', '2009-02-27', 105),
('2NE1', '2009-07-08', 106),
('f(x)', '2011-04-20', 108),
('시크릿', '2011-01-06', 109),
('레인보우', '2010-08-12', 110),
('에프터 스쿨', '2009-11-25', null),
('포미닛', '2009-08-28', null);

INSERT INTO song (id, title, lyrics)
VALUES (101, 'Tell Me', 'tell me tell me tetetete tel me');
INSERT INTO song (title, lyrics) VALUES ('Gee', 'GEE GEE GEE GEE GEE BABY BABY');
INSERT INTO song (title, lyrics) VALUES ('미스터', '이름이 뭐야 미스터');
INSERT INTO song (title, lyrics) VALUES ('Abracadabra', '이러다 미쳐 내가 여리여리');
INSERT INTO song (title, lyrics) VALUES ('8282', 'Give me a call Baby baby');
INSERT INTO song (title, lyrics) VALUES ('기대해', '기대해');
INSERT INTO song (title, lyrics) VALUES ('I Don\'t car', '다른 여자들의 다리를');
INSERT INTO song (title, lyrics) VALUES ('Bad Girl Good Girl', '앞에선 한 마디 말도');
INSERT INTO song (title, lyrics) VALUES ('피노키오', '뉴예삐오');
INSERT INTO song (title, lyrics) VALUES ('별빛달빛', '너는 내 별빛 내 마음의 별빛');
INSERT INTO song (title, lyrics) VALUES ('A', 'A 워오우 워오우워 우우우');
INSERT INTO song (title, lyrics) VALUES ('나혼자', '나 혼자 밥을 먹고 나 혼자 영화 보고');
INSERT INTO song (title, lyrics) VALUES ('LUV', '설레이나요 ');
INSERT INTO song (title, lyrics) VALUES ('짧은치마', '짧은 치마를 입고 내가 길을 걸으면');
INSERT INTO song (title, lyrics) VALUES ('위아래', '위 아래 위위 아래');
INSERT INTO song (title, lyrics) VALUES ('Dumb Dumb' , '너 땜에 하루종일');

# left join 사용하기
select * from girl_group;
select * from song;

# inner join
SELECT 
    a.id, a.name, a.debut, b.title, b.lyrics
FROM
    girl_group AS a
        JOIN
    song AS b 
    ON a.hit_song_id = b.id;

# left join
SELECT 
    a.id, a.name, a.debut, b.title, b.lyrics
FROM
    girl_group AS a
        LEFT JOIN
    song AS b 
    ON a.hit_song_id = b.id;
   
# right join   
SELECT 
    a.id, a.name, a.debut, b.title, b.lyrics
FROM
    girl_group AS a
        right JOIN
    song AS b 
    ON a.hit_song_id = b.id;
    
# full outer join  mysql에서 지원안함
# left join + right join 합해서 full outer join
SELECT 
    a.id, a.name, a.debut, b.title, b.lyrics
FROM
    girl_group AS a
        left JOIN
    song AS b 
    ON a.hit_song_id = b.id
union
SELECT 
    a.id, a.name, a.debut, b.title, b.lyrics
FROM
    girl_group AS a
        right JOIN
    song AS b 
    ON a.hit_song_id = b.id;
    
    





