<html>
	<body>
		<?php
		// Variable
		$movieID = $_POST['movieid']; 
		
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
			
			// Remove from Movies
			$movieQuery = "DELETE FROM movies WHERE idmovies =$movieID";
			if($connection->query($movieQuery) == TRUE) {
				echo "<br>Record deleted from Movies";
			}
			else {
				echo "<br>Error deleting from Movies";
			}
			
			// Remove from Genre
			$genreQuery = "DELETE FROM genrename WHERE idmovies = $movieID";
			if($connection->query($genreQuery) == TRUE) {
				echo "<br>Record deleted from Genre";
			}
			else {
				echo "<br>Error deleting from Genre";
			}
			
			// Remove from Writers
			$writerQuery = "DELETE FROM writers WHERE idmovies = $movieID";
			if($connection->query($writerQuery) == TRUE) {
				echo "<br>Record deleted from Writers";
			}
			else {
				echo "<br>Error deleting from Writers";
			}
			
			// Remove from Directors
			$directorQuery = "DELETE FROM directors WHERE idmovies = $movieID";
			if($connection->query($directorQuery) == TRUE) {
				echo "<br>Record deleted from Directors";
			}
			else {
				echo "<br>Error deleting from Directors";
			}
			
			// Remove from Lead Actors
			$actorQuery = "DELETE FROM leadactors WHERE idmovies = $movieID";
			if($connection->query($actorQuery) == TRUE) {
				echo "<br>Record deleted from Lead Actors<br>";
			}
			else {
				echo "<br>Error deleting from Lead Actors";
			}	
				// Display movie table info
				$displayMovieQuery = "SELECT idmovies, mName, yearReleased, runTime, mpaaRating, wonBestPicture FROM movies";
				$movieResponse = @mysqli_query($connection, $displayMovieQuery);
				
				if($movieResponse)
				{
					echo'<table align = "left"
					cell spacing = "5" cellpadding = "8">
					<tr><td align="left"><b>Movie ID</b></td>
					<td align="left"><b>Movie name</b></td>
					<td align="left"><b>Year released</b></td>
					<td align="left"><b>Runtime</b></td>
					<td align="left"><b>MPAA Rating</b></td>
					<td align="left"><b>Won best picture</b></td></tr>';
					while($row = mysqli_fetch_array($movieResponse)){
						echo '<tr><td align="left">'.
						$row['idmovies'] . '</td><td align="left">' .
						$row['mName'] . '</td><td align="left">' . 
						$row['yearReleased'] . '</td><td align="left">' .
						$row['runTime'] . '</td><td align="left">' .
						$row['mpaaRating'] . '</td><td align="left">' .
						$row['wonBestPicture'] . '</td><td align="left">';		
						echo '</tr>';
					}
					echo '</table><div style="clear:both;"></div>';
				}
				else {
					echo "Couldn't issue database query";
				}
				// Display genre table info
				$displayGenreQuery = "SELECT genreName, idmovies FROM genrename";
				$genreResponse = @mysqli_query($connection, $displayGenreQuery);
					
				if($genreResponse)
				{
					echo'<table align = "left"
					cell spacing = "5" cellpadding = "8">
					<tr><td align="left"><b>Movie ID</b></td>
					<td align="left"><b>Genre</b></td></tr>';
					while($row = mysqli_fetch_array($genreResponse)){
						echo '<tr><td align="left">'.
						$row['idmovies'] . '</td><td align="left">' .
						$row['genreName'] . '</td><td align="left">';
						echo '</tr>';
					}
					echo '</table><div style="clear:both;"></div>';
				}
				else {
					echo "Couldn't issue database query";
				}
				// Display writers table info
				$displayWritersQuery = "SELECT writerName, DOB, idmovies, wonWriting FROM writers";
				$writersResponse = @mysqli_query($connection, $displayWritersQuery);
				
				if($writersResponse)
				{
					echo'<table align = "left"
					cell spacing = "5" cellpadding = "8">
					<tr><td align="left"><b>Movie ID</b></td>
					<td align="left"><b>Writer Name</b></td>
					<td align="left"><b>Writer DOB</b></td>
					<td align="left"><b>Won Oscar Writing</b></td></tr>';
					while($row = mysqli_fetch_array($writersResponse)){
						echo '<tr><td align="left">'.
						$row['idmovies'] . '</td><td align="left">' .
						$row['writerName'] . '</td><td align="left">' . 
						$row['DOB'] . '</td><td align="left">' .
						$row['wonWriting'] . '</td><td align="left">';		
						echo '</tr>';
					}
					echo '</table><div style="clear:both;"></div>';
				}
				else {
					echo "Couldn't issue database query";
				}
				// Display directors table info
				$displayDirectorQuery = "SELECT directorName, dateOfBirth, idmovies, wonDirector FROM directors";
				$directorsResponse = @mysqli_query($connection, $displayDirectorQuery);
				
				if($directorsResponse)
				{
					echo'<table align = "left"
					cell spacing = "5" cellpadding = "8">
					<tr><td align="left"><b>Movie ID</b></td>
					<td align="left"><b>Director name</b></td>
					<td align="left"><b>Director DOB</b></td>
					<td align="left"><b>Won Oscar Director</b></td></tr>';
					while($row = mysqli_fetch_array($directorsResponse)){
						echo '<tr><td align="left">'.
						$row['idmovies'] . '</td><td align="left">' .
						$row['directorName'] . '</td><td align="left">' . 
						$row['dateOfBirth'] . '</td><td align="left">' .
						$row['wonDirector'] . '</td><td align="left">';		
						echo '</tr>';
					}
					echo '</table><div style="clear:both;"></div>';
				}
				else {
					echo "Couldn't issue database query";
				}
				// Display actors table info
				$displayActorQuery = "SELECT actorName, DOB, idmovies, characterName, wonBestActor FROM leadactors";
				$actorsResponse = @mysqli_query($connection, $displayActorQuery);
				
				if($movieResponse)
				{
					echo'<table align = "left"
					cell spacing = "5" cellpadding = "8">
					<tr><td align="left"><b>Movie ID</b></td>
					<td align="left"><b>Actor name</b></td>
					<td align="left"><b>Actor DOB</b></td>
					<td align="left"><b>Character name</b></td>
					<td align="left"><b>Won Oscar Best Actor</b></td></tr>';
					while($row = mysqli_fetch_array($actorsResponse)){
						echo '<tr><td align="left">'.
						$row['idmovies'] . '</td><td align="left">' .
						$row['actorName'] . '</td><td align="left">' . 
						$row['DOB'] . '</td><td align="left">' .
						$row['characterName'] . '</td><td align="left">' .
						$row['wonBestActor'] . '</td><td align="left">';		
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