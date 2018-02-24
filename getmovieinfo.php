<html>
	<body>
		<?php
			// Movie Variables
			$movieName = $_POST['moviename'];
			$movieID = $_POST['movieid'];
			$yearReleased = $_POST['yearreleased'];
			$runTime = $_POST['runtime'];
			$rating = $_POST['mpaarating'];
			$bestPicture = $_POST['wonbestpicture'];

			// Genre Variables
			$genreName = $_POST['genrename'];

			// Writer Variables
			$writerName = $_POST['writername'];
			$dobWriter = $_POST['dateofbirthwriter'];
			$wonOscarWriter = $_POST['wonoscarwriter'];

			// Director Variables
			$directorName = $_POST['directorname'];
			$dobDirector = $_POST['dateofbirthdirector'];
			$wonOscarDirector = $_POST['wonoscardirector'];

			// Lead Actor Variables
			$actorName = $_POST['actorname'];
			$dobActor = $_POST['dateofbirthactor'];
			$wonOscarActor = $_POST['wonoscaractor'];
			$characterName = $_POST['charactername'];
			
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
			
			// Display input (may remove later)
			echo "<br>Movie name: " . $movieName;
			echo "<br>Movie ID: " . $movieID;
			echo "<br>Year released: " . $yearReleased;
			echo "<br>Runtime: " . $runTime;
			echo "<br>Won best picture: " . $bestPicture;
			echo "<br>Genre name: " . $genreName;
			echo "<br>Writer name: " . $writerName;
			echo "<br>Writer DOB: " . $dobWriter;
			echo "<br>Won Oscar writer: " . $wonOscarWriter;
			echo "<br>Director name: " . $directorName;
			echo "<br>Director DOB: " . $dobDirector;
			echo "<br>Won Oscar director: " . $wonOscarDirector;
			echo "<br>Actor name: " . $actorName;
			echo "<br>Actor DOB: " . $dobActor;
			echo "<br>Won Oscar actor: " . $wonOscarActor;
			echo "<br>Character name: " . $characterName;
			
			// Add Movies section input to DB
			$movieQuery = "INSERT INTO movies (idmovies, mName, yearReleased, runTime, mpaaRating, wonBestPicture) 
			VALUES (?, ?, ?, ?, ?, ?)";
			$statement = mysqli_prepare($connection, $movieQuery);
			mysqli_stmt_bind_param($statement, "isiisi", $movieID, $movieName, $yearReleased, $runTime, $rating, $bestPicture);
			mysqli_stmt_execute($statement);
			$movies_affected_rows = mysqli_stmt_affected_rows($statement);
			
			// Add Genre section input to DB
			$genreQuery = "INSERT INTO genrename (genreName, idmovies) 
			VALUES (?, ?)";
			$genreStatement = mysqli_prepare($connection, $genreQuery);
			mysqli_stmt_bind_param($genreStatement, "si", $genreName,$movieID);
			mysqli_stmt_execute($genreStatement);
			$genre_affected_rows = mysqli_stmt_affected_rows($genreStatement);
			
			// Add Writers section input to DB
			$writerQuery = "INSERT INTO writers (writerName, DOB, idmovies, wonWriting) 
			VALUES (?, ?, ?, ?)";
			$writerStatement = mysqli_prepare($connection, $writerQuery);
			mysqli_stmt_bind_param($writerStatement, "ssis", $writerName, $dobWriter, $movieID, $wonOscarWriter);
			mysqli_stmt_execute($writerStatement);
			$writers_affected_rows = mysqli_stmt_affected_rows($writerStatement);
			
			// Add Directors section input to DB
			$directorQuery = "INSERT INTO directors (directorName, dateOfBirth, idmovies, wonDirector) 
			VALUES (?, ?, ?, ?)";
			$directorStatement = mysqli_prepare($connection, $directorQuery);
			mysqli_stmt_bind_param($directorStatement, "ssis", $directorName, $dobDirector, $movieID, $wonOscarDirector);
			mysqli_stmt_execute($directorStatement);
			$directors_affected_rows = mysqli_stmt_affected_rows($statement);
			
			// Add Actors section input to DB
			$actorQuery = "INSERT INTO leadactors (actorName, DOB, idmovies, characterName, wonBestActor) 
			VALUES (?, ?, ?, ?, ?)";
			$actorStatement = mysqli_prepare($connection, $actorQuery);
			mysqli_stmt_bind_param($actorStatement, "ssiss", $actorName, $dobActor, $movieID, $characterName, $wonOscarActor);
			mysqli_stmt_execute($actorStatement);
			$actors_affected_rows = mysqli_stmt_affected_rows($actorStatement);
			
			if($movies_affected_rows == 1 && $genre_affected_rows == 1 && $directors_affected_rows == 1 && $writers_affected_rows == 1 && $actors_affected_rows == 1)
			{
				// Display confirmation input processed
				echo "<br>Data processed<br>Movie " . $movieName . " added<br>";
								
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
					echo '</table>';
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
					echo '</table>';
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
					echo '</table>';
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
					echo '</table>';
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
					echo '</table>';
				}
				else {
					echo "Couldn't issue database query";
				}
				
				// Close DB connection
				mysqli_close($connection);
			}
			else {
				echo "<br>Insertion unsuccessful<br>";
				echo $connection->error;
				mysqli_close($connection);
			}
			
		?>
	</body>
</html>