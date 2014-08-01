<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Articles Controller
 *
 * @property App\Model\Table\ArticlesTable $Articles
 */
class ArticlesController extends AppController {

/**
 * Index method
 *
 * @return void
 */
	public function index() {
		$this->set('articles', $this->paginate($this->Articles));
	}

/**
 * View method
 *
 * @param string $id
 * @return void
 * @throws NotFoundException
 */
	public function view($id = null) {
		$article = $this->Articles->get($id, [
			'contain' => []
		]);
		$this->set('article', $article);
	}

/**
 * Add method
 *
 * @return void
 */
	public function add() {
		$article = $this->Articles->newEntity($this->request->data);
		if ($this->request->is('post')) {
			if ($this->Articles->save($article)) {
				$this->Flash->success('The article has been saved.');
				return $this->redirect(['action' => 'index']);
			} else {
				$this->Flash->error('The article could not be saved. Please, try again.');
			}
		}
		$this->set(compact('article'));
	}

/**
 * Edit method
 *
 * @param string $id
 * @return void
 * @throws NotFoundException
 */
	public function edit($id = null) {
		$article = $this->Articles->get($id, [
			'contain' => []
		]);
		if ($this->request->is(['post', 'put'])) {
			$article = $this->Articles->patchEntity($article, $this->request->data);
			if ($this->Articles->save($article)) {
				$this->Flash->success('The article has been saved.');
				return $this->redirect(['action' => 'index']);
			} else {
				$this->Flash->error('The article could not be saved. Please, try again.');
			}
		}
		$this->set(compact('article'));
	}

/**
 * Delete method
 *
 * @param string $id
 * @return void
 * @throws NotFoundException
 */
	public function delete($id = null) {
		$article = $this->Articles->get($id);
		$this->request->allowMethod('post', 'delete');
		if ($this->Articles->delete($article)) {
			$this->Flash->success('The article has been deleted.');
		} else {
			$this->Flash->error('The article could not be deleted. Please, try again.');
		}
		return $this->redirect(['action' => 'index']);
	}
}
