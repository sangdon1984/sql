desc tb_ysd;

insert into tb_ysd (UserID, UserPW, UserNM, UserEmail, UserAddr, RegDate)
value ('hgd', '1q2w3e', '홍길동', 'hgd@com', '서울', '2019-01-03');

insert into tb_ysd (UserID, UserPW, UserNM, UserEmail, UserAddr, RegDate)
value ('dr', '1q2w3e', '둘리', 'dr@com', '인천', '2019-01-25');

insert into tb_ysd (UserID, UserPW, UserNM, UserEmail, UserAddr, RegDate)
value ('prr', '1q2w3e', '뽀로로', 'prr@com', '대전', '2019-03-06');

select * from tb_ysd;

start transaction;
select * from tb_ysd;
savepoint a;

delete from tb_ysd where UserID = 'dr';

update tb_ysd set UserAddr = '부산' where UserID = 'hgd';

select * from tb_ysd;

rollback;

select * from tb_ysd;