<?php

/**
 * Creates directories based on the array given
 * @see https://gist.github.com/timw4mail/4172083
 * @param array $structure
 * @param string $path
 * @return void
 * Lime.
 * thanks to @timw4mail
 * Copyright (c) 2018 Thinkink.es
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is furnished
 * to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
 
namespace Modulerr ;

class Modulerr {

public $folderTemplate = "/source/tpl";
public $tree = null;

function random_icon($dir = __DIR__.'/source/icons'){
    $files = glob($dir . '/*.svg');
    $file = array_rand($files);
	$this->moduleIcon =  $files[$file];
    return $files[$file];
}

function __construct($config , $app = null){
	
	d($config);
	$this->output = $config['config']['output'];
	unset($config["config"]);
	d($this);
	//d($config);
	$this->tree = $config;
	$this->app = $app;
	$this->name = array_keys($config)[0];
	$this->names = [
			"original" => $this->name,
			"lowercase" => strtolower($this->name), 
			"lowersingular" => "lowersingular",//strtolower($this->name), 
			"singular" => 'implement Inflector' 
		];
	$this->make_dir_tree($this->tree,__DIR__."/".$this->output);
	

}
function make_dir_tree($structure, $path=__DIR__){
	if ( ! is_dir($path)) mkdir($path);
	foreach ($structure as $folder => $sub_folder)
	{
	 
	//	if($folder == "files"){
	 
				 
			// Folder with subfolders
			if (is_array($sub_folder))
			{
				
				
				$new_path = "{$path}/{$folder}";
				if ( ! is_dir($new_path)) mkdir($new_path);
				if(isset($sub_folder["files"])){
				//d($sub_folder);
							 echo "<p>folder with files detected  - folder: " . $folder ."</p>";
							  
							 
							
							 foreach($sub_folder["files"] as $k=>$file){
							 
							   
							 echo "<p> K: [" . $k. "] " .$new_path." files detected " .$file['name'] . "</p>";
							 $base =     __DIR__ . "/" . $this->folderTemplate ."/"  . $file['name'] . ".tpl" ; 
							 $subBase =  __DIR__ . "/" . $this->folderTemplate ."/".$folder."/" . $file['name'] . ".tpl";  
							

							if(file_exists( $subBase )) $fileToGenerate = $subBase;
							elseif(file_exists( $base )) $fileToGenerate = $base;
						 	else $fileToGenerate = null;
						
						//$fileToGenerate = file_exists( $subBase )?$subBase:file_exists( $base )?$base:null;
							 
							 if(isset($fileToGenerate)){
								 
								$data = $this;
								//$contents = $this->app->view(__DIR__ . "/" . $this->folderTemplate ."/".$folder."/"  . $file['name'] . ".tpl", compact("data") );
								$contents = $this->app->view($fileToGenerate, compact("data"));
							 }
							 elseif($file['name'] == "random_icon" ){
								 $fileToCopy = $this->{$file['name']}();
								 $newfile = $new_path . "/" . "icon". ".svg";
								 copy($fileToCopy, $newfile);
									//d( method_exists($this,$file['name']) );
									//dd( $fileContents);
							 }
							 else{
							$contents = "// contensts here ";	 
							$contents .= "// NO exists:: " . $this->folderTemplate. "/".$folder."/". $file['name'] . ".tpl";	 
							 }
							  file_put_contents( $new_path . "/" . end(explode("/",$file['name'])) ,$contents);
							  }
						unset ($sub_folder["files"]) ;
					}
					 
					call_user_func_array([$this,__FUNCTION__],[ $sub_folder, $new_path]);
			}
			else
			{
				
				 
				$new_path = "{$path}/{$sub_folder}";
				if ( ! is_dir($new_path)) mkdir($new_path);
				 
			}
			
			
			
			
		
		 
	}
}

}










