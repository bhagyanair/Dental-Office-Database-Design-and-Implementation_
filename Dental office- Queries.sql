--SQL Queries against Database:
--1) Appointments for a dr. on some date?
SELECT fname,
       appointments.starttime,
       appointments.endtime
FROM   dentist
       JOIN appointments
         ON appointments.dentist_id = dentist.dentist_id
            AND appointments.appointment_date = '2020-11-11'; 

--2) What is the schedule for a dentist today.
--Ans.
SELECT fname
FROM   dentist
       JOIN dentistavailability
         ON dentist.dentist_id = dentistavailability.dentist_id
WHERE  isdentistavailable = true
       AND dentistavailability.date = Curdate(); 
--3) What prescriptions were written last month.
--Ans.
SELECT *
FROM   patientprescription
       JOIN patientvisit
         ON patientvisit.patientvisit_id = patientprescription.patientvisit_id
WHERE  Month(patientvisit.visitdate) = Month(Now()) - 1; 

--4) Display the information from a patient intake form.
--Ans.
SELECT *
FROM   patient
       JOIN patientinsuranceinformation
         ON patientinsuranceinformation.patient_id = patient.patient_id
       JOIN patientallergyhistory
         ON patientallergyhistory.patient_id = patient.patient_id
       JOIN patientdisorderhistory
         ON patientdisorderhistory.patient_id = patient.patient_id
       JOIN patientdentalhistory
         ON patientdentalhistory.patient_id = patient.patient_id; 

--5) What hours are a room open today.
--Ans.
SELECT date,
       starttime,
       endtime,
       room.room_name
FROM   room
       JOIN roomavailability
         ON roomavailability.room_id = room.room_id; 

--6) What hours are a dentist available today.
--Ans.
SELECT date,
       starttime,
       endtime,
       dentist.fname
FROM   dentist
       JOIN dentistavailability
         ON dentist.dentist_id = dentistavailability.dentist_id; 
