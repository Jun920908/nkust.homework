SELECT paitient.M_number, paitient, COUNT(看診.看診編號) AS 來訪最多次
FROM project.病人
INNER JOIN project.看診 ON  病人.病例號碼=看診.病例號碼
WHERE dayofweek(看診日期) = 2
GROUP BY 病人.病例號碼, 病人.病人姓名
ORDER BY 來訪最多次 DESC limit 1;