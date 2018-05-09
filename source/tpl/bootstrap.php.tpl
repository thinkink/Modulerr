{{ "<?php" }}

$this->module("{{ $data->names['lowercase']  }}")->extend([

	]);

// ACL
// $app("acl")->addResource('{{ $data->names['lowercase']  }}', ['create', 'form', 'edit', 'data', 'delete']);



// REST
if (COCKPIT_API_REQUEST) {
    $app->on('cockpit.rest.init', function($routes) {
        $routes['{{ $data->names['lowercase']  }}'] = '{{ $data->name }}\\Controller\\RestApi';
    });
 }
 
// allow access to public {{ $data->names['lowercase']  }}


// ADMIN
if (COCKPIT_ADMIN && !COCKPIT_API_REQUEST) {
    include_once(__DIR__.'/admin.php');
}

// CLI
//if (COCKPIT_CLI) {
//    $this->path('#cli', __DIR__.'/cli');
//}