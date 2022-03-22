    
<?php
    $title = 'Index'; 

    require_once 'includes/header.php'; 
    require_once 'db/conn.php'; 

?>
    <h1 class="text-center">     Patient Form </h1>

    <form method="post" action="add_patient_success.php" enctype="multipart/form-data">
        <div class="form-group">
            <label for="Fname">First Name</label>
            <input required type="text" class="form-control" id="Fname" name="Fname">
        </div>
        <div class="form-group">
            <label for="Lname">Last Name</label>
            <input required type="text" class="form-control" id="Lname" name="Lname">
        </div>
        <div class="form-group">
            <label for="Dateofbirth">Date Of Birth</label>
            <input type="text" class="form-control" id="Dateofbirth" name="Dateofbirth">
        </div>
        <div class="form-group">
            <label for="Mobileno">Mobile Number</label>
            <input type="text" class="form-control" id="Mobileno" name="Mobileno" aria-describedby="MobilenoHelp" >
            <small id="MobilenoHelp" class="form-text text-muted">We'll never share your number with anyone else.</small>
        </div>        
        <div class="form-group">
            <label for="Emailid">Email address</label>
            <input required type="Email" class="form-control" id="Emailid"  name="Emailid" aria-describedby="EmailidHelp" >
            <small id="EmailidHelp" class="form-text text-muted">We'll never share your Emailid with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="AddressLine_1">Address Line 1</label>
            <input type="text" class="form-control" id="AddressLine_1" name="AddressLine_1">
        </div>
        <div class="form-group">
            <label for="AddressLine_2">Address Line 2</label>
            <input type="text" class="form-control" id="AddressLine_2" name="AddressLine_2">
        </div>
        <div class="form-group">
            <label for="City">City</label>
            <input type="text" class="form-control" id="City" name="City">
        </div>
        <div class="form-group">
            <label for="State	">State	</label>
            <input type="text" class="form-control" id="State" name="State">
        </div>
        <div class="form-group">
            <label for="Country">Country</label>
            <input type="text" class="form-control" id="Country" name="Country">
        </div>
        <div class="form-group">
            <label for="ZipCode">Zip Code</label>
            <input type="text" class="form-control" id="ZipCode" name="ZipCode">
        </div>
        <div class="form-group">
            <label for="Emergencycontactname">Emergency contact Name</label>
            <input type="text" class="form-control" id="Emergencycontactname" name="Emergencycontactname">
        </div>
        <div class="form-group">
            <label for="Emergencycontactnum">Emergency Contact Number</label>
            <input type="text" class="form-control" id="Emergencycontactnum" name="Emergencycontactnum">
        </div>
        <!-- <div class="form-group">
            <label for="Age">Emergency Date of Birth</label>
            <input type="text" class="form-control" id="Age" name="Age">
        </div> -->
        <div class="form-group">
            <label for="Relationship">Relationship</label>
            <input type="text" class="form-control" id="Relationship" name="Relationship">
        </div>
        
        <br/>
        <div class="custom-file">
            <input type="file" accept="image/*" class="custom-file-input" id="ImagePath" name="ImagePath" >
            <label class="custom-file-label" for="ImagePath">Choose File</label>
            <small id="avatar" class="form-text text-danger">File Upload is Optional</small>

        </div>
        
        <br>
        <button type="submit" name="submit" class="btn btn-primary btn-block" style="background-color: #ff0000;">Submit</button>
    </form>
<br>
<br>
<br>
<br>
<br>
<?php require_once 'includes/footer.php'; ?>