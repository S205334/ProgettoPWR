<?php
	$pathParts = pathinfo($_SERVER['PHP_SELF']);
	echo "<p align='right'>Nome file: " . $pathParts['basename'] . "</p>";
?>
<address class="info_autore">Autore: Simone Santia - E-mail: <a href="mailto:s205334@studenti.polito.it">s205334@studenti.polito.it</a></address>
