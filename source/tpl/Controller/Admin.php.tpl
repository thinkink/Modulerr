{{ "<?php" }}

namespace {{ $data->name  }}\Controller;

class Admin extends \Cockpit\AuthController {
   
   public function index() {
   
		${{ $data->names['lowercase']  }} = [
				"name" => "{{ $data->name  }}",
				"info" => "this module has been generated with Modulerr",
				"lisence" => "MIT"
		 		];
		return $this->render('{{ $data->names['lowercase']  }}:views/index.php', compact('{{ $data->names['lowercase']  }}'));
	
	}
}
