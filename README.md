# Modulerr
A cockpit CMS addon module generator

## 

place this folder in your host:

  . localhost/Moduler-master
  . localhost/Cockpit-next
  
## Include your Cockpit CMS

Edit this line in index php
  
  include "../pathto/cockpit/bootstrap.php";
    
  to point your cockpit, is needed only for rendering, the output is in the Modulerr/generated folder
  
  include __DIR__ . "/../Cockpit-next/bootstrap.php";

