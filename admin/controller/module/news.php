<?php
class ControllerModulenews extends Controller {
	private $error = array(); 
	
	public function index() {  
	//-----------------------------------------------
	    $this->load->model('catalog/news');
		$this->model_catalog_news->checkNews(); 
    //-------------------------------------------
		$this->load->language('module/news');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->model_setting_setting->editSetting('news', $this->request->post);		
					
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
				
		$this->data['heading_title'] = $this->language->get('heading_title');
        $this->data['entry_limit'] = $this->language->get('entry_limit');
		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');
		
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/news', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
        $this->data['action'] = $this->url->link('module/news', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
         
		if (isset($this->request->post['news_limit'])) {
		    $this->data['news_limit'] = $this->request->post['news_limit'];
		} else {
			$this->data['news_limit'] = $this->config->get('news_limit');
		}
		
		if (isset($this->request->post['news_module'])) {
			$modules = explode(',', $this->request->post['news_module']);
		} elseif ($this->config->get('news_module') != '') {
			$modules = explode(',', $this->config->get('news_module'));
		} else {
			$modules = array();
		}		
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();
				
		foreach ($modules as $module) {
			if (isset($this->request->post['news_' . $module . '_layout_id'])) {
				$this->data['news_' . $module . '_layout_id'] = $this->request->post['news_' . $module . '_layout_id'];
			} else {
				$this->data['news_' . $module . '_layout_id'] = $this->config->get('news_' . $module . '_layout_id');
			}	
			
			if (isset($this->request->post['news_' . $module . '_position'])) {
				$this->data['news_' . $module . '_position'] = $this->request->post['news_' . $module . '_position'];
			} else {
				$this->data['news_' . $module . '_position'] = $this->config->get('news_' . $module . '_position');
			}	
			
			if (isset($this->request->post['news_' . $module . '_status'])) {
				$this->data['news_' . $module . '_status'] = $this->request->post['news_' . $module . '_status'];
			} else {
				$this->data['news_' . $module . '_status'] = $this->config->get('news_' . $module . '_status');
			}	
						
			if (isset($this->request->post['news_' . $module . '_sort_order'])) {
				$this->data['news_' . $module . '_sort_order'] = $this->request->post['news_' . $module . '_sort_order'];
			} else {
				$this->data['news_' . $module . '_sort_order'] = $this->config->get('news_' . $module . '_sort_order');
			}				
		}
		
		$this->data['modules'] = $modules;
		
		if (isset($this->request->post['news_module'])) {
			$this->data['news_module'] = $this->request->post['news_module'];
		} else {
			$this->data['news_module'] = $this->config->get('news_module');
		}
		
		$this->template = 'module/news.tpl';
		$this->children = array(
			'common/header',	
			'common/footer'	
		);
		
		$this->response->setOutput($this->render());
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/information')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>