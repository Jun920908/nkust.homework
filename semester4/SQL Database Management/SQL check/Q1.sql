SELECT doctor.Doctor_id, doctor.Doctor_name, COUNT(C_number) AS Mosttime
FROM project.doctor
Inner JOIN project.diagnose ON doctor.Doctor_id=diagnose.Doctor_id
GROUP BY doctor.Doctor_id,doctor.Doctor_name
ORDER BY Mosttime DESC
Limit 1;
