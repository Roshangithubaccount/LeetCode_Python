# Write your MySQL query statement below
select v.customer_id , Count(*) AS count_no_trans
From Visits AS v
Left Join Transactions As t
on v.visit_id = t.visit_id
WHERE t.transaction_id Is NULL
Group BY v.customer_id;