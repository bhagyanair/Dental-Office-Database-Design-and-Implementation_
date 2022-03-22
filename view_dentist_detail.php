<?php
    $title = 'View Record'; 

    require_once 'includes/header.php'; 
    require_once 'includes/auth_check.php';
    require_once 'db/conn.php'; 

    // Get attendee by id
    if(!isset($_GET['id'])){
        include 'includes/errormessage.php';
        
    } else{
        $id = $_GET['id'];
        $result = $crud->getDentistDetails($id);
    
    
?>
<!-- <img src="<?php echo empty($result['ImagePath']) ? "uploads/blank.png" : $result['ImagePath'] ; ?>" class="rounded-circle" style="width: 20%; height: 20%" />

<div class="card" style="width: 18rem;">
    <div class="card-body">
        <h5 class="card-title">
            <?php echo $result['Fname'] . ' ' . $result['Lname'];  ?>
        </h5>
        <h6 class="card-subtitle mb-2 text-muted">
            <?php echo $result['Specialization'];  ?>    
        </h6>
        <p class="card-text">
            Date Of Birth: <?php echo $result['Dateofbirth'];  ?>
        </p>
        <p class="card-text">
            Email Adress: <?php echo $result['Emailid'];  ?>
        </p>
        <p class="card-text">
            Contact Number: <?php echo $result['Mobileno'];  ?>
        </p>

    </div>
</div> -->


<div class="card" style="width: 18rem;">
  <img src="<?php echo empty($result['ImagePath']) ? "uploads/blank.png" : $result['ImagePath'] ; ?>"  class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title"><?php echo $result['Fname'] . ' ' . $result['Lname'];  ?></h5>
    <h6 class="card-subtitle mb-2 text-muted">
            <?php echo $result['Specialization'];  ?>    
        </h6>
        <p class="card-text">
            Date Of Birth: <?php echo $result['Dateofbirth'];  ?>
        </p>
        <p class="card-text">
            Email Adress: <?php echo $result['Emailid'];  ?>
        </p>
        <p class="card-text">
            Contact Number: <?php echo $result['Mobileno'];  ?>
        </p>
  </div>
  <div class="card-body">
    <a href="view_dentist_records.php" class="card-link ">Back to List</a>
    <a href="edit_dentist_detail.php?id=<?php echo $result['Dentist_Id'] ?>" class="card-link ">Edit</a>
    <a onclick="return confirm('Are you sure you want to delete this record?');" href="delete_dentist.php?id=<?php echo $result['User_Id'] ?>" class="card-link" >Delete</a>
  </div>
</div>
<br/>
        <!-- <a href="view_dentist_records.php" class="btn btn-info">Back to List</a>
        <a href="edit.php?id=<?php echo $result['Dentist_Id'] ?>" class="btn btn-warning">Edit</a>
        <a onclick="return confirm('Are you sure you want to delete this record?');" href="delete.php?id=<?php echo $result['User_Id'] ?>" class="btn btn-danger">Delete</a>
    <?php } ?>
<br> -->
<br>
<br>
<?php require_once 'includes/footer.php'; ?>