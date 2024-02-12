USE PROJECT;
GO

INSERT INTO PATIENT(PATIENT_ID, DATE_OF_BIRTH, PESEL, NAME, SURNAME)
VALUES 
('P1', '1990-05-15', '12345678901', 'John', 'Doe'),
('P2', '1985-09-23', '23456789012', 'Alice', 'Smith'),
('P3', '1978-12-10', '34567890123', 'Michael', 'Johnson'),
('P4', '1995-03-02', '45678901234', 'Emily', 'Brown'),
('P5', '1980-07-19', '56789012345', 'Olivia', 'Garcia'),
('P6', '1992-11-30', '67890123456', 'William', 'Martinez'),
('P7', '1987-04-18', '78901234567', 'Sophia', 'Lopez'),
('P8', '1998-08-25', '89012345678', 'James', 'Hernandez'),
('P9', '1975-06-05', '90123456789', 'Emma', 'Adams'),
('P10', '1996-01-28', '01234567890', 'Alexander', 'Clark'),
('P11', '1983-09-09', '98765432109', 'Mia', 'Wilson'),
('P12', '1976-11-21', '87654321098', 'Daniel', 'Miller'),
('P13', '1991-03-14', '76543210987', 'Ava', 'Thompson'),
('P14', '1979-05-06', '65432109876', 'Liam', 'Gonzalez'),
('P15', '1997-07-02', '54321098765', 'Charlotte', 'Perez'),
('P16', '1988-02-17', '43210987654', 'Harper', 'Nguyen'),
('P17', '1981-10-11', '32109876543', 'Ethan', 'Robinson'),
('P18', '1993-06-29', '21098765432', 'Amelia', 'Lee'),
('P19', '1984-08-08', '10987654321', 'Evelyn', 'Hall'),
('P20', '1999-04-04', '09876543210', 'Benjamin', 'Young');
GO

INSERT INTO MEDICAL_HISTORY (PATIENT_ID, BLOOD_TYPE, GENDER)
VALUES 
('P1', 'A+', 'M'),
('P2', 'B-', 'W'),
('P3', 'O-', 'M'),
('P4', 'AB+', 'W'),
('P5', 'A-', 'W'),
('P6', 'B+', 'M'),
('P7', 'O+', 'W'),
('P8', 'A+', 'M'),
('P9', 'B-', 'W'),
('P10', 'AB-', 'W'),
('P11', 'A+', 'M'),
('P12', 'O-', 'M'),
('P13', 'B+', 'W'),
('P14', 'AB+', 'M'),
('P15', 'A-', 'W'),
('P16', 'O+', 'M'),
('P17', 'A+', 'W'),
('P18', 'B-', 'M'),
('P19', 'AB-', 'W'),
('P20', 'A-', 'M');
GO

INSERT INTO SURGERY (SURGERY_ID, DATE, PATIENT_ID)
VALUES 
('S1', '2023-01-10', 'P1'),
('S2', '2023-02-15', 'P2'),
('S3', '2023-03-20', 'P2'),
('S4', '2023-04-25', 'P3'),
('S5', '2023-05-30', 'P5'),
('S6', '2023-06-05', 'P19'),
('S7', '2023-07-15', 'P9'),
('S8', '2023-08-20', 'P4'),
('S9', '2023-09-22', 'P6'),
('S10', '2023-10-25', 'P7'),
('S11', '2023-11-30', 'P8'),
('S12', '2023-12-05', 'P10'),
('S13', '2023-01-06', 'P11'),
('S14', '2023-02-07', 'P12'),
('S15', '2023-03-08', 'P13'),
('S16', '2023-04-10', 'P14'),
('S17', '2023-05-12', 'P15'),
('S18', '2023-06-15', 'P16'),
('S19', '2023-07-17', 'P17'),
('S20', '2023-08-20', 'P18');
GO

