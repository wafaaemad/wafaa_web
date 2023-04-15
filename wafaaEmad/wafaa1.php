<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mydb";

$conn = mysqli_connect($servername,$username,$password,$dbname);
if(!$conn){
die("Connection Error".mysqli_connect_error());
}else{
    $errors=[];
 if (isset( $_POST['submit']) ) {
   
    $name= $_POST['name'];
    $pass= md5($_POST['password']) ;
    $email= $_POST['email'];
    $gender= $_POST['gender'];
   

    if($name=='')
      $errors[]='Enter Your Name please';

      if($pass==''){
        $errors[]='Password Can NOT be empty';
      }

    
    
    if($email==''){
        $errors[]='Enter Your Email please';
    }
    
      
      if(empty($errors)) {
         $stmt= $conn->prepare("INSERT INTO dataform(name,password,email,gender) values(?,?,?,?)");
         $stmt->bind_param("sssi",$name,$pass,$email,$gender); 
         $stmt->execute();
      if ($stmt==TRUE) {
        echo " successfully.";
      }
     $stmt->close();
     $conn->close();
     }


    }
}
   
?>


<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Wafaa</title>
</head>
<body>
<h1>Wafaa Emad Abo sitta</h1>
<h1> 2301195609 </h1>

<form action="#" method="post" enctype="multipart/form-data">
  <h1 id="title"> application for job</h1>
  
  <fieldset>
     <legend>Personal Details</legend>
    
      <label>Name:</label>
      <input type="text" name="name" >  </br> </br>
    
      <label>password :</label>
      <input type="password" name="password" > </br></br>
      
      <label>Email:</label>
      <input type="email" name="email" ></br> </br> 
    
    <label>Gender</label>
        <input class="show" type="radio" name="gender" value="1" > Male 
        <input class="show" type="radio" name="gender" value="2"> Female<br> <br>
        
  
  </fieldset>
  <div>
   <?php if (count($errors) > 0) { ?>

    <ul class="error">
       <?php foreach ($errors as $error) { ?>
        <li> <?php echo $error;  ?></li>
       <?php  } ?>
    </ul>

     <?php  } ?>
   </div>
  
   
   
  <div id="submitbutton">
   <button class="sub" type="submit" name="submit">submit</button>
   <button class="sub" type="reset">reset</button>
    <h2> NOT//All fields must be filled in for the file .</h2>
  
</div>
    

</form>

</body>
</html>