<html>
	<body>
		<?php			
			// MySQL login
			$dbhost = "localhost";
			$userName = 'root';
			$password = '';
			$db = 'group11database';
			
			// Create connection
			$connection = new mysqli("$dbhost", "$userName", "$password", "$db");
			
			// Check Connection
			if($connection->connect_error) {
				die("Connection failed: " . $connection->connect_error);
			}
			
			// Confirm connection
			echo "Connected to local host<br>";
			echo "Connected to database<br>";
			
				// Display No Oscar Info
				$displayQuery = "SELECT leadactors.actorName, movies.mName, movies.mpaaRating, directors.directorName, writers.writerName, genrename.genreName 
				FROM directors, movies, leadactors, writers, genrename
				WHERE (movies.wonBestPicture = 0) AND (directors.wonDirector = 0) AND (leadactors.wonBestActor=0) 
				AND (writers.wonWriting=0) AND (movies.idmovies = directors.idmovies) AND (movies.idmovies = genrename.idmovies) AND
				(movies.idmovies = writers.idmovies) AND (movies.idmovies = leadactors.idmovies) ";
				$response = @mysqli_query($connection, $displayQuery);
				
				if($response)
				{
					echo'<table align = "left"
					cell spacing = "5" cellpadding = "8">
					<tr><td align="left"><b>Movie name</b></td>
					<td align="left"><b>Genre</b></td>
					<td align="left"><b>MPAA Rating</b></td>
					<td align="left"><b>Director name</b></td>
					<td align="left"><b>Writer name</b></td>
					<td align="left"><b>Actor name</b></td></tr>';
					while($row = mysqli_fetch_array($response)){
						echo '<tr><td align="left">'.
						$row['mName'] . '</td><td align="left">' .
						$row['genreName'] . '</td><td align="left">' .
						$row['mpaaRating'] . '</td><td align="left">' .
						$row['directorName'] . '</td><td align="left">' .
						$row['writerName'] . '</td><td align="left">' .
						$row['actorName'] . '</td><td align="left">';		
						echo '</tr>';
					}
					echo '</table><div style="clear:both;"></div>';
				}
				else {
					echo "Couldn't issue database query";
				}
				
				// Close DB connection
				mysqli_close($connection);
		?>
	</body>
</html>