INSERT INTO ALLERGY (ALLERGY_ID, SEVERITY, PATIENT_ID)
VALUES 
('A1', 3, 'P1'),
('A2', 2, 'P2'),
('A3', 4, 'P2'),
('A4', 1, 'P3'),
('A5', 5, 'P5'),
('A6', 2, 'P6'),
('A7', 4, 'P2'),
('A8', 1, 'P3'),
('A9', 3, 'P2'),
('A10', 5, 'P10'),
('A11', 2, 'P11'),
('A12', 4, 'P12'),
('A13', 1, 'P13'),
('A14', 3, 'P11'),
('A15', 5, 'P15'),
('A16', 2, 'P11'),
('A17', 4, 'P17'),
('A18', 1, 'P18'),
('A19', 3, 'P13'),
('A20', 5, 'P20');
GO

INSERT INTO DOCTOR (DOCTOR_ID, NAME, SURNAME, ROOM_NUMBER)
VALUES 
('D1', 'John', 'Smith', 1),
('D2', 'Emily', 'Johnson', 2),
('D3', 'Michael', 'Brown', 3),
('D4', 'Sarah', 'Williams', 4),
('D5', 'David', 'Jones', 5),
('D6', 'Emma', 'Miller', 6),
('D7', 'Daniel', 'Davis', 7),
('D8', 'Olivia', 'Garcia', 8),
('D9', 'James', 'Martinez', 9),
('D10', 'Sophia', 'Lopez', 10),
('D11', 'William', 'Harris', 11),
('D12', 'Ava', 'Clark', 12),
('D13', 'Benjamin', 'Lee', 13),
('D14', 'Mia', 'Lewis', 14),
('D15', 'Elijah', 'Walker', 15),
('D16', 'Charlotte', 'Hall', 16),
('D17', 'Logan', 'Young', 17),
('D18', 'Harper', 'King', 18),
('D19', 'Amelia', 'Wright', 19),
('D20', 'Ethan', 'Turner', 20);
GO

INSERT INTO TEST_CATALOG (TEST_ID, NAME, RANGE_OF_RESULT)
VALUES 
('T1', 'Blood Test', '0-100'),
('T2', 'MRI Scan', 'None'),
('T3', 'X-Ray', 'Images'),
('T4', 'Ultrasound', 'Detailed'),
('T5', 'CT Scan', '3D Imaging'),
('T6', 'EKG', 'Heart Rhythm'),
('T7', 'Endoscopy', 'Internal Examination'),
('T8', 'Colonoscopy', 'Colon Examination'),
('T9', 'Biopsy', 'Tissue Sample'),
('T10', 'Allergy Test', 'Allergen Sensitivity'),
('T11', 'Pregnancy Test', 'Hormone Levels'),
('T12', 'Genetic Testing', 'DNA Analysis'),
('T13', 'Urine Test', 'Metabolic Check'),
('T14', 'Fecal Test', 'Digestive Health'),
('T15', 'Eye Examination', 'Visual Check'),
('T16', 'Dental X-Ray', 'Dental Imaging'),
('T17', 'Bone Density Test', 'Osteoporosis Check'),
('T18', 'Liver Function Test', 'Liver Health'),
('T19', 'Thyroid Test', 'Thyroid Function'),
('T20', 'Cancer Screening', 'Detecting Cancer');
GO

INSERT INTO NURSE (NURSE_ID, NAME, SURNAME)
VALUES 
('N1', 'Emma', 'Johnson'),
('N2', 'William', 'Anderson'),
('N3', 'Olivia', 'Garcia'),
('N4', 'Daniel', 'Martinez'),
('N5', 'Sophia', 'Lopez'),
('N6', 'Logan', 'Wilson'),
('N7', 'Ava', 'Harris'),
('N8', 'Benjamin', 'Clark'),
('N9', 'Mia', 'Lewis'),
('N10', 'Elijah', 'Lee'),
('N11', 'Charlotte', 'Turner'),
('N12', 'Harper', 'Young'),
('N13', 'Amelia', 'King'),
('N14', 'Ethan', 'Wright'),
('N15', 'James', 'Miller'),
('N16', 'Emily', 'Hall'),
('N17', 'Michael', 'Walker'),
('N18', 'Sarah', 'Smith'),
('N19', 'David', 'Davis'),
('N20', 'Olivia', 'Brown');
GO

