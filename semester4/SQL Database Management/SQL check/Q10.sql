SELECT * FROM (
    SELECT 'patient' AS Category, patient.Patient_name AS Name, patient.Patient_sex AS Gender, patient.Patient_age AS Age, patient.Patient_blood AS BloodType
    FROM project.patient
    WHERE patient.Patient_age = (SELECT MIN(patient.Patient_age) FROM project.patient)
    Union
        SELECT 'doctor' AS Category, doctor.Doctor_name AS Name, doctor.Doctor_sex AS Gender, doctor.Doctor_age AS Age, NULL AS BloodType
    FROM project.doctor
    WHERE doctor.Doctor_age = (SELECT MIN(doctor.Doctor_age) FROM project.doctor)
) AS Combined
ORDER BY Age
LIMIT 1;

