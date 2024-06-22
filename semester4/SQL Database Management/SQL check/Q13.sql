WITH members AS (
    SELECT diagnose.Department, COUNT(DISTINCT diagnose.C_number) AS Quality
    FROM diagnose
    GROUP BY diagnose.Department
),
Most AS (
    SELECT members.Department
    FROM members
    WHERE Quality = (SELECT MAX(Quality) FROM members)
)
SELECT 
    doctor.Doctor_id AS doctor_id,
    doctor.Doctor_name,
    diagnose.Department AS Doctor_department
FROM 
    doctor
JOIN 
    diagnose ON doctor.Doctor_id = diagnose.Doctor_id
WHERE 
    diagnose.Department IN (SELECT Department FROM Most)
GROUP BY 
    doctor.Doctor_id, doctor.Doctor_name, diagnose.Department;  
    