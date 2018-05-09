# Modulerr
## A cockpit CMS addon module generator

### Routes

place this folder in your host:

![clean install Cockpit](https://raw.githubusercontent.com/thinkink/Modulerr/master/docs/Modulerr1.gif)

  . localhost/demo/Moduler-master
  . localhost/demo/Cockpit-next
  
### Include your Cockpit CMS

Edit this line in index php
 
 ![edit path and generate](https://raw.githubusercontent.com/thinkink/Modulerr/master/docs/Modulerr2.gif)

  include "../pathto/cockpit/bootstrap.php";
    
  to point your cockpit, is needed only for rendering, the output is in the Modulerr/generated folder
  
  include __DIR__ . "/../Cockpit-next/bootstrap.php";

