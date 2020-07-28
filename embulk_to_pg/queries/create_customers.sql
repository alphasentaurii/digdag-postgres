--create_customers.sql--
CREATE TABLE customers
    AS (SELECT customers_tmp.user_id, customers_tmp.first_name, customers_tmp.last_name, customers_tmp.job_title, pageviews_tmp.user_agent AS operating_system 
        FROM customers_tmp, pageviews_tmp 
        WHERE pageviews_tmp.user_id = customers_tmp.user_id);
