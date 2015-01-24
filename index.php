<!DOCTYPE html>
<html>
<!--Vernon Zidana
-->
<body>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "database";

// Create connection
$database = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($database->connect_error) {
     die("Connection failed: " . $database->connect_error);
} 

//query(joining two tables)

$sql = "SELECT *, DATE_FORMAT(product_date,'%M %D, %Y')  product_date FROM products LEFT JOIN manufacturers ON products.manufacturer_id=manufacturers.manufacturer_id ORDER BY product_name";


$result = $database->query($sql);

if ($result->num_rows > 0) {
	// creating the ordered list
	  echo '<ol>';
     // output data of each row
     while($row = $result->fetch_assoc()) {
         echo "<li>". $row["product_name"]. ", manufactured by ". $row["manufacturer_name"] . " on  ". $row["product_date"] . "</li>";
     }
	  echo '</ol>';
} else {
     echo "0 results";
}

$database->close();
?>  

</body>
</html>