INSERT INTO MEDICAL_TEST (TEST_ID, DATE_TIME, DOCTOR_NOTES, PATIENT_ID, NURSE_ID, DOCTOR_ID)
VALUES 
('T1', '2023-01-10 08:00:00', 'Patient complained of headaches.', 'P1', 'N1', 'D1'),
('T2', '2023-02-15 10:30:00', 'Routine checkup.', 'P2', 'N2', 'D2'),
('T3', '2023-03-20 09:45:00', 'Follow-up on previous surgery.', 'P3', 'N3', 'D3'),
('T4', '2023-04-05 11:15:00', 'Monitoring heart condition.', 'P2', 'N4', 'D4'),
('T5', '2023-05-18 13:00:00', 'Pregnancy confirmation.', 'P2', 'N5', 'D5'),
('T6', '2023-06-22 14:45:00', 'Allergy assessment.', 'P6', 'N6', 'D6'),
('T7', '2023-07-10 16:20:00', 'Bone density check.', 'P7', 'N7', 'D7'),
('T8', '2023-08-12 08:30:00', 'Liver function test.', 'P8', 'N8', 'D8'),
('T9', '2023-09-25 10:00:00', 'Thyroid function evaluation.', 'P9', 'N9', 'D9'),
('T10', '2023-10-20 11:45:00', 'Cancer screening.', 'P10', 'N10', 'D10'),
('T11', '2023-11-08 13:20:00', 'Genetic testing.', 'P11', 'N11', 'D11'),
('T12', '2023-12-14 14:55:00', 'Urine analysis.', 'P12', 'N12', 'D12'),
('T13', '2024-01-05 08:10:00', DEFAULT , 'P13', 'N13', 'D5'),
('T14', '2023-02-22 09:40:00', 'Dental X-ray.', 'P14', 'N14', 'D14'),
('T15', '2023-03-18 11:25:00', 'Endoscopy procedure.', 'P15', 'N15', 'D15'),
('T16', '2023-04-30 13:30:00', 'Colonoscopy scheduled.', 'P16', 'N16', 'D16'),
('T17', '2023-05-29 15:15:00', 'Ultrasound for diagnosis.', 'P17', 'N17', 'D17'),
('T18', '2023-06-09 08:40:00', 'Biopsy planned.', 'P18', 'N18', 'D18'),
('T19', '2023-07-14 10:50:00', 'MRI scan appointment.', 'P19', 'N19', 'D19'),
('T20', '2023-08-27 12:00:00', 'X-ray for diagnosis.', 'P20', 'N20', 'D5');
GO

INSERT INTO APPOINTMENT (APPOINTMENT_ID, DOCTOR_ID, PATIENT_ID, DATE_TIME)
VALUES 
('A1', 'D1', 'P1', '2023-01-10 08:00:00'),
('A2', 'D2', 'P2', '2023-02-15 10:30:00'),
('A3', 'D3', 'P2', '2023-03-20 09:45:00'),
('A4', 'D4', 'P2', '2023-04-05 11:15:00'),
('A5', 'D5', 'P2', '2023-05-18 13:00:00'),
('A6', 'D5', 'P6', '2023-06-22 14:45:00'),
('A7', 'D5', 'P7', '2023-07-10 16:20:00'),
('A8', 'D5', 'P8', '2023-08-12 08:30:00'),
('A9', 'D9', 'P9', '2023-09-25 10:00:00'),
('A10', 'D10', 'P10', '2023-10-20 11:45:00'),
('A11', 'D11', 'P11', '2023-11-08 13:20:00'),
('A12', 'D12', 'P12', '2023-12-14 14:55:00'),
('A13', 'D13', 'P13', '2024-01-05 08:10:00'),
('A14', 'D14', 'P14', '2024-02-22 09:40:00'),
('A15', 'D15', 'P11', '2024-03-18 11:25:00'),
('A16', 'D16', 'P11', '2024-04-30 13:30:00'),
('A17', 'D17', 'P17', '2024-05-29 15:15:00'),
('A18', 'D18', 'P18', '2024-06-09 08:40:00'),
('A19', 'D15', 'P19', '2024-07-14 10:50:00'),
('A20', 'D20', 'P20', '2024-08-27 12:00:00');
GO

