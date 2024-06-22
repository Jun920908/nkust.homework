SELECT AgeGroup, SUM(PatientCount) AS TotalPatients, SUM(DoctorCount) AS TotalDoctors
FROM (
    SELECT 
        CASE
            WHEN patient.Patient_age < 10 THEN '0-9'
            WHEN patient.Patient_age BETWEEN 10 AND 19 THEN '10-19'
            WHEN patient.Patient_age BETWEEN 20 AND 29 THEN '20-29'
            WHEN patient.Patient_age BETWEEN 30 AND 39 THEN '30-39'
            WHEN patient.Patient_age BETWEEN 40 AND 49 THEN '40-49'
            ELSE '50+'
        END AS AgeGroup,
        COUNT(*) AS PatientCount,
        0 AS DoctorCount
    FROM project.patient
    GROUP BY AgeGroup
    UNION 
    SELECT 
        CASE
            WHEN doctor.Doctor_age < 10 THEN '0-9'
            WHEN doctor.Doctor_age BETWEEN 10 AND 19 THEN '10-19'
            WHEN doctor.Doctor_age BETWEEN 20 AND 29 THEN '20-29'
            WHEN doctor.Doctor_age BETWEEN 30 AND 39 THEN '30-39'
            WHEN doctor.Doctor_age BETWEEN 40 AND 49 THEN '40-49'
            ELSE '50+'
        END AS AgeGroup,
        0 AS PatientCount,
        COUNT(*) AS DoctorCount
    FROM project.doctor
    GROUP BY AgeGroup
) AS AgeGroups
GROUP BY AgeGroup
ORDER BY AgeGroup;
