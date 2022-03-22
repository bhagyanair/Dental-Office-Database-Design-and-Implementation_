<?php
    $title = 'View Records'; 

    require_once 'includes/header.php'; 
    require_once 'includes/auth_check.php';
    require_once 'db/conn.php'; 

    // Get all Dentist
    $results = $crud->getDentists();
?>
<!-- <div class="float-lg-left"> -->
<div class="float-lg-left"> <h3>Dentist List</h3></div>
<a href="dentist.php" class="btn btn-danger float-lg-right">Add Dentist</a>
<br>
<br>

<!-- </div> -->
    <table class="table  table-striped table-hover table-bordered">
        <tr class="table"> 
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Specialization</th>
            <th>Actions</th>
        </tr>
        <?php while($r = $results->fetch(PDO::FETCH_ASSOC)) { ?>
           <tr>
                <td><?php echo $r['Dentist_Id'] ?></td>
                <td><?php echo $r['Fname'] ?></td>
                <td><?php echo $r['Lname'] ?></td>
                <td><?php echo $r['Emailid'] ?></td>
                <td><?php echo $r['Specialization'] ?></td>
                <td>
                    <a href="view_dentist_detail.php?id=<?php echo $r['Dentist_Id'] ?>" class="btn btn-primary">View</a>
                    <a href="edit_dentist_detail.php?id=<?php echo $r['Dentist_Id'] ?>" class="btn btn-warning">Edit</a>
                    <a onclick="return confirm('Are you sure you want to delete this record?');" href="delete_dentist.php?id=<?php echo $r['User_Id'] ?>" class="btn btn-danger">Delete</a>
                </td>
           </tr> 
        <?php }?>
    </table>

<br>
<br>
<br>
<?php require_once 'includes/footer.php'; ?>