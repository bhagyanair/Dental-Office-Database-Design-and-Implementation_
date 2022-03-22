<?php
    $title = 'View Patient Records'; 

    require_once 'includes/header.php'; 
    require_once 'includes/auth_check.php';
    require_once 'db/conn.php'; 

    // Get all Patient
    $results = $crud->getPatients();
?>
<!-- <div class="float-lg-left"> -->
<div class="float-lg-left"> <h3>Patient List</h3></div>
<a href="patient.php" class="btn btn-danger float-lg-right">Add Patient</a>
<br>
<br>

<!-- </div> -->
    <table class="table  table-striped table-hover table-bordered">
        <tr class="table"> 
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>

        </tr>
        <?php while($r = $results->fetch(PDO::FETCH_ASSOC)) { ?>
           <tr>
                <td><?php echo $r['Patient_Id'] ?></td>
                <td><?php echo $r['Fname'] ?></td>
                <td><?php echo $r['Lname'] ?></td>
                <td><?php echo $r['Email'] ?></td>
                
                <td>
                    <a href="view_patient_detail.php?id=<?php echo $r['Patient_Id'] ?>" class="btn btn-primary">View</a>
                    <a href="edit_patient_detail.php?id=<?php echo $r['Patient_Id'] ?>" class="btn btn-warning">Edit</a>
                    <a onclick="return confirm('Are you sure you want to delete this record?');" href="delete_patient.php?id=<?php echo $r['User_Id'] ?>" class="btn btn-danger">Delete</a>
                </td>
           </tr> 
        <?php }?>
    </table>

<br>
<br>
<br>
<?php require_once 'includes/footer.php'; ?>