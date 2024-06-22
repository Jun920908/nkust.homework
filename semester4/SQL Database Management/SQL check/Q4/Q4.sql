SELECT 
    patient.M_number,
    patient.Patient_name,
    patient.Patient_sex,
    patient.Patient_age,
    patient.Patient_blood,
    diagnose.Situation,
    diagnose.C_day,
    prescription.Body,
    prescription.Drug,
    prescription.Weight,
    prescription.Time,
    prescription.Drug_Day
FROM 
    project.patient 
Inner Join 
    project.diagnose ON diagnose.M_number=patient.M_number
Inner Join 
    project.prescription ON diagnose.Situation=prescription.Situation
WHERE 
   diagnose.C_day="星期三";
