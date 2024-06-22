SELECT DISTINCT doctor.Doctor_id,doctor.Doctor_name
FROM project.doctor 
WHERE doctor.Doctor_id NOT IN (
    SELECT DISTINCT diagnose.Doctor_id
    FROM project.diagnose
    JOIN project.patient  ON diagnose.M_number=patient.M_number
    WHERE patient.Patient_name = '王明宏'
);
