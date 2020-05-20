<?php

$valoreMediaPiemonte = query("Piemonte");

/*$valoreMediaLombardia = query("Lombardia");

$valoreMediaCampania = query("Campania");

$valoreMediaTrentino = query("Trentino-Alto Adige");

$valoreMediaVeneto = query("Veneto");

$valoreMediaFriuli = query("Friuli-Venezia Giulia");

$valoreMediaLiguria = query("Liguria");

$valoreMediaEmilia = query("Emilia-Romagna");

$valoreMediaToscana = query("Toscana");

$valoreMediaUmbria = query("Umbria");

$valoreMediaLazio = query("Lazio");

$valoreMediaMarche = query("Marche");

$valoreMediaAbruzzo = query("Abruzzo");

$valoreMediaMolise = query("Molise");

$valoreMediaCampania = query("Campania");

$valoreMediaPuglia = query("Puglia");

$valoreMediaBasilicata = query("Basilicata");

$valoreMediaCalabria = query("Calabria");

$valoreMediaSicilia = query("Sicilia");

$valoreMediaSardegna = query("Sardegna");


*/
function query($regione) {
    $connessione = connessione();
    $sql = "SELECT SUM(percentualeoccupazione) from datasetoccupazione where regione = '$regione'";
	$result = $connessione->query($sql);
	$data = array();
    if ($result->num_rows >0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {  
        $somma = $row["SUM(percentualeoccupazione)"];            
        $media = $somma/19;
	
	}
    } else {
        echo "0 results";
	}
	echo $media;
	return $media;
	
	$connessione->close();
	echo json_encode($data);
}

function connessione(){

    //inizializzaizone DB
    // nome di host
    $host = "localhost:3306";
    // username dell'utente in connessione
    $user = "root";
    // password dell'utente
      
    $password = "password";
    
    $dbname = "walktowork";
    
    // stringa di connessione al DBMS
    $connessione = new mysqli($host, $user, $password,$dbname);

    // verifica su eventuali errori di connessione
    if ($connessione->connect_errno) {
        echo "Connessione FALL: ". $connessione->connect_error . ".";
        exit();
    }

      return $connessione;
}


?> 

<!DOCTYPE html>
<html lang="en">

<head>
 <!--Load the AJAX API-->

	<link rel="icon" href="img/walk1.png" type="image/png">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  

	<title>WalkToWalk</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />


	<!-- Owl Carousel -->
	<link type="text/css" rel="stylesheet" href="css/owl.carousel.css" />
	<link type="text/css" rel="stylesheet" href="css/owl.theme.default.css" />

	<!-- Magnific Popup -->
	<link type="text/css" rel="stylesheet" href="css/magnific-popup.css" />

	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
      
    <style>
        #over img {
        margin-left: auto;
        margin-right: auto;
         display: block;
        }    
   </style>

</head>
<body>

	<!-- Header -->
	<header>

		<!-- Nav -->
		<nav id="nav" class="navbar">
			<div class="container">

				<div class="navbar-header">
					
					<!-- Collapse nav button -->
					<div class="nav-collapse">
						<span></span>
					</div>
					<!-- /Collapse nav button -->
				</div>

				<!--  Main navigation  -->
				<ul class="main-nav nav navbar-nav navbar-right">
					<li><a href="index3.html#home">Home</a></li>
					<li><a href="index3.html#service">Servizi</a></li>
					<li><a href="index3.html#team">Team</a></li>
					<li><a href="index3.html#contact">Contatti</a></li>
				</ul>
				<!-- /Main navigation -->

			</div>
		</nav>
		<!-- /Nav -->
		
		<div  id="over" class="header-wrapper sm-padding bg-grey">
       <img src="./img/walk1.png" width="300" height="300">	
       </div>  
        
	
	</header>
	<!-- /Header -->

	<!-- Blog -->
	<div id="blog" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Main -->
				<main id="main" class="col-md-9">
					<div class="blog">
						
						



						<!-- blog comments -->
						<div class="blog-comments">

                            
						<p>Media di occupazione dal 1995 al 2013 </p> 
						<div id="top_x_div" style="width: 800px; height: 600px;"></div>
					
						<!-- inizio grafico -->
       <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
 
  	  <script type="text/javascript">
	
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

	    function drawStuff() {
	      var data = new google.visualization.arrayToDataTable([
		  ['Move', 'Percentuale'],
          ["Piemonte", 21],
          ["Lombardia", 31],
          ["Trentino-Alto Adige", 12],
          ["Veneto", 10],
          ['Friuli-Venezia Giulia', 3],
		  ['Liguria', 5],
		  ['Toscana', 5],
		  ['Liguria', 5]
        ]);

        var options = {
          width: 800,
          legend: { position: 'none' },
            axes: {
            x: {
              0: { side: 'top', label: ''} // Top x-axis.
            }
          },
          bar: { groupWidth: "90%" }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        // Convert the Classic options to Material options.
        chart.draw(data, google.charts.Bar.convertOptions(options));
      };
    </script>
	
</table>

						</div>
						<!-- /blog comments -->

					</div>
				</main>
				<!-- /Main -->

			
	

		

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Blog -->
	<!-- Footer -->
	<footer id="footer" class="sm-padding bg-dark">

		<!-- Container -->
		<div class="container">
				<img class="img-responsive center-block" src="img/walk1.png" alt="logo" height="90" width="90">

			<!-- Row -->
			<div class="row">

				<div class="col-lg-12">

					
					<!-- footer copyright -->
					<div class="footer-copyright">
						<p>Copyright © 2019. All Rights Reserved. Designed by Alfonso Del Gaizo & Rosa Ferraioli</p>
					</div>
					<!-- /footer copyright -->

				</div>

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</footer>
	<!-- /Footer -->

	<!-- Back to top -->
	<div id="back-to-top"></div>
	<!-- /Back to top -->


	<!-- /Preloader -->




	<!-- jQuery Plugins -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/jquery.magnific-popup.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

    </body>

    </html>