INSERT INTO ILLNESS_CATALOG (ILLNESS_ID, NAME, SYMPTOMS, RECOMMENDED_TREATMENT)
VALUES 
('IC1', 'Cold', 'Sneezing, Cough, Fever', 'Rest, Fluids, OTC Medicines'),
('IC2', 'Fever', 'High temperature, Fatigue', 'Rest, Hydration, Acetaminophen'),
('IC3', 'Headache', 'Throbbing pain in head', 'Pain relievers, Rest'),
('IC4', 'Stomach Flu', 'Nausea, Vomiting, Diarrhea', 'Hydration, Rest, BRAT diet'),
('IC5', 'Allergic Rhinitis', 'Sneezing, Runny nose', 'Antihistamines, Nasal spray'),
('IC6', 'Asthma', 'Shortness of breath, Wheezing', 'Bronchodilators, Steroids'),
('IC7', 'Common Cold', 'Runny nose, Sore throat', 'Rest, Hydration, Warm fluids'),
('IC8', 'Influenza', 'Fever, Body aches, Fatigue', 'Bed rest, Antiviral medications'),
('IC9', 'Migraine', 'Pulsating headache, Sensitivity to light', 'Painkillers, Dark room, Relaxation'),
('IC10', 'Gastroenteritis', 'Abdominal pain, Dehydration', 'Fluid replacement, BRAT diet'),
('IC11', 'Pneumonia', 'Chest pain, Difficulty breathing', 'Antibiotics, Oxygen therapy'),
('IC12', 'Urinary Tract Infection', 'Burning sensation, Frequent urination', 'Antibiotics, Increased fluid intake'),
('IC13', 'Bronchitis', 'Persistent cough, Chest discomfort', 'Rest, Hydration, Cough syrup'),
('IC14', 'Sinusitis', 'Facial pain, Nasal congestion', 'Nasal irrigation, Decongestants'),
('IC15', 'Conjunctivitis', 'Redness in the eyes, Itching', 'Eye drops, Cold compress'),
('IC16', 'Hypertension', 'High blood pressure, Headaches', 'Medication, Lifestyle changes'),
('IC17', 'Diabetes', 'Increased thirst, Fatigue', 'Insulin, Diet control'),
('IC18', 'Anxiety', 'Excessive worry, Restlessness', 'Therapy, Relaxation techniques'),
('IC19', 'Depression', 'Persistent sadness, Loss of interest', 'Therapy, Antidepressants'),
('IC20', 'Osteoarthritis', 'Joint pain, Stiffness', 'Pain relievers, Exercise, Physical therapy');
GO

INSERT INTO ILLNESS (ILLNESS_ID, DATE, TREATMENT_NOTE, APPOINTMENT_ID)
VALUES 
('IC1', '2023-01-11', 'Prescribed OTC Medicines','A1'),
('IC2', '2023-02-16', 'Recommended rest and hydration','A2'),
('IC3', '2023-03-21', 'Advised pain relievers','A3'),
('IC4', '2023-04-06', 'Suggested BRAT diet','A5'),
('IC5', '2023-05-19', 'Recommended antihistamines','A8'),
('IC6', '2023-06-23', 'Prescribed bronchodilators','A10'),
('IC7', '2023-04-21', 'Prescribed hydration and rest', 'A12'),
('IC8', '2023-05-10', 'Antiviral medications recommended', 'A15'),
('IC9', '2023-03-14', 'Advised painkillers and relaxation', 'A18'),
('IC10', '2023-08-11', 'BRAT diet suggested for recovery', 'A1'),
('IC11', '2023-12-06', 'Prescribed antibiotics and rest', 'A4'),
('IC12', '2023-12-11', 'Antibiotics and increased fluid intake advised', 'A2'),
('IC13', '2023-12-10', 'Rest, hydration, and cough syrup recommended', 'A3'),
('IC14', '2023-12-01', 'Nasal irrigation and decongestants suggested', 'A3'),
('IC15', '2023-12-16', 'Prescribed eye drops and cold compress', 'A6'),
('IC16', '2023-02-16', 'Medication and lifestyle changes advised', 'A9'),
('IC17', '2023-11-16', 'Insulin and diet control recommended', 'A2'),
('IC18', '2023-09-07', 'Therapy and relaxation techniques advised', 'A5'),
('IC19', '2023-01-16', 'Therapy and antidepressants recommended', 'A8'),
('IC20', '2023-07-20', 'Prescribed pain relievers and physical therapy', 'A1');
GO

