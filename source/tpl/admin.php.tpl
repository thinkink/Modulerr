{{ "<?php" }}

// module name : {{ $data->name }}

$app->on('admin.init', function() {
 
 


    // bind admin routes /{{ $data->names["lowercase"] }}/*
     $this->bindClass('{{ $data->name }}\\Controller\\Import', '{{ $data->names["lowercase"] }}/import');
     $this->bindClass('{{ $data->name }}\\Controller\\Admin',  '{{ $data->names["lowercase"] }}');
	 
	 // add to modules menu
    $this('admin')->addMenuItem('modules', [
        'label' => '{{ $data->name }}',
        'icon'  => '{{ $data->names["lowercase"] }}:icon.svg',
        'route' => '/{{ $data->names["lowercase"] }}',
        'active' => strpos($this['route'], '/{{ $data->names["lowercase"] }}') === 0
    ]);


});