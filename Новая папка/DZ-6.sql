-- ------------ Урок 6.---------------------------- 
-- ------------ Задача 1.---------------------------- 
/* Пусть задан некоторый пользователь id=5. Из всех друзей этого пользователя найдите 
 * человека, который больше всех общался с нашим пользователем.*/

use vk;

select u.id, u.firstname, u.lastname 
from users u, friend_requests fr, 
     -- делаем таблицу maks с максимальным значением сообщений из таблицы со, где отсортировано количество сообщений получателю с id = 5
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



/* ЭТО ВТОРОЙ СПОСОБ - не удался
  
select 
u.id, u.firstname, u.lastname, 
if (
    ( fr.initiator_user_id = 5 or fr.target_user_id = 5 ) 
    and 
    fr.status = 'approved',      -- условие: если статус дружбы одобрен
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
        ) as maks,                       -- значение, если истина - надо from_user_id с макс.количеством общений
    select 0 ) as best_friend                                                                   -- значение, если ложь - 0                                                           
from 
users u, friend_requests fr 
where
u.id = best_friend.fui;   

-- и, вуаля - ничего не получилось - что-то с синтаксисом, возможно. Буду благодарна, если подскажете, что не так
*/

                                


-------------- Задача 2.----------------------------
/*Подсчитать общее количество лайков, которые получили пользователи младше 11 лет.*/


select 
    count(*) -- считаем
from 
    likes l -- лайки
WHERE 
    user_id in (  
    select user_id  -- где пользователь
    FROM profiles p 
    WHERE (TIMESTAMPDIFF(YEAR, birthday, NOW()) < 11 -- младше 11
	)); 



-------------- Задача 3.----------------------------
/*Определить кто больше поставил лайков (всего): мужчины или женщины.*/

select 
	
	max(c), -- считаем максимальное значение среди подсчитанных ниже лайков по группам мужчины/женщины
	p2.gender  -- выводим идентификатор пола 
from 
	
(select 
    count(*) as c -- считаем
from 
    likes l -- лайки
WHERE 
    user_id in (  
    select user_id FROM profiles p WHERE gender = "f" ) -- где пользователь женщина
union 
select 
    count(*) as c -- считаем
from 
    likes l -- лайки
WHERE 
    user_id in (  
    select user_id FROM profiles p WHERE gender = 'm' ) ) as count,-- где пользователь мужчина
profiles p2

    
    