INSERT INTO LONG_TERM_ILLNESS (ILLNESS_ID, DATE, NOTES, PATIENT_ID)
VALUES 
('IC1', '2010-05-15', 'Requires regular insulin shots','P1'),
('IC2', '2005-10-22', 'Medication and lifestyle changes','P3'),
('IC3', '2012-03-08', 'Physical therapy and pain relievers','P12'),
('IC4', '2009-07-14', 'Regular use of inhalers and steroids','P20'),
('IC5', '2015-11-30', 'Medication to regulate hormone levels','P12'),
('IC6', '2018-09-01', 'Physiotherapy and pain management', 'P5'),
('IC7', '2020-04-18', 'Prescribed antibiotics and rest', 'P8'),
('IC8', '2019-12-10', 'Advised painkillers and relaxation', 'P10'),
('IC9', '2017-06-25', 'BRAT diet suggested for recovery', 'P15'),
('IC10', '2016-03-14', 'Rest, hydration, and cough syrup recommended', 'P2'),
('IC11', '2019-08-20', 'Nasal irrigation and decongestants suggested', 'P5'),
('IC12', '2014-01-05', 'Prescribed eye drops and cold compress', 'P8'),
('IC13', '2013-10-29', 'Medication and lifestyle changes advised', 'P1'),
('IC14', '2018-07-20', 'Insulin and diet control recommended', 'P4'),
('IC15', '2016-11-12', 'Therapy and relaxation techniques advised', 'P7'),
('IC16', '2017-09-05', 'Therapy and antidepressants recommended', 'P4'),
('IC17', '2015-04-08', 'Prescribed pain relievers and physical therapy', 'P3'),
('IC18', '2011-08-25', 'Hydration and rest', 'P4'),
('IC19', '2019-01-30', 'Antibiotics and pain management', 'P9'),
('IC20', '2022-10-11', 'Physical therapy and medication', 'P2');
GO

INSERT INTO MEDICATION_CATALOG (MEDICATION_ID, NAME, COMPANY)
VALUES 
('MC1', 'Tylenol', 'Johnson & Johnson'),
('MC2', 'Advil', 'Pfizer'),
('MC3', 'Claritin', 'Bayer'),
('MC4', 'Pepto-Bismol', 'Procter & Gamble'),
('MC5', 'Benadryl', 'GSK'),
('MC6', 'Albuterol', 'AstraZeneca'),
('MC7', 'Zyrtec', 'Johnson & Johnson'),
('MC8', 'Robitussin', 'Pfizer'),
('MC9', 'NyQuil', 'Procter & Gamble'),
('MC10', 'Aspirin', 'Bayer'),
('MC11', 'Motrin', 'Johnson & Johnson'),
('MC12', 'Zantac', 'GSK'),
('MC13', 'Aleve', 'Bayer'),
('MC14', 'Mucinex', 'Reckitt Benckiser'),
('MC15', 'Voltaren', 'Novartis'),
('MC16', 'Excedrin', 'GSK'),
('MC17', 'Crestor', 'AstraZeneca'),
('MC18', 'Lipitor', 'Pfizer'),
('MC19', 'Xanax', 'Pfizer'),
('MC20', 'Prozac', 'Eli Lilly and Company');
GO

