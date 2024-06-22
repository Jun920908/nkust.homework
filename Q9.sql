SELECT 
    CASE 
        WHEN diagnose.C_day = '星期一' THEN "星期一"
        WHEN diagnose.C_day = '星期二' THEN '星期二'
        WHEN diagnose.C_day = '星期三' THEN '星期三'
        WHEN diagnose.C_day = '星期四' THEN '星期四'
        WHEN diagnose.C_day = '星期五' THEN '星期五'
        WHEN diagnose.C_day = '星期六' THEN '星期六'
    END AS Day,
    COUNT(*) AS Number
FROM diagnose
WHERE diagnose.C_day IN ("星期一", "星期二", "星期三", "星期四", "星期五", "星期六")
GROUP BY Day
ORDER BY FIELD(Day, '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'); 
