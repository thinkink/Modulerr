<div>
    <ul class="uk-breadcrumb">
        <li class="uk-active"><span>{{'@'}}lang('{{ $data->name  }}')</span></li>
    </ul>
</div>
		<h2>{{ $data->name }}</h2>	
		 
<div riot-view>

    <div if="{ ready }">
			<h2>{ {{ $data->names['lowercase']  }}.info	}</h2>
			<h3>no se { App.Utils.count({{ $data->names['lowercase']  }}) }</h3>

        <div class="uk-margin uk-clearfix" if="{ App.Utils.count({{ $data->names['lowercase']  }}) }">

            <div class="uk-form-icon uk-form uk-text-muted">

                <i class="uk-icon-filter"></i>
                <input class="uk-form-large uk-form-blank" type="text" ref="txtfilter" placeholder="{{'@'}}lang('Filter {{ $data->names['lowercase'] }}...')" onkeyup="{ updatefilter }">

            </div>

            {{'@'}}hasaccess?('{{ $data->names['lowercase']  }}', 'create')
            <div class="uk-float-right">
                <a class="uk-button uk-button-large uk-button-primary uk-width-1-1" href="{{'@'}}route('/{{ $data->names['lowercase']  }}/{{ $data->names['lowercase'] }}')"><i class="uk-icon-plus-circle uk-icon-justify"></i>  {{'@'}}lang('Singleton')</a>
            </div>
            {{'@'}}endif

        </div>

        <div class="uk-width-medium-1-1 uk-viewport-height-1-3 uk-container-center uk-text-center uk-flex uk-flex-middle uk-flex-center" if="{ !App.Utils.count({{ $data->names['lowercase']  }}) }">

            <div class="uk-animation-scale">

                <p>
                    <img class="uk-svg-adjust uk-text-muted" src="{{'@'}}url('{{ $data->names['lowercase']  }}:icon.svg')" width="80" height="80" alt="Singleton" data-uk-svg />
                </p>
                <hr>
                <span class="uk-text-large"><strong>{{'@'}}lang('No {{ $data->names['lowercase']  }}').</strong>

                {{'@'}}hasaccess?('{{ $data->names['lowercase']  }}', 'create')
                <a href="{{'@'}}route('/{{ $data->names['lowercase']  }}/singleton')">{{'@'}}lang('Create one')</a></span>
                {{'@'}}end

            </div>

        </div>

 

    </div>


    <script type="view/script">
        var $this = this;
        this.ready  = true;
        this.{{ $data->names['lowercase']  }} = {{ '{{json_encode($'.  $data->names['lowercase'] . ')'}} }}  ;
        
    </script>

</div>
