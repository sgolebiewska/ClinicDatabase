USE PROJECT;
GO

CREATE VIEW APPOINTMENT_DETAILS AS
SELECT 
    A.APPOINTMENT_ID,
    P.NAME AS Patient_Name,
    P.SURNAME AS Patient_Surname,
    D.NAME AS Doctor_Name,
    D.ROOM_NUMBER,
    A.DATE_TIME AS Appointment_Date,
    IC.NAME AS Illness_Name
FROM 
    APPOINTMENT A
INNER JOIN 
    PATIENT P ON A.PATIENT_ID = P.PATIENT_ID
INNER JOIN 
    DOCTOR D ON A.DOCTOR_ID = D.DOCTOR_ID
LEFT JOIN 
    ILLNESS I ON A.APPOINTMENT_ID = I.APPOINTMENT_ID
LEFT JOIN 
    ILLNESS_CATALOG IC ON I.ILLNESS_ID = IC.ILLNESS_ID;

--VIEW 1/1
SELECT * FROM APPOINTMENT_DETAILS;

--assuming there is a shortage in blood or emergency and the staff if looking for people with particular blood type 
--JOIN 1/2
SELECT 
	p.PESEL, m.BLOOD_TYPE
FROM 
	PATIENT p
INNER JOIN 
	MEDICAL_HISTORY m ON p.PATIENT_ID = m.PATIENT_ID
WHERE m.BLOOD_TYPE = 'AB+';

--assuming we need to know all previous appointments and their conducted illnesses based on pesel(where 3), or all appointments from 1 day of each doctors(where 2 can also add to a specific doctor) 
--or all appointments and patient data info from 1 specific doctor(where 1)
--JOIN 2/2
SELECT 
    P.PESEL AS Patient_Pesel,
    D.NAME AS Doctor_Name,
	D.SURNAME AS Doctor_Surname,
    A.DATE_TIME AS Appointment_Date,
    IC.NAME AS Illness_Name
FROM 
    APPOINTMENT A
INNER JOIN 
    PATIENT P ON A.PATIENT_ID = P.PATIENT_ID
INNER JOIN 
    DOCTOR D ON A.DOCTOR_ID = D.DOCTOR_ID
LEFT JOIN 
    ILLNESS I ON A.APPOINTMENT_ID = I.APPOINTMENT_ID
LEFT JOIN 
    ILLNESS_CATALOG IC ON I.Illness_ID = IC.Illness_ID
--WHERE D.NAME='John' AND D.SURNAME='Smith';
--WHERE A.DATE_TIME >= '2023-01-10' AND A.DATE_TIME <= '2023-01-11';
--WHERE P.PESEL='23456789012';

--Calculate the average number of appointments per patient
--SUBQUERY 1/2
SELECT AVG(AppointmentCount) AS AvgAppointmentsPerPatient
FROM (
    SELECT COUNT(*) AS AppointmentCount
    FROM APPOINTMENT
    GROUP BY PATIENT_ID
) AS PatientAppointmentCounts;

--Find the patient with the highest number of appointments
--SUBQUERY 2/2
SELECT TOP 1 PATIENT_ID, AppointmentCount
FROM (
    SELECT PATIENT_ID, COUNT(*) AS AppointmentCount
    FROM APPOINTMENT
    GROUP BY PATIENT_ID
) AS PatientAppointmentCounts
ORDER BY AppointmentCount DESC;

--This query is applicable when assessing overall allergy severity per patient, aiding in personalized care for patients with multiple allergies.
--AGGREGATE FUNCTION 1/2
SELECT P.PATIENT_ID, AVG(A.SEVERITY) AS AvgSeverity
FROM PATIENT P
JOIN MEDICAL_HISTORY MH ON P.PATIENT_ID = MH.PATIENT_ID
JOIN ALLERGY A ON MH.PATIENT_ID = A.PATIENT_ID
GROUP BY P.PATIENT_ID;

--Total number of patients with each blood type
--AGGREGATE FUNCTION 2/2
SELECT BLOOD_TYPE, COUNT(*) AS TotalPatients
FROM MEDICAL_HISTORY
GROUP BY BLOOD_TYPE;

--This query is beneficial when assessing the total medication dosage required for treating different illnesses and how much of boxes of medication is needed.
--GROUPING 1
SELECT IC.NAME AS IllnessName, SUM(D.DOSAGE_DAILY * D.NUMBER_OF_DAYS) AS TotalDosage
FROM ILLNESS I
JOIN PRESCRIPTION P ON I.APPOINTMENT_ID = P.APPOINTMENT_ID
JOIN DOSE D ON P.PRESCRIPTION_NUMBER = D.PRESCRIPTION_NUMBER
JOIN ILLNESS_CATALOG IC ON I.ILLNESS_ID = IC.ILLNESS_ID
GROUP BY IC.NAME;

--This query helps analyze the workload distribution among doctors by showing which patients are seeing which doctors most frequently.
--GROUPING 2/2
SELECT P.NAME, P.SURNAME, D.NAME AS DoctorName, D.SURNAME AS DoctorSurname, COUNT(*) AS AppointmentCount
FROM PATIENT P
JOIN APPOINTMENT A ON P.PATIENT_ID = A.PATIENT_ID
JOIN DOCTOR D ON A.DOCTOR_ID = D.DOCTOR_ID
GROUP BY P.NAME, P.SURNAME, D.NAME, D.SURNAME;

--This query retrieves the medication ID, medication name, and the count of prescriptions for a particular illness
--ORDERING 1/1
SELECT R.MEDICATION_ID, MC.NAME AS Medication_Name, COUNT(R.MEDICATION_ID) AS Prescription_Count
FROM RECOMMENDATION R
JOIN MEDICATION_CATALOG MC ON R.MEDICATION_ID = MC.MEDICATION_ID
JOIN ILLNESS_CATALOG IC ON R.ILLNESS_ID = IC.ILLNESS_ID
WHERE IC.NAME = 'Cold' 
GROUP BY R.MEDICATION_ID, MC.NAME
ORDER BY Prescription_Count DESC;

