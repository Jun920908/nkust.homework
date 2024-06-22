SELECT 
    patient.M_number AS id,
    patient.Patient_name AS name,
    GROUP_CONCAT(Distinct
        CASE 
					WHEN diagnose.C_day = '星期日' THEN '星期日'
                    WHEN diagnose.C_day = '星期一' THEN '星期一'
                    WHEN diagnose.C_day = '星期二' THEN '星期二'
                    WHEN diagnose.C_day = '星期三' THEN '星期三'
                    WHEN diagnose.C_day = '星期四' THEN '星期四'
                    WHEN diagnose.C_day = '星期五' THEN '星期五'
                    WHEN diagnose.C_day = '星期六' THEN '星期六'
        END
        , ', ') AS Day
FROM 
    project.patient
LEFT JOIN 
    project.diagnose ON patient.M_number = diagnose.M_number
GROUP BY 
    patient.M_number desc