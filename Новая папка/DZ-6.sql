-- ------------ ���� 6.---------------------------- 
-- ------------ ������ 1.---------------------------- 
/* ����� ����� ��������� ������������ id=5. �� ���� ������ ����� ������������ ������� 
 * ��������, ������� ������ ���� ������� � ����� �������������.*/

use vk;

select u.id, u.firstname, u.lastname 
from users u, friend_requests fr, 
     -- ������ ������� maks � ������������ ��������� ��������� �� ������� ��, ��� ������������� ���������� ��������� ���������� � id = 5
	(select max(c), from_user_id as fui, to_user_id 
	from (                                                         
	    select count(*) as c, id, from_user_id, to_user_id 
	    from messages m 
	    group by from_user_id having to_user_id = 5 
	    order by c desc
	    ) as co 
	    ) as maks                       
where
( fr.initiator_user_id = 5 or fr.target_user_id = 5 ) 
and 
fr.status = 'approved'
and
u.id = maks.fui limit 1; 



/* ��� ������ ������ - �� ������
  
select 
u.id, u.firstname, u.lastname, 
if (
    ( fr.initiator_user_id = 5 or fr.target_user_id = 5 ) 
    and 
    fr.status = 'approved',      -- �������: ���� ������ ������ �������
    select 
    max(maks.c), m.from_user_id as fui, m.to_user_id 
    from (                                                         
        select count(*) as c, id, from_user_id, to_user_id 
        from 
        messages m 
        group by from_user_id 
        having 
        to_user_id = 5 
        order by c desc
        ) as maks,                       -- ��������, ���� ������ - ���� from_user_id � ����.����������� �������
    select 0 ) as best_friend                                                                   -- ��������, ���� ���� - 0                                                           
from 
users u, friend_requests fr 
where
u.id = best_friend.fui;   

-- �, ����� - ������ �� ���������� - ���-�� � �����������, ��������. ���� ����������, ���� ����������, ��� �� ���
*/

                                


-------------- ������ 2.----------------------------
/*���������� ����� ���������� ������, ������� �������� ������������ ������ 11 ���.*/


select 
    count(*) -- �������
from 
    likes l -- �����
WHERE 
    user_id in (  
    select user_id  -- ��� ������������
    FROM profiles p 
    WHERE (TIMESTAMPDIFF(YEAR, birthday, NOW()) < 11 -- ������ 11
	)); 



-------------- ������ 3.----------------------------
/*���������� ��� ������ �������� ������ (�����): ������� ��� �������.*/

select 
	
	max(c), -- ������� ������������ �������� ����� ������������ ���� ������ �� ������� �������/�������
	p2.gender  -- ������� ������������� ���� 
from 
	
(select 
    count(*) as c -- �������
from 
    likes l -- �����
WHERE 
    user_id in (  
    select user_id FROM profiles p WHERE gender = "f" ) -- ��� ������������ �������
union 
select 
    count(*) as c -- �������
from 
    likes l -- �����
WHERE 
    user_id in (  
    select user_id FROM profiles p WHERE gender = 'm' ) ) as count,-- ��� ������������ �������
profiles p2

    
    

