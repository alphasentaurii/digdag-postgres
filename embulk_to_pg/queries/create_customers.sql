--create_customers.sql--
CREATE TABLE customers
    AS (SELECT c.user_id, c.first_name, c.last_name, c.job_title, p.user_agent AS operating_system 
        FROM pageviews_tmp, customers_tmp c 
        WHERE p.user_id = c.user_id 
        GROUP BY user_id);