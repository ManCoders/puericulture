<!-- <?php include "header.php" ?> -->
<link rel="stylesheet" href="./assets/css/style.css">

<div class="nav_main_bar">
    <nav class="nav" id="sidebar">
        <div class="logo"> 
            <img style="width:100px; border-radius:50%;" src="./assets/images/puericulture_logo.jpg" alt="Logo">
        </div>
        
        <?php $page = isset($_GET['page']) ? $_GET['page'] : 'home'; ?>

        <a href="index.php?page=home" class="nav-item nav-home <?= ($page == 'home') ? 'active' : '' ?>">
            <span>Dashboard</span>
        </a>
        <a href="index.php?page=payroll" class="nav-item nav-payroll <?= ($page == 'payroll') ? 'active' : '' ?>">
            <span>Payroll Process</span>
        </a>
        <a href="index.php?page=salary" class="nav-item nav-salary <?= ($page == 'salary') ? 'active' : '' ?>">
            <span>Salary Reports</span>
        </a>
        <a href="index.php?page=employee" class="nav-item nav-employee <?= ($page == 'employee') ? 'active' : '' ?>">
            <span>Management</span>
        </a>
        <a href="index.php?page=setting" class="nav-item nav-setting <?= ($page == 'setting') ? 'active' : '' ?>">
            <span>Setting</span>
        </a>
        <a href="../logout.php" class="nav-item">
            <span>Logout</span>
        </a>
    </nav>
</div>


<script>
$(document).ready(function () {
    $('.nav-item').click(function() {
        $('.nav-item').removeClass('active');
        $(this).addClass('active');
    });
});
</script>

<style>
.nav-item {
    display: block;
    padding: 9px;
    text-decoration: none;
    color: black;
    transition: 0.3s;
    border-radius: 10px;
}

.nav-item.active {
    background-color:rgb(158, 4, 4) !important;
    color: white !important;
}
</style>
