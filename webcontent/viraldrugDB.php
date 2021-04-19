<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>ViralDrugDBe</title>
  </head>
<body>
  <h1><?php echo "<p>Database for a Small Set of Viruses and Associated Antiviral Drugs</p>"; ?></h1>

<?php

/*Connection variables at top
* Makes it easy to change if needed*/
$server="localhost";
$username="edoerr";
$password="";
$database="edoerr";

/*Connect to my database
* and throw errors if its unable to connect.
* Greets the web user if it is able to connect.*/
$connect = mysqli_connect($server,$username,"",$database);

if($connect->connect_error){
	echo "Something has gone terribly wrong";
	echo "Connection error:" .$connect->connect_error;
}else{
	echo "<p>Successful Connection.</p>";
}
/* Run a basic SQL query and throw
 * an error if its unable to perform the query
 */
$query = "SELECT * FROM drug";
$result = mysqli_query($connect, $query)
	  or trigger_error("Query Failed! SQL: $query - Error: "
	  . mysqli_error($connect), E_USER_ERROR);
echo "Query is: $query <br>";

/*If there are results from the query, print the 0th
 * token in the current tuple from the result relation
 * If there are no results, print an error message.
 */
if ($result = mysqli_query($connect, $query)) {
    while ($row = mysqli_fetch_row($result)) {
	printf("<br>");
	for ($i = 0; $i <= count($row); $i+=1) {    
	    printf("%s ", $row[$i]);
	}
    }
    mysqli_free_result($result);
}else{
	echo "No results";
}

/*Always close your connection.
 * Its a courtesy to your fellow users.
 */
mysqli_close($connect);
?>

</body>
</html>