INSERT INTO PRESCRIPTION (PRESCRIPTION_NUMBER, DATE_START, DATE_END, PERIODICITY, APPOINTMENT_ID)
VALUES 
('PR1', '2023-01-11', '2023-02-11', 1, 'A1'),
('PR2', '2023-02-16', '2023-03-16', 2, 'A2'),
('PR3', '2023-03-21', '2023-04-21', 2, 'A3'),
('PR4', '2023-04-06', '2023-05-06', 3, 'A4'),
('PR5', '2023-05-19', '2023-06-19', 1, 'A5'),
('PR6', '2023-06-23', '2023-07-23', 1, 'A6'),
('PR7', '2023-07-11', '2023-08-11', 3, 'A7'),
('PR8', '2023-08-13', '2023-09-13', 1, 'A8'),
('PR9', '2023-09-26', '2023-10-26', 1, 'A9'),
('PR10', '2023-10-21', '2023-11-21', 2, 'A10'),
('PR11', '2023-11-09', '2023-12-09', 1, 'A11'),
('PR12', '2023-12-15', '2024-01-05', 1, 'A12'),
('PR13', '2021-01-06', '2023-01-06', 1, 'A13'),
('PR14', '2022-02-23', '2023-01-03', 2, 'A14'),
('PR15', '2022-03-19', '2023-04-09', 12, 'A15'),
('PR16', '2021-04-30', '2023-05-30', 2, 'A16'),
('PR17', '2022-05-30', '2023-06-30', 2, 'A17'),
('PR18', '2022-06-10', '2023-07-10', 3, 'A18'),
('PR19', '2023-07-15', '2023-08-15', 1, 'A19'),
('PR20', '2021-08-28', '2023-09-28', 2, 'A20');
GO

INSERT INTO DOSE (PRESCRIPTION_NUMBER, MEDICATION_ID, NUMBER_OF_DAYS, DOSAGE_DAILY)
VALUES 
('PR1', 'MC1', 10, 2),
('PR2', 'MC2', 15, 1),
('PR3', 'MC3', 20, 1),
('PR4', 'MC4', 12, 2),
('PR5', 'MC5', 18, 1),
('PR6', 'MC6', 22, 2),
('PR7', 'MC19', 8, 1),
('PR8', 'MC2', 11, 2),
('PR9', 'MC3', 14, 1),
('PR10', 'MC4', 16, 2),
('PR11', 'MC5', 20, 1),
('PR12', 'MC7', 10, 2),
('PR13', 'MC8', 15, 1),
('PR14', 'MC9', 18, 2),
('PR15', 'MC10', 22, 1),
('PR16', 'MC14', 10, 2),
('PR17', 'MC15', 12, 1),
('PR18', 'MC16', 14, 2),
('PR19', 'MC11', 16, 1),
('PR20', 'MC20', 20, 2);
GO
INSERT INTO RECOMMENDATION (ILLNESS_ID, MEDICATION_ID)
VALUES 
('IC1', 'MC1'),
('IC2', 'MC2'),
('IC3', 'MC3'),
('IC4', 'MC4'),
('IC5', 'MC5'),
('IC6', 'MC6'),
('IC7', 'MC6'),
('IC8', 'MC8'),
('IC9', 'MC9'),
('IC10', 'MC10'),
('IC11', 'MC11'),
('IC12', 'MC12'),
('IC13', 'MC13'),
('IC14', 'MC14'),
('IC15', 'MC15'),
('IC16', 'MC16'),
('IC17', 'MC17'),
('IC18', 'MC18'),
('IC19', 'MC19'),
('IC20', 'MC20');
GO
INSERT INTO IS_ALLERGIC_TO (ALLERGY_ID, PATIENT_ID)
VALUES 
('A1', 'P1'),
('A2', 'P2'),
('A3', 'P3'),
('A4', 'P4'),
('A5', 'P5'),
('A6', 'P6'),
('A7', 'P7'),
('A8', 'P8'),
('A9', 'P9'),
('A10', 'P10'),
('A11', 'P11'),
('A12', 'P12'),
('A13', 'P13'),
('A14', 'P14'),
('A15', 'P15'),
('A16', 'P16'),
('A17', 'P17'),
('A18', 'P18'),
('A19', 'P19'),
('A20', 'P20');
GO