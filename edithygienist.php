<?php 
    require_once 'db/conn.php';
    //Get values from post operation
    if(isset($_POST['submit'])){
        //extract values from the $_POST array
        $Hygienist_Id = $_POST['Hygienist_Id'];
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
        $Certificateno= $_POST['Certificateno'];	
        $Specialization= $_POST['Specialization']; 



        //Call Crud function
        $result = $hygienist->editHygienist($Hygienist_Id,$Fname, $Lname, $Dateofbirth, $AddressLine_1, $AddressLine_2,$Mobileno,$Emailid,$City,$State,$Country,$ZipCode,$Certificateno,$Specialization);
        // Redirect to index.php
        if($result){
            header("Location: view_hygienist_records.php");
        }
        else{
            include 'includes/errormessage.php';
        }
    }
    else{
        include 'includes/errormessage.php';
    }

    

?>