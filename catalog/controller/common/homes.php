<?php  
class ControllerCommonHomes extends Controller {
	public function index() {
        $this->load -> model("tool/q");
        $language_id= $this->config->get("config_language_id");
        ///echo $language_id;
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/homes.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/homes.tpl';
		} else {
			$this->template = 'default/template/common/homes.tpl';
		}


		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
										
		$this->response->setOutput($this->render());
	}
}
?>