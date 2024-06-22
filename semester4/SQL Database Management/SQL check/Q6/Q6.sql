SELECT DISTINCT patient.M_number,patient.Patient_name
FROM project.patient
WHERE patient.M_number NOT IN (
    SELECT DISTINCT diagnose.M_number
    FROM project.diagnose
    JOIN project.doctor  ON diagnose.Doctor_id=doctor.Doctor_id
    WHERE doctor.Doctor_name = '李佳潔'
);
