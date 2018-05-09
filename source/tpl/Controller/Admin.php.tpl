{{ "<?php" }}

namespace {{ $data->name  }}\Controller;

class Admin extends \Cockpit\AuthController {
   
   public function index() {
   
		${{ $data->names['lowercase']  }} = [];
		return $this->render('{{ $data->names['lowercase']  }}:views/index.php', compact('{{ $data->names['lowercase']  }}'));
	
	}
}
