<?php
    $title = 'Success'; 
    require_once 'includes/header.php'; 
    require_once 'db/conn.php';
    require_once 'sendemail.php';

    if(isset($_POST['submit'])){
        //extract values from the $_POST array
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
        // $role= $_POST['ImagePath'];


        $orig_file = $_FILES["ImagePath"]["tmp_name"];
        $ext = pathinfo($_FILES["ImagePath"]["name"], PATHINFO_EXTENSION);
        $target_dir = 'uploads/';
        $destination = "$target_dir$Mobileno.$ext";
        move_uploaded_file($orig_file,$destination);
        
        $ran = rand(10,100);
        $password = "den".$ran;
        // Add Dentist
        $isUserSuccess = $users->insertUser($Emailid, $password, 7);
        if($isUserSuccess){
              //Call function to insert and track if success or not
              $isSuccess = $dentist->insertDentist($isUserSuccess,$Fname, $Lname, $Dateofbirth, $AddressLine_1, $AddressLine_2, $Mobileno, $Emailid,$City, $State,$Country,	$ZipCode,$Certificateno,	$Specialization, $destination);
              // $specialtyName = $crud->getSpecialtyById($specialty);

              if($isSuccess){
                SendEmail::SendMail($Emailid, 'Welcome to Dental System', 'You have successfully added as Dentist!  Your credentials are  Username: '.$Emailid. ' Password: '.$password  );
                include 'includes/successmessage.php';
            }
            else{
                include 'includes/errormessage.php';
            }
    
        }
        else{
            include 'includes/email_already_exist.php';
        }


        
       
    }
?>


    <!-- This prints out values that were passed to the action page using method="post" -->
    <img src="<?php echo $destination; ?>" class="rounded-circle" style="width: 20%; height: 20%" />
    <div class="card" style="width: 18rem;">
        <div class="card-body">
            <h5 class="card-title">
                <?php echo $_POST['Fname'] . ' ' . $_POST['Lname'];  ?>
            </h5>
            <h6 class="card-subtitle mb-2 text-muted">
                <?php echo $_POST['Specialization'];  ?>    
            </h6>
            <p class="card-text">
                Date Of Birth: <?php echo $_POST['Dateofbirth'];  ?>
            </p>
            <p class="card-text">
                Email Adress: <?php echo $_POST['Emailid'];  ?>
            </p>
            <p class="card-text">
                Contact Number: <?php echo $_POST['Mobileno'];  ?>
            </p>
    
        </div>
    </div>

<br>
<br>
<br>
<br>
<br>
<?php require_once 'includes/footer.php'; ?>