<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="styles.css">
    <meta charset="UTF-8">
    <title>ViralDrugDB Viruses</title>
  </head>
<body>
   <nav>
     <a href="viraldrugDB.html">ViralDrugDB</a> 
     <a href="drug.php">Browse drugs</a> 
     <a class="active">Browse viruses</a> 
     <div class="search-container">
       <form action="search.php"> 
	<button type="submit">Go</button>
        <input type="text" placeholder="Search" required name="search">
	<select id="attr" required name="attr">
	   <option value="drug_name">Drug Name</option>
	   <option value="virus_name">Virus Name</option>
	</select>
	<label for="attr">Search by..</label>
      </form>
    </div>
  </nav> 

   <h1><?php echo "Browse Virus Information"; ?></h1>
  <h3>What's in the virus table</h3>
   <ul>
    <li>Common Name: the common (colloquial) name of the virus/viral disease. Used for brevity.</li>
    <li>DS IDs: a list (separated by semicolons) containing the KEGG disease IDs for all diseases associated with the common name of the virus.</li>
    <li>Disease List: a list (separated by semicolons) containing the standardized name provided by KEGG disease of all diseases associated with the common name of the virus.</li>
   </ul>
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
$query = "SELECT * FROM virus";
$result = mysqli_query($connect, $query)
	  or trigger_error("Query Failed! SQL: $query - Error: "
	  . mysqli_error($connect), E_USER_ERROR);
echo "Query is: $query <br>";

/*If there are results from the query, print the 0th
 * token in the current tuple from the result relation
 * If there are no results, print an error message.
 */
if ($result = mysqli_query($connect, $query)) {
    printf("<table>");
    printf("<tr>");
    printf("<th></th>");
    printf("<th>Virus Common Name</th>");
    printf("<th>KEGG Disease IDs</th>");
    printf("<th>Associated Diseases</th>");
    printf("</tr>");
    while ($row = mysqli_fetch_row($result)) {
	printf("<tr>");
	for ($i = 0; $i <= count($row); $i+=1) {    
		printf("<td>");
		if ($i == 3) {
			printf("link %s ", $row[$i]);
		}
		else{
			printf("%s ", $row[$i]);
		}
		printf("</td>");
	}
	printf("</tr>");
    }
    mysqli_free_result($result);
    printf("</table>");
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
