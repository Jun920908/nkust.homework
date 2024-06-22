SELECT 
    Situation AS Symtom,
    Body AS Body,
    Drug AS Drug,
    Weight AS Dosage,
    Time AS Frequecy,
    Drug_Day As Duration,
    CASE
        WHEN Weight LIKE '%克%' THEN '克'
        WHEN Weight LIKE '%滴%' THEN '滴'
        WHEN Weight LIKE '%顆%' THEN '顆'
        ELSE '無'
    END AS Unit
FROM 
    project.prescription
ORDER BY 
    CASE
        WHEN Weight LIKE '%克%' THEN 1
        WHEN Weight LIKE '%顆%' THEN 2
        WHEN Weight LIKE '%滴%' THEN 3
        ELSE 4
    END;    
