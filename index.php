<?php
if(!isset($_GET['module_name']) || !isset($_GET['tpl'])){
	
	echo "<h2>Error no url vars</h2>";
	echo "<p>You have to specify a module name</p>";
	 
	
	echo "<p>You have to specify a template file <b>tpl</b></p>";
	echo "<p><b>The url vars required are</b></p>";
	?>
	<ul>
		<li><b>module_name</b> like this >> Dummies</li>
		<li><b>tpl</b> existing in models folder. <br>like <i>cockpitModule</i> without extensions (.tpl.json)</li>
	</ul>
	
	<h3>Do you want to continue with this</h3>
	<a href="./index.php?module_name=Dummies&tpl=cockpitModule">YES</a>
	<?php
	exit();
}

$moduleName = $_GET['module_name'];
$tpl = $_GET['tpl'];

include "Modulerr.php";
include "../pathto/cockpit/bootstrap.php";
$app = cockpit();
 
$tplString = $app->view(__DIR__ . "/source/models/".$tpl.".tpl.json", compact("moduleName") );

$tplObject = json_decode($tplString , true);
// kint debug d( $tplObject );
$tplObject["config"] = [ "output" => "generated" ];
// kint debug d( $tplObject );
echo "<pre>";
print_r($tplObject );
echo "</pre>";
$module = new Modulerr\Modulerr($tplObject,$app); 

?>
<h1>Module Generated <?php echo $module->name ?></h1>

<?php

echo file_get_contents($module->moduleIcon);	
// kint debug d($module); 
