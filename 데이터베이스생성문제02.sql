create user 'test_ysd'@'%' identified by '1234';

use mysql;
select * from user;

show grants for 'test_ysd'@'%';

grant all on ysd_db_test01.* to 'test_ysd'@'%';

show grants for 'test_ysd'@'%';

revoke all on ysd_db_test01.* from 'test_ysd'@'%';

show grants for 'test_ysd'@'%';