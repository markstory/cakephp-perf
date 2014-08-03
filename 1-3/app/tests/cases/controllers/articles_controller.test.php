<?php
/* Articles Test cases generated on: 2014-08-02 20:32:09 : 1407025929*/
App::import('Controller', 'Articles');

class TestArticlesController extends ArticlesController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class ArticlesControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.article');

	function startTest() {
		$this->Articles =& new TestArticlesController();
		$this->Articles->constructClasses();
	}

	function endTest() {
		unset($this->Articles);
		ClassRegistry::flush();
	}

}
