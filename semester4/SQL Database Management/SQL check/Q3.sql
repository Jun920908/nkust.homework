SELECT patient.Patient_name, COUNT(*) as often
FROM project.patient
JOIN project.diagnose ON diagnose.M_number=patient.M_number
WHERE C_day="星期五"
GROUP BY patient.Patient_name
ORDER BY often DESC
LIMIT 1;
