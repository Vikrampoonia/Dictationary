<?php include '220101040conn.php';

	/*
		0=noun only
		1=verb only
		2=both noun and verb only
		10=both noun and living entity
		12=both noun,verb and living entity
	*/
	echo "we take here US prounctation and take reference from" ."<a href='https://dictionary.cambridge.org'> Cambridge Dictionary</a>"."<br>";
	$word=$_GET['word'];

	//convert word into small letter
	$word=strtolower($word);
	
	echo "<link rel='stylesheet' href='220101040.css'>";

	try
	{
		
		$identify=FindWordIdentifier($word);

		if($identify!=-1)
		{
			//print word with prounctation
			PrintWord($word);
		}
		
		
		if($identify==10)
		{
			$identify=0;
			//print image
			PrintImage($word,'LivingEntityCanBeNoun');
		}
		else if($identify==12)
		{
			$identify=2;
			//print image
			PrintImage($word,'LivingEntityCanBeNoun');
		}
		if($identify==0)
		{
			//only noun
			echo "<b>Noun: </b><br>";
			FetchMeaningExample($word,'NounAssociatedWithExample');
			echo "<hr>";
		}
		if($identify==1)
		{
			//only verb
			echo "<b>Verb: </b><br>";
			FetchMeaningExample($word,'VerbAssociatedWithExample');
			echo "<hr>";
			echo "<b>Antonym</b> <br>";
			PrintAntoSnonym($word,'AntonymHaveVerb','antonym');
			echo "<b>Snonym</b> <br>";
			PrintAntoSnonym($word,'SnonymHaveVerb','snonym');
			echo "<hr>";
		}
		else if($identify==2)
		{
			//both noun and verb
			echo "<b>Noun: </b><br>";
			FetchMeaningExample($word,'NounAssociatedWithExample');
			echo "<hr>";
			echo "<b>Verb: </b><br>";
			FetchMeaningExample($word,'VerbAssociatedWithExample');
			echo "<hr>";
			echo "<b>Antonym</b> <br>";
			PrintAntoSnonym($word,'AntonymHaveVerb','antonym');
			echo "<b>Snonym</b> <br>";
			PrintAntoSnonym($word,'SnonymHaveVerb','snonym');
			echo "<hr>";
		}
		if($identify!=-1)
		{
			//print word in different language
			PrintWordDifferLang($word);
			echo "<hr>";
		}
		else if($identify==-1)
		{
			echo "Word is not present in dicationary <br>";
		}
		
		
		
	} 
	catch(PDOException $e) 
	{
		echo "Error: " . $e->getMessage();
	}	
	$conn = null;


	function FindWordIdentifier($word)
	{
		global $conn;
		
		
		$identify=-1;
		$stmt = $conn->prepare("SELECT identifier FROM word where spell='$word'");
		
		$stmt->execute();
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		$result=$stmt->fetchAll();
		//print_r($result);
		foreach ($result as $row) 
		{
			
			foreach($row as $y)
			{
				$identify=$y;				
			}
		}
		
		return $identify;
	}

	function PrintWord($word)
	{
		global $conn;
		$stmt = $conn->prepare("SELECT Prounctation FROM word where spell='$word'");
		$identify="";
		$stmt->execute();
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		$result=$stmt->fetchAll();
		foreach ($result as $row) 
		{
			
			foreach($row as $y)
			{
				$identify=$y;				
			}
		}
		$word=strtoupper($word);
		echo "<b>$word</b>" ."($identify) <br>";
		echo "<hr>";
		
	}
	
	function FetchMeaningExample($word,$table)
	{
		global $conn;
		$meaning="";
		$example="";
		$stmt = $conn->prepare("SELECT meaning,examples FROM $table where spell='$word'");
		$stmt->execute();
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		$result=$stmt->fetchAll();
		foreach ($result as $row) 
		{
			foreach($row as $x=>$y)
			{
				if($x=="meaning")
				{
					$meaning=$y;
				}
				else if($x=="examples")
				{
					$example=$y;
				}
			}
			PrintMeaningExample($meaning,$example);
		}
		
	}
	
	function PrintMeaningExample($meaning,$example)
	{
		echo "Mean: $meaning <br> Ex: $example <br>";
	}

	function PrintImage($word,$table)
	{
		global $conn;
		$stmt = $conn->prepare("SELECT path FROM $table where spell='$word'");
		$stmt->execute();
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		$result=$stmt->fetchAll();
		foreach($result as $row)
		{
			foreach($row as $y)
			{
				$word=$y;				
			}
		}
		echo "<img src='$word'> <br>";
		echo "<hr>";
	}
	
	function PrintAntoSnonym($word,$table,$item)
	{
		global $conn;
		$stmt = $conn->prepare("SELECT $item FROM $table where spell='$word'");
		$stmt->execute();
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		$result=$stmt->fetchAll();
		foreach($result as $row)
		{
			foreach($row as $y)
			{
				echo "$y,";				
			}
		}echo "<br>";
	}
	
	
	function PrintWordDifferLang($word)
	{
		global $conn;
		$stmt = $conn->prepare("SELECT * FROM DifferentLangStoreIn where spell='$word'");
		$stmt->execute();
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		$result=$stmt->fetchAll();
		foreach ($result as $row) 
		{
			
			foreach($row as $x=>$y)
			{		
				if($x!="spell")
					echo "$x=>$y <br>";			
			}
		}
	}
	

/*
	1: find its identifier
	2: if its noun then make function to run for noun 
	3: if its verb then run again that function
	4: if both then run two time 
	5: if its living also then run one more function 
	
	parameter are: name of table , attribute of table , flag to check whether it run two times or not

*/

?>

