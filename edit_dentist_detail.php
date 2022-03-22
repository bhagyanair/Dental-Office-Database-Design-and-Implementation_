    
<?php
    $title = 'Edit Record'; 

    require_once 'includes/header.php'; 
    require_once 'includes/auth_check.php';
    require_once 'db/conn.php'; 

    // $results = $crud->getSpecialties();

    if(!isset($_GET['id']))
    {
        //echo 'error';
        include 'includes/errormessage.php';
        header("Location: view_dentist_records.php");
    }
    else{
        $id = $_GET['id'];
        $dentist = $crud->getDentistDetails($id);
    

    
?>

    <h1 class="text-center">Edit Record </h1>

    <form method="post" action="editdentist.php">
        <input type="hidden" name="Dentist_Id" value="<?php echo $dentist['Dentist_Id'] ?>" />
        <div class="form-group">
            <label for="Fname">First Name</label>
            <input type="text" class="form-control" value="<?php echo $dentist['Fname'] ?>" id="Fname" name="Fname">
        </div>
        <div class="form-group">
            <label for="Lname">Last Name</label>
            <input type="text" class="form-control" value="<?php echo $dentist['Lname'] ?>" id="Lname" name="Lname">
        </div>
        <div class="form-group">
            <label for="Dateofbirth">Date Of Birth</label>
            <input type="text" class="form-control" value="<?php echo $dentist['Dateofbirth'] ?>" id="Dateofbirth" name="Dateofbirth">
        </div>
        <div class="form-group">
            <label for="Emailid">Email address</label>
            <input type="email" class="form-control" id="Emailid" value="<?php echo $dentist['Emailid'] ?>" name="Emailid" aria-describedby="emailHelp" >
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="Mobileno">Contact Number</label>
            <input type="text" class="form-control" id="Mobileno" value="<?php echo $dentist['Mobileno'] ?>" name="Mobileno" aria-describedby="MobilenoHelp" >
            <small id="MobilenoHelp" class="form-text text-muted">We'll never share your number with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="AddressLine_1">Address Line 1</label>
            <input type="text" class="form-control" value="<?php echo $dentist['AddressLine_1'] ?>"  id="AddressLine_1" name="AddressLine_1">
        </div>
        <div class="form-group">
            <label for="AddressLine_2">Address Line 2</label>
            <input type="text" class="form-control" value="<?php echo $dentist['AddressLine_2'] ?>"  id="AddressLine_2" name="AddressLine_2">
        </div>

        <div class="form-group">
            <label for="City">City</label>
            <input type="text" class="form-control" value="<?php echo $dentist['City'] ?>"  id="City" name="City">
        </div>
        <div class="form-group">
            <label for="State	">State	</label>
            <input type="text" class="form-control" value="<?php echo $dentist['State'] ?>" id="State" name="State">
        </div>
        <div class="form-group">
            <label for="ZipCode">Zip Code</label>
            <input type="text" class="form-control" value="<?php echo $dentist['ZipCode'] ?>" id="ZipCode" name="ZipCode">
        </div>
        <div class="form-group">
            <label for="Country">Country</label>
            <input type="text" class="form-control" value="<?php echo $dentist['Country'] ?>" id="Country" name="Country">
        </div>
        <div class="form-group">
            <label for="Certificateno">Certificate No</label>
            <input type="text" class="form-control" id="Certificateno" value="<?php echo $dentist['Certificateno'] ?>" name="Certificateno">
        </div>
        <div class="form-group">
            <label for="Specialization">Specialization</label>
            <input type="text" class="form-control" id="Specialization" value="<?php echo $dentist['Specialization'] ?>" name="Specialization">
        </div>

        
        <a href="view_dentist_records.php" class="btn btn-default">Back To List</a>
        <button type="submit" name="submit" class="btn btn-success">Save Changes</button>
    </form>

<?php } ?>
<br>
<br>
<br>
<br>
<br>
<?php require_once 'includes/footer.php'; ?>