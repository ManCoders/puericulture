
<!-- <?php include "header.php" ?> -->
<link rel="stylesheet" href="./assets/css/style.css">

<div class="nav_main_bar">

    <nav class="nav" id="sidebar">
    <div class="logo"> <img style="width:100px; border-radius:50%;" src="./assets/images/puericulture_logo.jpg" alt="Logo"></div>
                <a href="index.php?page=home" class="nav-home">
                    <span>Dashboard</span>
                </a>
                <a href="index.php?page=payroll" class="nav-payroll">
                    <span>Payroll Process</span>
                </a>
                <a href="index.php?page=salary" class="nav-salary">
                    <span>Salary Reports</span>
                </a>
                <a href="index.php?page=employee" class="nav-employee">
                    <span>Management</span>
                </a>
                <a href="index.php?page=setting" class="nav-setting">
                    <span>Setting</span>
                </a>
                <a href="../logout.php" class="nav-setting">
                    <span>Logout</span>
                </a>

        </div>
    </nav>
</div>

</div>


<script>
$('.nav-<?php echo $_GET['page'] ?>').addClass('active');

$('.nav a').click(function() {
    $('.nav a').removeClass('active');
    $(this).addClass('active');
    $(this).css('background-color', '#d10101');
    $(this).css('color', '#fff');
    $(this).siblings().css('background-color', '');
    $(this).siblings().css('color', '');
});

if ($('.nav-<?php echo $_GET['page'] ?>').parent().hasClass('collapse')) {
    const parentID = $('.nav-<?php echo $_GET['page'] ?>').parent().attr('id');
    $(`a[href="#${parentID}"]`)
        .removeClass('collapsed')
        .attr('aria-expanded', true);
    $('.nav-<?php echo $_GET['page'] ?>').parent().addClass('show');
}
</script>