    
<?php
    $title = 'Edit Patient Records'; 

    require_once 'includes/header.php'; 
    require_once 'includes/auth_check.php';
    require_once 'db/conn.php'; 

    // $results = $crud->getSpecialties();

    if(!isset($_GET['id']))
    {
        //echo 'error';
        include 'includes/errormessage.php';
        header("Location: view_patient_records.php");
    }
    else{
        $id = $_GET['id'];
        $patient = $crud->getPatientDetails($id);
    

    
?>

    <h1 class="text-center">Edit Patient Records</h1>

    <form method="post" action="editPatient.php">
        <input type="hidden" name="Patient_Id" value="<?php echo $patient['Patient_Id'] ?>" />
        <div class="form-group">
            <label for="Fname">First Name</label>
            <input type="text" class="form-control" value="<?php echo $patient['Fname'] ?>" id="Fname" name="Fname">
        </div>
        <div class="form-group">
            <label for="Lname">Last Name</label>
            <input type="text" class="form-control" value="<?php echo $patient['Lname'] ?>" id="Lname" name="Lname">
        </div>
        <div class="form-group">
            <label for="Dateofbirth">Date Of Birth</label>
            <input type="text" class="form-control" value="<?php echo $patient['Dateofbirth'] ?>" id="Dateofbirth" name="Dateofbirth">
        </div>
        <div class="form-group">
            <label for="Emailid">Email address</label>
            <input type="email" class="form-control" id="Emailid" value="<?php echo $patient['Emailid'] ?>" name="Emailid" aria-describedby="emailHelp" >
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="Mobileno">Contact Number</label>
            <input type="text" class="form-control" id="Mobileno" value="<?php echo $patient['Mobileno'] ?>" name="Mobileno" aria-describedby="MobilenoHelp" >
            <small id="MobilenoHelp" class="form-text text-muted">We'll never share your number with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="AddressLine_1">Address Line 1</label>
            <input type="text" class="form-control" value="<?php echo $patient['AddressLine_1'] ?>"  id="AddressLine_1" name="AddressLine_1">
        </div>
        <div class="form-group">
            <label for="AddressLine_2">Address Line 2</label>
            <input type="text" class="form-control" value="<?php echo $patient['AddressLine_2'] ?>"  id="AddressLine_2" name="AddressLine_2">
        </div>

        <div class="form-group">
            <label for="City">City</label>
            <input type="text" class="form-control" value="<?php echo $patient['City'] ?>"  id="City" name="City">
        </div>
        <div class="form-group">
            <label for="State	">State	</label>
            <input type="text" class="form-control" value="<?php echo $patient['State'] ?>" id="State" name="State">
        </div>
        <div class="form-group">
            <label for="ZipCode">Zip Code</label>
            <input type="text" class="form-control" value="<?php echo $patient['ZipCode'] ?>" id="ZipCode" name="ZipCode">
        </div>
        <div class="form-group">
            <label for="Country">Country</label>
            <input type="text" class="form-control" value="<?php echo $patient['Country'] ?>" id="Country" name="Country">
        </div>
        <div class="form-group">
            <label for="Emergencycontactname">Emergency Contact Name</label>
            <input type="text" class="form-control" value="<?php echo $patient['Emergencycontactname'] ?>" id="Emergencycontactname" name="Emergencycontactname">
        </div>
        <div class="form-group">
            <label for="Emergencycontactnum">Emergency Contact Number</label>
            <input type="text" class="form-control" value="<?php echo $patient['Emergencycontactnum'] ?>" id="Emergencycontactnum" name="Emergencycontactnum">
        </div>
        <div class="form-group">
            <label for="Relationship">Relationship</label>
            <input type="text" class="form-control" value="<?php echo $patient['Relationship'] ?>" id="Relationship" name="Relationship">
        </div>
        <a href="view_patient_records.php" class="btn btn-default">Back To List</a>
        <button type="submit" name="submit" class="btn btn-success">Save Changes</button>
    </form>

<?php } ?>
<br>
<br>
<br>
<br>
<br>
<?php require_once 'includes/footer.php'; ?>