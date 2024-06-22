SELECT 'Male' AS Gender, 
       (SELECT COUNT(*) FROM project.patient WHERE patient.Patient_sex = '男') AS PatientCount, 
       (SELECT COUNT(*) FROM project.doctor WHERE doctor.Doctor_sex = '男') AS DoctorCount
UNION 
SELECT 'Female' AS Gender, 
       (SELECT COUNT(*) FROM project.patient WHERE patient.Patient_sex = '女') AS PatientCount, 
       (SELECT COUNT(*) FROM project.doctor WHERE doctor.Doctor_sex = '女') AS DoctorCount;
       