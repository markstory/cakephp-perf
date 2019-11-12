<div class="articles view">
	<h2><?= __('Article'); ?></h2>
	<dl>
		<dt><?= __('Id'); ?></dt>
		<dd>
			<?= h($article->id); ?>
			&nbsp;
		</dd>
		<dt><?= __('Title'); ?></dt>
		<dd>
			<?= h($article->title); ?>
			&nbsp;
		</dd>
		<dt><?= __('Body'); ?></dt>
		<dd>
			<?= h($article->body); ?>
			&nbsp;
		</dd>
		<dt><?= __('Modified'); ?></dt>
		<dd>
			<?= h($article->modified); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?= __('Actions'); ?></h3>
	<ul>
		<li><?= $this->Html->link(__('Edit Article'), ['action' => 'edit', $article->id]); ?> </li>
		<li><?= $this->Form->postLink(__('Delete Article'), ['action' => 'delete', $article->id], ['confirm' => __('Are you sure you want to delete # %s?', $article->id)]); ?> </li>
		<li><?= $this->Html->link(__('List Articles'), ['action' => 'index']); ?> </li>
		<li><?= $this->Html->link(__('New Article'), ['action' => 'add']); ?> </li>
	</ul>
</div>
