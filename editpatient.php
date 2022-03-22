<?php 
    require_once 'db/conn.php';
    //Get values from post operation
    if(isset($_POST['submit'])){
        //extract values from the $_POST array
        $Patient_Id = $_POST['Patient_Id'];
        $Fname= $_POST['Fname']; 
        $Lname= $_POST['Lname'];
        $Dateofbirth= $_POST['Dateofbirth'];
        $AddressLine_1= $_POST['AddressLine_1'];
        $AddressLine_2= $_POST['AddressLine_2'];
        $Mobileno= $_POST['Mobileno'];
        $Emailid= $_POST['Emailid'];
        $City= $_POST['City']; 
        $State= $_POST['State'];	
        $Country= $_POST['Country'];	
        $ZipCode= $_POST['ZipCode'];
        $Emergencycontactname= $_POST['Emergencycontactname'];
        $Emergencycontactnum= $_POST['Emergencycontactnum'];
        $Relationship= $_POST['Relationship'];



        //Call Crud function
        $result = $patient->editPatient($Patient_Id,$Fname, $Lname, $Dateofbirth, $Mobileno,$Emailid,$AddressLine_1, $AddressLine_2,$City,$State,$Country,$ZipCode,$Emergencycontactname,$Emergencycontactnum,$Relationship);
        // Redirect to index.php
        if($result){
            header("Location: view_patient_records.php");
        }
        else{
            include 'includes/errormessage.php';
        }
    }
    else{
        include 'includes/errormessage.php';
    }

    

?>