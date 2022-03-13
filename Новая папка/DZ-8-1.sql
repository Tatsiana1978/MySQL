------------------- Урок 8. --------------------------

********************* Задача 1.************************
/*Пусть задан некоторый пользователь id = 5. Из всех друзей этого пользователя найдите человека,
  который больше всех общался с выбранным пользователем (написал ему сообщений).*/

-------------------- Вариант 3---------------------

SELECT m.from_user_id FROM 
messages m 
JOIN
friend_requests fr 

ON m.from_user_id = fr.initiator_user_id OR  m.from_user_id = fr.target_user_id 
WHERE m.to_user_id = 5 AND fr.status = 'approved'
ORDER BY m.from_user_id DESC LIMIT 1;



-------------------- Вариант 2---------------------
SELECT reader.from_user_id FROM 
-- пользователи, которые писали пользователю id = 5
(SELECT from_user_id FROM messages m WHERE to_user_id = 5 ) AS reader 

JOIN -- объединяем reader  с друзьями
-- определяем друзей у id = 5
(SELECT initiator_user_id AS user_id  FROM friend_requests fr 
    WHERE target_user_id = 5 AND status = 'approved'
UNION  
SELECT target_user_id AS user_id FROM friend_requests fr 
    WHERE initiator_user_id = 5 AND status = 'approved') AS friends  

ON friends.user_id = reader.from_user_id 
ORDER BY reader.from_user_id DESC LIMIT 1;


-------------------- Вариант 1 (был изначально) ---------------------


SELECT comm.from_user_id, (SELECT concat(firstname, ' ', lastname)  FROM users u WHERE id = comm.from_user_id) AS fio
FROM 
    (SELECT initiator_user_id AS user_id  FROM friend_requests fr 
    WHERE ( initiator_user_id = 5 OR target_user_id = 5) AND status = 'approved'
    UNION
    SELECT target_user_id AS user_id FROM friend_requests fr 
    WHERE ( initiator_user_id = 5 OR target_user_id = 5) AND status = 'approved') AS  friend 
JOIN    
    ( SELECT from_user_id, count(*) AS c, to_user_id FROM messages m 
    GROUP BY from_user_id HAVING to_user_id = 5 ORDER BY c DESC LIMIT 1 ) AS comm
ON comm.from_user_id = friend.user_id;

    
    
   
    


********************* Задача 2.************************
/*Подсчитать общее количество лайков, которые получили пользователи младше 11 лет.*/

-------------------- Вариант 2---------------------
SELECT
    count(*) -- считаем медиа c лайками
FROM 
media m
JOIN
likes l 
JOIN profiles p 
ON  m.user_id = l.user_id AND l.user_id = p.user_id 
WHERE TIMESTAMPDIFF(YEAR, p.birthday, NOW()) < 11;



-------------------- Вариант 1 (был изначально) ---------------------

SELECT
    count(*) -- считаем медиа лайки
FROM  
    (SELECT m.user_id FROM media m INNER JOIN likes l ON  m.user_id = l.user_id) AS  ul -- выделяем пользователей, у которых медиа с лайками
    JOIN 
    (SELECT user_id FROM profiles p WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 11) AS u11 -- пользователи младше 11 лет
on ul.user_id = u11.user_id 



********************* Задача 3.************************
/* Определить кто больше поставил лайков (всего): мужчины или женщины.*/


-------------------- Вариант 2---------------------

SELECT count(*)  AS c, p.gender FROM 
profiles p
JOIN 
likes l
ON p.user_id = l.user_id
GROUP by p.gender ORDER BY c DESC LIMIT 1 -- сгруппируем по полу (gender), отсортируем по убыванию, и возьмем верхнее значение, как наибольшее




-------------------- Вариант 1 (был изначально) ---------------------

SELECT count(*)  AS c, l1.gender FROM 

-- объединяем таблицы профиля (пол) и likes и выводим пользователей, которые ставили лайки
(SELECT p.user_id, p.gender FROM profiles p JOIN likes l ON p.user_id = l.user_id) AS l1 

GROUP by l1.gender ORDER BY c DESC LIMIT 1 -- сгруппируем по полу (gender), отсортируем по убыванию, и возьмем верхнее значение, как наибольшее
